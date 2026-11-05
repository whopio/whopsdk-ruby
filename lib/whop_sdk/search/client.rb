# frozen_string_literal: true

module Whop_sdk
  module Search
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

      # Searches one account's records in one call. `account` rows are `account_id` itself and, when you send
      # `include_subaccounts`, its subaccounts; every other row belongs to one of those accounts.
      #
      # Each `object` needs its own read permission on the record's account, and rows you can't read are left out
      # without an error: `account` (`biz_`, `company:basic:read`), `member` (`mber_`, `member:basic:read`),
      # `membership` (`mem_`, `member:basic:read`), `payment` (`pay_`, `payment:basic:read`), `affiliate` (`aff_`,
      # `affiliate:basic:read`), `review` (`rev_`, `company:basic:read`), `resolution_center_case` (`reso_`,
      # `payment:resolution_center_case:read`) and `promo_code` (`promo_`, `promo_code:basic:read`). A query containing
      # `@` also needs `member:email:read`, and a phone match `member:phone:read`. An invoice's number finds the invoice
      # as its `payment`.
      #
      # `query` is trimmed and has to be 2 to 250 characters; a full card number returns a `400`. `data` comes
      # identifier matches first, such as a pasted ID, email address, card digits or invoice number, newest first within
      # each kind of match. Every query of 3 or more characters is also ranked, and ranked rows follow, best match
      # first. Each record appears once, and `match_reason` says why it matched. [Search](/api-reference/search/search)
      # lists the query shapes and match reasons.
      #
      # `first` caps the rows, 20 by default and up to 100. There is no cursor yet, so the response is a single page.
      # Search ranks; to filter one resource or page through every match, use its list endpoint, such as `GET
      # /payments?query=`.
      #
      # @param request_options [Hash]
      # @param params [Hash]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [String] :query
      # @option params [Whop_sdk::Search::Types::ListSearchRequestTypesItem, nil] :types
      # @option params [String] :account_id
      # @option params [Boolean, nil] :include_subaccounts
      # @option params [Integer, nil] :first
      #
      # @example
      #   client.search.list(
      #     query: "query",
      #     account_id: "account_id"
      #   )
      #
      # @return [Whop_sdk::Search::Types::ListSearchResponse]
      def list(request_options: {}, **params)
        params = Whop_sdk::Internal::Types::Utils.normalize_keys(params)
        query_params = {}
        query_params["query"] = params[:query] if params.key?(:query)
        query_params["types"] = params[:types] if params.key?(:types)
        query_params["account_id"] = params[:account_id] if params.key?(:account_id)
        query_params["include_subaccounts"] = params[:include_subaccounts] if params.key?(:include_subaccounts)
        query_params["first"] = params[:first] if params.key?(:first)

        request = Whop_sdk::Internal::JSON::Request.new(
          base_url: request_options[:base_url] || @base_url || @environment&.dig(:api),
          method: "GET",
          path: "search",
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
          (response.body.to_s.empty? ? nil : Whop_sdk::Search::Types::ListSearchResponse.load(response.body))
        else
          error_class = Whop_sdk::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end
    end
  end
end
