# frozen_string_literal: true

module Whop_sdk
  module Trades
    module Markets
      class Client
        # @param client [Whop_sdk::Internal::Http::RawClient]
        # @param base_url [String, nil]
        # @param environment [Hash[Symbol, String], nil]
        #
        # @return [void]
        def initialize(client:, base_url: nil, environment: nil)
          @client = client
          @base_url = base_url
          @environment = environment
        end

        # Lists the markets you can trade, sorted by `id` and then `instrument_type`: Hyperliquid's main-exchange
        # perpetuals that still trade, and spot markets for the assets Whop wallets hold, named by symbol: `BTC`, `ETH`,
        # `SOL`, and `XAUT` (gold). A perpetual and a spot market can share an `id`, so `id` and `instrument_type`
        # together identify a market, and there is no endpoint to retrieve one. Send a perpetual's `id` as `market` when
        # you create a trade. No authentication is required. Each IP address can make 60 requests a minute.
        #
        # @param request_options [Hash]
        # @param params [Hash]
        # @option request_options [String] :base_url
        # @option request_options [Hash{String => Object}] :additional_headers
        # @option request_options [Hash{String => Object}] :additional_query_parameters
        # @option request_options [Hash{String => Object}] :additional_body_parameters
        # @option request_options [Integer] :timeout_in_seconds
        # @option params [Whop_sdk::Trades::Markets::Types::ListMarketsRequestInstrumentType, nil] :instrument_type
        # @option params [Integer, nil] :first
        # @option params [String, nil] :after
        # @option params [Integer, nil] :last
        # @option params [String, nil] :before
        #
        # @example
        #   client.trades.markets.list
        #
        # @return [Whop_sdk::Trades::Markets::Types::ListMarketsResponse]
        def list(request_options: {}, **params)
          params = Whop_sdk::Internal::Types::Utils.normalize_keys(params)
          query_params = {}
          query_params["instrument_type"] = params[:instrument_type] if params.key?(:instrument_type)
          query_params["first"] = params[:first] if params.key?(:first)
          query_params["after"] = params[:after] if params.key?(:after)
          query_params["last"] = params[:last] if params.key?(:last)
          query_params["before"] = params[:before] if params.key?(:before)

          Whop_sdk::Internal::CursorItemIterator.new(
            cursor_field: :end_cursor,
            item_field: :data,
            initial_cursor: query_params["after"]
          ) do |next_cursor|
            query_params["after"] = next_cursor
            request = Whop_sdk::Internal::JSON::Request.new(
              base_url: request_options[:base_url] || @base_url || @environment&.dig(:api),
              method: "GET",
              path: "trades/markets",
              query: query_params,
              request_options: request_options
            )
            begin
              response = @client.send(request)
            rescue Net::HTTPRequestTimeout
              raise Whop_sdk::Errors::TimeoutError
            end
            code = response.code.to_i
            if code.between?(200, 299)
              parsed_response = (response.body.to_s.empty? ? nil : Whop_sdk::Trades::Markets::Types::ListMarketsResponse.load(response.body))
              [parsed_response, response]
            else
              error_class = Whop_sdk::Errors::ResponseError.subclass_for_code(code)
              raise error_class.new(response.body, code: code)
            end
          end
        end
      end
    end
  end
end
