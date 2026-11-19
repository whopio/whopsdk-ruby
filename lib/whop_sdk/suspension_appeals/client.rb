# frozen_string_literal: true

module Whop_sdk
  module SuspensionAppeals
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

      # Submits an appeal for one direct subaccount using a platform account API key with company:suspend_child. First
      # retrieve the appeal context and copy its account IDs and suspension timestamps into the submission. Submitting
      # accepts the declaration returned by the context. Provide written business answers or a private video uploaded
      # through POST /files with the same platform account. Supporting files must also be private and uploaded by that
      # platform. One appeal is accepted per suspension. Submission does not reinstate the account. Use Idempotency-Key
      # to safely retry, and retrieve the context to check the decision.
      #
      # @param request_options [Hash]
      # @param params [Whop_sdk::SuspensionAppeals::Types::CreateSuspensionAppealsRequest]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      #
      # @example
      #   client.suspension_appeals.create(suspension_appeal_submission: {
      #     accounts: [{
      #       id: "biz_xxxxxxxxxxxxxx",
      #       suspended_at: "2026-01-01T12:00:00.000Z"
      #     }]
      #   })
      #
      # @return [Whop_sdk::Types::SuspensionAppeal]
      def create(request_options: {}, **params)
        params = Whop_sdk::Internal::Types::Utils.normalize_keys(params)
        request = Whop_sdk::Internal::JSON::Request.new(
          base_url: request_options[:base_url] || @base_url || @environment&.dig(:api),
          method: "POST",
          path: "suspension_appeals",
          body: Whop_sdk::SuspensionAppeals::Types::CreateSuspensionAppealsRequest.new(params).to_h,
          request_options: request_options
        )
        begin
          response = @client.send(request)
        rescue Net::HTTPRequestTimeout
          raise Whop_sdk::Errors::TimeoutError
        end
        code = response.code.to_i
        if code.between?(200, 299)
          (response.body.to_s.empty? ? nil : Whop_sdk::Types::SuspensionAppeal.load(response.body))
        else
          error_class = Whop_sdk::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # Returns appeal eligibility, the declaration accepted on submission, and optional fulfillment evidence requests
      # for a direct subaccount. Requires a platform account API key with company:suspend_child and account_id. Only the
      # requested subaccount is included. After submission, use this endpoint to read the appeal status and decision.
      #
      # @param request_options [Hash]
      # @param params [Hash]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [String, nil] :account_id
      #
      # @example
      #   client.suspension_appeals.context
      #
      # @return [Whop_sdk::Types::SuspensionAppealContext]
      def context(request_options: {}, **params)
        params = Whop_sdk::Internal::Types::Utils.normalize_keys(params)
        query_params = {}
        query_params["account_id"] = params[:account_id] if params.key?(:account_id)

        request = Whop_sdk::Internal::JSON::Request.new(
          base_url: request_options[:base_url] || @base_url || @environment&.dig(:api),
          method: "GET",
          path: "suspension_appeals/context",
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
          (response.body.to_s.empty? ? nil : Whop_sdk::Types::SuspensionAppealContext.load(response.body))
        else
          error_class = Whop_sdk::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end
    end
  end
end
