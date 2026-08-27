# frozen_string_literal: true

module Whop_sdk
  module Payouts
    class Client
      # @param client [Whop_sdk::Internal::Http::RawClient]
      #
      # @return [void]
      def initialize(client:)
        @client = client
      end

      # Lists an account's or user's payouts, newest first.
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
      # @option params [String, nil] :currency
      # @option params [Whop_sdk::Payouts::Types::ListPayoutsRequestStatus, nil] :status
      # @option params [Whop_sdk::Payouts::Types::ListPayoutsRequestSource, nil] :source
      # @option params [String, nil] :payout_method_id
      # @option params [String, nil] :created_before
      # @option params [String, nil] :created_after
      # @option params [Integer, nil] :first
      # @option params [String, nil] :after
      # @option params [Integer, nil] :last
      # @option params [String, nil] :before
      #
      # @example
      #   client.payouts.list
      #
      # @return [Whop_sdk::Payouts::Types::ListPayoutsResponse]
      def list(request_options: {}, **params)
        params = Whop_sdk::Internal::Types::Utils.normalize_keys(params)
        query_params = {}
        query_params["account_id"] = params[:account_id] if params.key?(:account_id)
        query_params["user_id"] = params[:user_id] if params.key?(:user_id)
        query_params["currency"] = params[:currency] if params.key?(:currency)
        query_params["status"] = params[:status] if params.key?(:status)
        query_params["source"] = params[:source] if params.key?(:source)
        query_params["payout_method_id"] = params[:payout_method_id] if params.key?(:payout_method_id)
        query_params["created_before"] = params[:created_before] if params.key?(:created_before)
        query_params["created_after"] = params[:created_after] if params.key?(:created_after)
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
            path: "payouts",
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
            parsed_response = Whop_sdk::Payouts::Types::ListPayoutsResponse.load(response.body)
            [parsed_response, response]
          else
            error_class = Whop_sdk::Errors::ResponseError.subclass_for_code(code)
            raise error_class.new(response.body, code: code)
          end
        end
      end

      # Sends money from an account or user balance to a saved payout method for that owner.
      #
      # @param request_options [Hash]
      # @param params [Whop_sdk::Payouts::Types::CreatePayoutsRequestBody]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      #
      # @example
      #   client.payouts.create(request: {
      #     key: "value"
      #   })
      #
      # @return [Whop_sdk::Payouts::Types::CreatePayoutsResponse]
      def create(request_options: {}, **params)
        params = Whop_sdk::Internal::Types::Utils.normalize_keys(params)
        request = Whop_sdk::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "POST",
          path: "payouts",
          body: Whop_sdk::Payouts::Types::CreatePayoutsRequestBody.new(params).to_h,
          request_options: request_options
        )
        begin
          response = @client.send(request)
        rescue Net::HTTPRequestTimeout
          raise Whop_sdk::Errors::TimeoutError
        end
        code = response.code.to_i
        if code.between?(200, 299)
          Whop_sdk::Payouts::Types::CreatePayoutsResponse.load(response.body)
        else
          error_class = Whop_sdk::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # Creates a short-lived, provider-backed quote for a payout. No funds move until the returned quote_token is
      # submitted to POST /payouts. An Idempotency-Key header is required.
      #
      # @param request_options [Hash]
      # @param params [Whop_sdk::Payouts::Types::CreateQuotePayoutsRequest]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      #
      # @example
      #   client.payouts.create_quote(
      #     amount: 6762.41,
      #     payout_method_id: "potk_xxxxxxxxxxxxxx"
      #   )
      #
      # @return [Whop_sdk::Payouts::Types::CreateQuotePayoutsResponse]
      def create_quote(request_options: {}, **params)
        params = Whop_sdk::Internal::Types::Utils.normalize_keys(params)
        request = Whop_sdk::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "POST",
          path: "payouts/quotes",
          body: Whop_sdk::Payouts::Types::CreateQuotePayoutsRequest.new(params).to_h,
          request_options: request_options
        )
        begin
          response = @client.send(request)
        rescue Net::HTTPRequestTimeout
          raise Whop_sdk::Errors::TimeoutError
        end
        code = response.code.to_i
        if code.between?(200, 299)
          Whop_sdk::Payouts::Types::CreateQuotePayoutsResponse.load(response.body)
        else
          error_class = Whop_sdk::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # Fetches one payout by its `wdrl_` ID, or by the `cofr_` conversion request ID a stablecoin payout carries as
      # `payout_request_id` — both ids answer with the same payout object.
      #
      # @param request_options [Hash]
      # @param params [Hash]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [String] :id
      # @option params [String, nil] :account_id
      # @option params [String, nil] :user_id
      #
      # @example
      #   client.payouts.retrieve(id: "id")
      #
      # @return [Whop_sdk::Payouts::Types::RetrievePayoutsResponse]
      def retrieve(request_options: {}, **params)
        params = Whop_sdk::Internal::Types::Utils.normalize_keys(params)
        query_params = {}
        query_params["account_id"] = params[:account_id] if params.key?(:account_id)
        query_params["user_id"] = params[:user_id] if params.key?(:user_id)

        request = Whop_sdk::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "GET",
          path: "payouts/#{URI.encode_uri_component(params[:id].to_s)}",
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
          Whop_sdk::Payouts::Types::RetrievePayoutsResponse.load(response.body)
        else
          error_class = Whop_sdk::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # Cancels a payout that is still in review and returns the funds, fees included, to the balance. A payout can be
      # canceled while its status is `in_review`. A `requested` payout is still being prepared (its funds may be
      # converting) and answers 409 until it reaches review; from `processing` on, the money is on its way and the
      # answer is 409 with error type `not_cancelable`. Canceling a payout that is already canceled succeeds and returns
      # it unchanged.
      #
      # @param request_options [Hash]
      # @param params [Hash]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [String] :id
      # @option params [String, nil] :account_id
      # @option params [String, nil] :user_id
      #
      # @example
      #   client.payouts.cancel(id: "id")
      #
      # @return [Whop_sdk::Payouts::Types::CancelPayoutsResponse]
      def cancel(request_options: {}, **params)
        params = Whop_sdk::Internal::Types::Utils.normalize_keys(params)
        query_params = {}
        query_params["account_id"] = params[:account_id] if params.key?(:account_id)
        query_params["user_id"] = params[:user_id] if params.key?(:user_id)

        request = Whop_sdk::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "POST",
          path: "payouts/#{URI.encode_uri_component(params[:id].to_s)}/cancel",
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
          Whop_sdk::Payouts::Types::CancelPayoutsResponse.load(response.body)
        else
          error_class = Whop_sdk::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # @return [Whop_sdk::Methods::Client]
      def methods
        @methods ||= Whop_sdk::Payouts::Methods::Client.new(client: @client)
      end

      # @return [Whop_sdk::SupportedMethods::Client]
      def supported_methods
        @supported_methods ||= Whop_sdk::Payouts::SupportedMethods::Client.new(client: @client)
      end
    end
  end
end
