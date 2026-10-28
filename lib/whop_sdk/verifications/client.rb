# frozen_string_literal: true

module Whop_sdk
  module Verifications
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

      # Lists the verifications for an account or user, including their status and any required actions. Platforms list
      # their own and every subaccount's verifications at once with `include_subaccounts`; each one's `account_ids`
      # names its account, and a verification shared by several accounts appears once for each.
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
      # @option params [Boolean, nil] :include_subaccounts
      # @option params [Integer, nil] :first
      # @option params [String, nil] :after
      # @option params [Integer, nil] :last
      # @option params [String, nil] :before
      # @option params [Whop_sdk::Verifications::Types::ListVerificationsRequestOrder, nil] :order
      # @option params [Whop_sdk::Verifications::Types::ListVerificationsRequestDirection, nil] :direction
      #
      # @example
      #   client.verifications.list
      #
      # @return [Whop_sdk::Verifications::Types::ListVerificationsResponse]
      def list(request_options: {}, **params)
        params = Whop_sdk::Internal::Types::Utils.normalize_keys(params)
        query_params = {}
        query_params["account_id"] = params[:account_id] if params.key?(:account_id)
        query_params["user_id"] = params[:user_id] if params.key?(:user_id)
        query_params["include_subaccounts"] = params[:include_subaccounts] if params.key?(:include_subaccounts)
        query_params["first"] = params[:first] if params.key?(:first)
        query_params["after"] = params[:after] if params.key?(:after)
        query_params["last"] = params[:last] if params.key?(:last)
        query_params["before"] = params[:before] if params.key?(:before)
        query_params["order"] = params[:order] if params.key?(:order)
        query_params["direction"] = params[:direction] if params.key?(:direction)

        Whop_sdk::Internal::CursorItemIterator.new(
          cursor_field: :end_cursor,
          item_field: :data,
          initial_cursor: query_params["after"]
        ) do |next_cursor|
          query_params["after"] = next_cursor
          request = Whop_sdk::Internal::JSON::Request.new(
            base_url: request_options[:base_url] || @base_url || @environment&.dig(:api),
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
            parsed_response = (response.body.to_s.empty? ? nil : Whop_sdk::Verifications::Types::ListVerificationsResponse.load(response.body))
            [parsed_response, response]
          else
            error_class = Whop_sdk::Errors::ResponseError.subclass_for_code(code)
            raise error_class.new(response.body, code: code)
          end
        end
      end

      # Starts a hosted verification session for an account or user, or returns the active session when one already
      # exists; any fields you send prefill it. To skip the hosted session, send `documents` to verify the person from
      # files in this request, `share_token` to reuse a verification another Sumsub account completed, or
      # `verification_id` to reuse one the signed-in user completed on Whop. For a business, `documents` and `owners`
      # add company formation documents and owners to the verification, and once everything is in this call sends the
      # business for review — call it again after Update Verification to send it. Until then it stays `pending` and the
      # hosted session collects anything left out. Once the account has an `approved` verification, every mode except
      # `verification_id` is rejected — unlink it first to start a new one.
      #
      # @param request_options [Hash]
      # @param params [Whop_sdk::Verifications::Types::CreateVerificationsRequestBody]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [String, nil] :account_id
      # @option params [String, nil] :user_id
      #
      # @example
      #   client.verifications.create
      #
      # @return [Whop_sdk::Verifications::Types::CreateVerificationsResponse]
      def create(request_options: {}, **params)
        params = Whop_sdk::Internal::Types::Utils.normalize_keys(params)
        query_param_names = %i[account_id user_id]
        query_params = {}
        query_params["account_id"] = params[:account_id] if params.key?(:account_id)
        query_params["user_id"] = params[:user_id] if params.key?(:user_id)
        params = params.except(*query_param_names)

        request = Whop_sdk::Internal::JSON::Request.new(
          base_url: request_options[:base_url] || @base_url || @environment&.dig(:api),
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
          (response.body.to_s.empty? ? nil : Whop_sdk::Verifications::Types::CreateVerificationsResponse.load(response.body))
        else
          error_class = Whop_sdk::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # Retrieves a verification by ID, including its status and any information or documents still required.
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
          base_url: request_options[:base_url] || @base_url || @environment&.dig(:api),
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
          (response.body.to_s.empty? ? nil : Whop_sdk::Verifications::Types::RetrieveVerificationsResponse.load(response.body))
        else
          error_class = Whop_sdk::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # Updates editable profile details or submits answers for items returned in `requested_information`. On a business
      # verification still collecting details, company details, `documents`, and `owners` also go to the verification
      # provider; call Create Verification again to send the business for review once everything is in. Under review,
      # `registration_number`, `incorporation_date`, `place_of_incorporation`, and `documents` are refused. While the
      # review waits on owners, owners can still be added, changed, or removed with `remove`; otherwise only an owner's
      # missing documents can still be sent. Once a verification is `approved` its profile details are locked and can no
      # longer be edited.
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
          base_url: request_options[:base_url] || @base_url || @environment&.dig(:api),
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
          (response.body.to_s.empty? ? nil : Whop_sdk::Verifications::Types::UpdateVerificationsResponse.load(response.body))
        else
          error_class = Whop_sdk::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end
    end
  end
end
