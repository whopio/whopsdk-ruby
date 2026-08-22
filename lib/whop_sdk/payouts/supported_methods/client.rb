# frozen_string_literal: true

module Whop_sdk
  module Payouts
    module SupportedMethods
      class Client
        # @param client [Whop_sdk::Internal::Http::RawClient]
        #
        # @return [void]
        def initialize(client:)
          @client = client
        end

        # Lists the payout methods an account or user is eligible to add.
        #
        # @param request_options [Hash]
        # @param params [Hash]
        # @option request_options [String] :base_url
        # @option request_options [Hash{String => Object}] :additional_headers
        # @option request_options [Hash{String => Object}] :additional_query_parameters
        # @option request_options [Hash{String => Object}] :additional_body_parameters
        # @option request_options [Integer] :timeout_in_seconds
        # @option params [String, nil] :account_id
        # @option params [String, nil] :user_id
        # @option params [String, nil] :country
        # @option params [Integer, nil] :amount
        # @option params [String, nil] :currency
        # @option params [String, nil] :supported_payout_method_id
        # @option params [String, nil] :destination_currency
        # @option params [Integer, nil] :first
        # @option params [String, nil] :after
        # @option params [Integer, nil] :last
        # @option params [String, nil] :before
        #
        # @example
        #   client.payouts.supported_methods.list
        #
        # @return [Whop_sdk::Payouts::SupportedMethods::Types::ListSupportedMethodsResponse]
        def list(request_options: {}, **params)
          params = Whop_sdk::Internal::Types::Utils.normalize_keys(params)
          query_params = {}
          query_params["account_id"] = params[:account_id] if params.key?(:account_id)
          query_params["user_id"] = params[:user_id] if params.key?(:user_id)
          query_params["country"] = params[:country] if params.key?(:country)
          query_params["amount"] = params[:amount] if params.key?(:amount)
          query_params["currency"] = params[:currency] if params.key?(:currency)
          query_params["supported_payout_method_id"] = params[:supported_payout_method_id] if params.key?(:supported_payout_method_id)
          query_params["destination_currency"] = params[:destination_currency] if params.key?(:destination_currency)
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
              base_url: request_options[:base_url],
              method: "GET",
              path: "payouts/supported_methods",
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
              parsed_response = Whop_sdk::Payouts::SupportedMethods::Types::ListSupportedMethodsResponse.load(response.body)
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
