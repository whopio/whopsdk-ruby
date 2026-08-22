# frozen_string_literal: true

module Whop_sdk
  module Verifications
    class Client
      # @param client [Whop_sdk::Internal::Http::RawClient]
      #
      # @return [void]
      def initialize(client:)
        @client = client
      end

      # Returns verifications for an account, including their status and any required actions.
      #
      # @param request_options [Hash]
      # @param params [Hash]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [String] :account_id
      # @option params [Whop_sdk::Verifications::Types::ListVerificationsRequestOrder, nil] :order
      # @option params [Whop_sdk::Verifications::Types::ListVerificationsRequestDirection, nil] :direction
      #
      # @example
      #   client.verifications.list(account_id: "account_id")
      #
      # @return [Whop_sdk::Verifications::Types::ListVerificationsResponse]
      def list(request_options: {}, **params)
        params = Whop_sdk::Internal::Types::Utils.normalize_keys(params)
        query_params = {}
        query_params["account_id"] = params[:account_id] if params.key?(:account_id)
        query_params["order"] = params[:order] if params.key?(:order)
        query_params["direction"] = params[:direction] if params.key?(:direction)

        request = Whop_sdk::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "GET",
          path: "verifications",
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
          Whop_sdk::Verifications::Types::ListVerificationsResponse.load(response.body)
        else
          error_class = Whop_sdk::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # Starts a hosted verification session for an account or user, or returns the active session when one already
      # exists. Any fields you include in the request body are used to prefill the session. Send `documents` (with
      # `document_type`) to instead verify the person from identity documents included in this request — no hosted
      # session involved. Send `share_token` to reuse a verification another Sumsub account has already completed for
      # this person, instead of verifying them again. If the account already has an `approved` verification the request
      # is rejected; unlink it first to start a new one.
      #
      # @param request_options [Hash]
      # @param params [Whop_sdk::Verifications::Types::CreateVerificationsRequestBody]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [String] :account_id
      #
      # @example
      #   client.verifications.create(account_id: "account_id")
      #
      # @return [Whop_sdk::Verifications::Types::CreateVerificationsResponse]
      def create(request_options: {}, **params)
        params = Whop_sdk::Internal::Types::Utils.normalize_keys(params)
        query_param_names = %i[account_id]
        query_params = {}
        query_params["account_id"] = params[:account_id] if params.key?(:account_id)
        params = params.except(*query_param_names)

        request = Whop_sdk::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "POST",
          path: "verifications",
          query: query_params,
          body: Whop_sdk::Verifications::Types::CreateVerificationsRequestBody.new(params).to_h,
          request_options: request_options
        )
        begin
          response = @client.send(request)
        rescue Net::HTTPRequestTimeout
          raise Whop_sdk::Errors::TimeoutError
        end
        code = response.code.to_i
        if code.between?(200, 299)
          Whop_sdk::Verifications::Types::CreateVerificationsResponse.load(response.body)
        else
          error_class = Whop_sdk::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # Returns verifications for an account, including their status and any required actions.
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
      #   client.verifications.retrieve(id: "id")
      #
      # @return [Whop_sdk::Verifications::Types::RetrieveVerificationsResponse]
      def retrieve(request_options: {}, **params)
        params = Whop_sdk::Internal::Types::Utils.normalize_keys(params)
        request = Whop_sdk::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "GET",
          path: "verifications/#{URI.encode_uri_component(params[:id].to_s)}",
          request_options: request_options
        )
        begin
          response = @client.send(request)
        rescue Net::HTTPRequestTimeout
          raise Whop_sdk::Errors::TimeoutError
        end
        code = response.code.to_i
        if code.between?(200, 299)
          Whop_sdk::Verifications::Types::RetrieveVerificationsResponse.load(response.body)
        else
          error_class = Whop_sdk::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # Updates editable profile details or submits answers for items returned in `requested_information`. Once a
      # verification is `approved` its profile details are locked and can no longer be edited.
      #
      # @param request_options [Hash]
      # @param params [Whop_sdk::Verifications::Types::UpdateVerificationsRequestBody]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [String] :id
      #
      # @example
      #   client.verifications.update(
      #     id: "id",
      #     request: {}
      #   )
      #
      # @return [Whop_sdk::Verifications::Types::UpdateVerificationsResponse]
      def update(request_options: {}, **params)
        params = Whop_sdk::Internal::Types::Utils.normalize_keys(params)
        path_param_names = %i[id]
        body_params = params.except(*path_param_names)

        request = Whop_sdk::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "PATCH",
          path: "verifications/#{URI.encode_uri_component(params[:id].to_s)}",
          body: Whop_sdk::Verifications::Types::UpdateVerificationsRequestBody.new(body_params).to_h,
          request_options: request_options
        )
        begin
          response = @client.send(request)
        rescue Net::HTTPRequestTimeout
          raise Whop_sdk::Errors::TimeoutError
        end
        code = response.code.to_i
        if code.between?(200, 299)
          Whop_sdk::Verifications::Types::UpdateVerificationsResponse.load(response.body)
        else
          error_class = Whop_sdk::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end
    end
  end
end
