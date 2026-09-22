# frozen_string_literal: true

module Whop_sdk
  module SetupIntents
    class Client
      # @param client [Whop_sdk::Internal::Http::RawClient]
      #
      # @return [void]
      def initialize(client:)
        @client = client
      end

      # Lists setup intents newest first. An account API key lists its own account; a user token lists every account it
      # can read, or one account with `account_id`. `client_secret` is always null on list rows — retrieve the setup
      # intent for it.
      #
      # @param request_options [Hash]
      # @param params [Hash]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [String, nil] :account_id
      # @option params [Whop_sdk::SetupIntents::Types::ListSetupIntentsRequestStatus, nil] :status
      # @option params [String, nil] :created_before
      # @option params [String, nil] :created_after
      # @option params [Whop_sdk::SetupIntents::Types::ListSetupIntentsRequestOrder, nil] :order
      # @option params [Whop_sdk::SetupIntents::Types::ListSetupIntentsRequestDirection, nil] :direction
      # @option params [Integer, nil] :first
      # @option params [String, nil] :after
      # @option params [Integer, nil] :last
      # @option params [String, nil] :before
      #
      # @example
      #   client.setup_intents.list
      #
      # @return [Whop_sdk::SetupIntents::Types::ListSetupIntentsResponse]
      def list(request_options: {}, **params)
        params = Whop_sdk::Internal::Types::Utils.normalize_keys(params)
        query_params = {}
        query_params["account_id"] = params[:account_id] if params.key?(:account_id)
        query_params["status"] = params[:status] if params.key?(:status)
        query_params["created_before"] = params[:created_before] if params.key?(:created_before)
        query_params["created_after"] = params[:created_after] if params.key?(:created_after)
        query_params["order"] = params[:order] if params.key?(:order)
        query_params["direction"] = params[:direction] if params.key?(:direction)
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
            path: "setup_intents",
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
            parsed_response = Whop_sdk::SetupIntents::Types::ListSetupIntentsResponse.load(response.body)
            [parsed_response, response]
          else
            error_class = Whop_sdk::Errors::ResponseError.subclass_for_code(code)
            raise error_class.new(response.body, code: code)
          end
        end
      end

      # Saves a buyer's payment method for later without charging it. Pass a `confirmation_token` for a method the buyer
      # just supplied through the payment elements in setup mode, or a `payment_method_id` already on file to re-verify
      # it. The response is the setup intent as created, not its outcome: while it is `requires_action` the buyer still
      # has a step, so hand `client_secret` to the elements' `handleNextAction` or poll Retrieve setup status. A buyer's
      # own token holding `member:payment_methods:use` may create a setup intent for itself from a confirmation token.
      #
      # @param request_options [Hash]
      # @param params [Whop_sdk::SetupIntents::Types::CreateSetupIntentsRequest]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      #
      # @example
      #   client.setup_intents.create(account_id: "biz_xxxxxxxxxxxxxx")
      #
      # @return [Whop_sdk::Types::SetupIntent]
      def create(request_options: {}, **params)
        params = Whop_sdk::Internal::Types::Utils.normalize_keys(params)
        request = Whop_sdk::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "POST",
          path: "setup_intents",
          body: Whop_sdk::SetupIntents::Types::CreateSetupIntentsRequest.new(params).to_h,
          request_options: request_options
        )
        begin
          response = @client.send(request)
        rescue Net::HTTPRequestTimeout
          raise Whop_sdk::Errors::TimeoutError
        end
        code = response.code.to_i
        if code.between?(200, 299)
          Whop_sdk::Types::SetupIntent.load(response.body)
        else
          error_class = Whop_sdk::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # Returns one setup intent. Related records are ids — once `status` is `succeeded`, `payment_method_id` is the
      # saved method to charge or retrieve. The buyer's own token may retrieve a setup intent that belongs to it.
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
      #   client.setup_intents.retrieve(id: "id")
      #
      # @return [Whop_sdk::Types::SetupIntent]
      def retrieve(request_options: {}, **params)
        params = Whop_sdk::Internal::Types::Utils.normalize_keys(params)
        request = Whop_sdk::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "GET",
          path: "setup_intents/#{URI.encode_uri_component(params[:id].to_s)}",
          request_options: request_options
        )
        begin
          response = @client.send(request)
        rescue Net::HTTPRequestTimeout
          raise Whop_sdk::Errors::TimeoutError
        end
        code = response.code.to_i
        if code.between?(200, 299)
          Whop_sdk::Types::SetupIntent.load(response.body)
        else
          error_class = Whop_sdk::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # Changes where the buyer lands after completing an off-site step, up until they return. Accepts either a secret
      # key or the setup's own `client_secret`, so the surface that knows the final destination can set it.
      #
      # @param request_options [Hash]
      # @param params [Whop_sdk::SetupIntents::Types::UpdateReturnURLSetupIntentsRequest]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [String] :setup_intent_id
      #
      # @example
      #   client.setup_intents.update_return_url(
      #     setup_intent_id: "setup_intent_id",
      #     return_url: "https://shinetime.example/checkout/thanks"
      #   )
      #
      # @return [Whop_sdk::Types::SetupStatus]
      def update_return_url(request_options: {}, **params)
        params = Whop_sdk::Internal::Types::Utils.normalize_keys(params)
        request_data = Whop_sdk::SetupIntents::Types::UpdateReturnURLSetupIntentsRequest.new(params).to_h
        non_body_param_names = %w[setup_intent_id]
        body = request_data.except(*non_body_param_names)

        request = Whop_sdk::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "PATCH",
          path: "setup_intents/#{URI.encode_uri_component(params[:setup_intent_id].to_s)}/return_url",
          body: body,
          request_options: request_options
        )
        begin
          response = @client.send(request)
        rescue Net::HTTPRequestTimeout
          raise Whop_sdk::Errors::TimeoutError
        end
        code = response.code.to_i
        if code.between?(200, 299)
          Whop_sdk::Types::SetupStatus.load(response.body)
        else
          error_class = Whop_sdk::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # Retrieves how far a setup has got and what the buyer must do next, if anything. Collection runs in the
      # background, so poll this rather than reading the create response. Accepts either a secret key or the setup's own
      # `client_secret`, so the surface collecting the payment method can poll it directly.
      #
      # @param request_options [Hash]
      # @param params [Hash]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [String] :setup_intent_id
      #
      # @example
      #   client.setup_intents.retrieve_status(setup_intent_id: "setup_intent_id")
      #
      # @return [Whop_sdk::Types::SetupStatus]
      def retrieve_status(request_options: {}, **params)
        params = Whop_sdk::Internal::Types::Utils.normalize_keys(params)
        request = Whop_sdk::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "GET",
          path: "setup_intents/#{URI.encode_uri_component(params[:setup_intent_id].to_s)}/status",
          request_options: request_options
        )
        begin
          response = @client.send(request)
        rescue Net::HTTPRequestTimeout
          raise Whop_sdk::Errors::TimeoutError
        end
        code = response.code.to_i
        if code.between?(200, 299)
          Whop_sdk::Types::SetupStatus.load(response.body)
        else
          error_class = Whop_sdk::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end
    end
  end
end
