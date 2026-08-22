# frozen_string_literal: true

module Whop_sdk
  module Refunds
    class Client
      # @param client [Whop_sdk::Internal::Http::RawClient]
      #
      # @return [void]
      def initialize(client:)
        @client = client
      end

      # Returns a paginated list of refunds, with optional filtering by payment, company, user, and creation date.
      #
      # Required permissions:
      #  - `payment:basic:read`
      #
      # @param request_options [Hash]
      # @param params [Hash]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [String, nil] :after
      # @option params [String, nil] :before
      # @option params [Integer, nil] :first
      # @option params [Integer, nil] :last
      # @option params [String, nil] :payment_id
      # @option params [String, nil] :company_id
      # @option params [String, nil] :user_id
      # @option params [Whop_sdk::Types::Direction, nil] :direction
      # @option params [String, nil] :created_before
      # @option params [String, nil] :created_after
      #
      # @example
      #   client.refunds.list(
      #     first: 42,
      #     last: 42,
      #     payment_id: "pay_xxxxxxxxxxxxxx",
      #     company_id: "biz_xxxxxxxxxxxxxx",
      #     user_id: "user_xxxxxxxxxxxxx",
      #     created_before: "2023-12-01T05:00:00Z",
      #     created_after: "2023-12-01T05:00:00Z"
      #   )
      #
      # @return [Whop_sdk::Refunds::Types::ListRefundsResponse]
      def list(request_options: {}, **params)
        params = Whop_sdk::Internal::Types::Utils.normalize_keys(params)
        query_params = {}
        query_params["after"] = params[:after] if params.key?(:after)
        query_params["before"] = params[:before] if params.key?(:before)
        query_params["first"] = params[:first] if params.key?(:first)
        query_params["last"] = params[:last] if params.key?(:last)
        query_params["payment_id"] = params[:payment_id] if params.key?(:payment_id)
        query_params["company_id"] = params[:company_id] if params.key?(:company_id)
        query_params["user_id"] = params[:user_id] if params.key?(:user_id)
        query_params["direction"] = params[:direction] if params.key?(:direction)
        query_params["created_before"] = params[:created_before] if params.key?(:created_before)
        query_params["created_after"] = params[:created_after] if params.key?(:created_after)

        Whop_sdk::Internal::CursorItemIterator.new(
          cursor_field: :end_cursor,
          item_field: :data,
          initial_cursor: query_params["after"]
        ) do |next_cursor|
          query_params["after"] = next_cursor
          request = Whop_sdk::Internal::JSON::Request.new(
            base_url: request_options[:base_url],
            method: "GET",
            path: "refunds",
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
            parsed_response = Whop_sdk::Refunds::Types::ListRefundsResponse.load(response.body)
            [parsed_response, response]
          else
            error_class = Whop_sdk::Errors::ResponseError.subclass_for_code(code)
            raise error_class.new(response.body, code: code)
          end
        end
      end

      # Retrieves the details of an existing refund.
      #
      # Required permissions:
      #  - `payment:basic:read`
      #  - `plan:basic:read`
      #  - `access_pass:basic:read`
      #  - `member:email:read`
      #  - `member:basic:read`
      #  - `member:phone:read`
      #
      # @param request_options [Hash]
      # @param params [Hash]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [String] :id
      #
      # @example
      #   client.refunds.retrieve(id: "rf_xxxxxxxxxxxxxxx")
      #
      # @return [Whop_sdk::Types::Refund]
      def retrieve(request_options: {}, **params)
        params = Whop_sdk::Internal::Types::Utils.normalize_keys(params)
        request = Whop_sdk::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "GET",
          path: "refunds/#{URI.encode_uri_component(params[:id].to_s)}",
          request_options: request_options
        )
        begin
          response = @client.send(request)
        rescue Net::HTTPRequestTimeout
          raise Whop_sdk::Errors::TimeoutError
        end
        code = response.code.to_i
        if code.between?(200, 299)
          Whop_sdk::Types::Refund.load(response.body)
        else
          error_class = Whop_sdk::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end
    end
  end
end
