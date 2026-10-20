# frozen_string_literal: true

module Whop_sdk
  module FinancingApplications
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

      # Lists payment-financing applications. Without `account_id`, an account credential lists its own account and its
      # direct connected accounts, but not deeper descendants, and a user credential lists every account it can read
      # applications for.
      #
      # @param request_options [Hash]
      # @param params [Hash]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [String, nil] :account_id
      # @option params [Whop_sdk::FinancingApplications::Types::ListFinancingApplicationsRequestStatus, nil] :status
      # @option params [String, nil] :created_before
      # @option params [String, nil] :created_after
      # @option params [Whop_sdk::FinancingApplications::Types::ListFinancingApplicationsRequestOrder, nil] :order
      # @option params [Whop_sdk::FinancingApplications::Types::ListFinancingApplicationsRequestDirection, nil] :direction
      # @option params [Integer, nil] :first
      # @option params [String, nil] :after
      # @option params [Integer, nil] :last
      # @option params [String, nil] :before
      #
      # @example
      #   client.financing_applications.list
      #
      # @return [Whop_sdk::FinancingApplications::Types::ListFinancingApplicationsResponse]
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
            base_url: request_options[:base_url] || @base_url || @environment&.dig(:api),
            method: "GET",
            path: "financing_applications",
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
            parsed_response = (response.body.to_s.empty? ? nil : Whop_sdk::FinancingApplications::Types::ListFinancingApplicationsResponse.load(response.body))
            [parsed_response, response]
          else
            error_class = Whop_sdk::Errors::ResponseError.subclass_for_code(code)
            raise error_class.new(response.body, code: code)
          end
        end
      end

      # Starts an application for payment-financing approval, or returns the account's open one: an application in
      # `awaiting_review` takes precedence over one in `requires_collection`, and the open application is reused across
      # different `Idempotency-Key` values. Creating an application does not submit it for review. The account must have
      # a Whop balance set up, and accounts in restricted industries cannot apply. Once an application closes, the
      # account can apply again.
      #
      # @param request_options [Hash]
      # @param params [Whop_sdk::FinancingApplications::Types::CreateFinancingApplicationsRequest]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      #
      # @example
      #   client.financing_applications.create
      #
      # @return [Whop_sdk::Types::FinancingApplication]
      def create(request_options: {}, **params)
        params = Whop_sdk::Internal::Types::Utils.normalize_keys(params)
        request = Whop_sdk::Internal::JSON::Request.new(
          base_url: request_options[:base_url] || @base_url || @environment&.dig(:api),
          method: "POST",
          path: "financing_applications",
          body: Whop_sdk::FinancingApplications::Types::CreateFinancingApplicationsRequest.new(params).to_h,
          request_options: request_options
        )
        begin
          response = @client.send(request)
        rescue Net::HTTPRequestTimeout
          raise Whop_sdk::Errors::TimeoutError
        end
        code = response.code.to_i
        if code.between?(200, 299)
          (response.body.to_s.empty? ? nil : Whop_sdk::Types::FinancingApplication.load(response.body))
        else
          error_class = Whop_sdk::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # Retrieves a payment-financing application with its review state, requirements, saved answers, documents, current
      # terms, and review feedback. Requires read access to the account that owns it.
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
      #   client.financing_applications.retrieve(id: "id")
      #
      # @return [Whop_sdk::Types::FinancingApplication]
      def retrieve(request_options: {}, **params)
        params = Whop_sdk::Internal::Types::Utils.normalize_keys(params)
        request = Whop_sdk::Internal::JSON::Request.new(
          base_url: request_options[:base_url] || @base_url || @environment&.dig(:api),
          method: "GET",
          path: "financing_applications/#{URI.encode_uri_component(params[:id].to_s)}",
          request_options: request_options
        )
        begin
          response = @client.send(request)
        rescue Net::HTTPRequestTimeout
          raise Whop_sdk::Errors::TimeoutError
        end
        code = response.code.to_i
        if code.between?(200, 299)
          (response.body.to_s.empty? ? nil : Whop_sdk::Types::FinancingApplication.load(response.body))
        else
          error_class = Whop_sdk::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # Saves merchant answers to an application in `requires_collection`. The batch is atomic: if any answer is
      # rejected, none are saved. Omitted requirements and answer fields are left unchanged. Saving answers does not
      # submit the application; call Submit Financing Application when it is complete.
      #
      # @param request_options [Hash]
      # @param params [Whop_sdk::FinancingApplications::Types::UpdateFinancingApplicationsRequest]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [String] :id
      #
      # @example
      #   client.financing_applications.update(
      #     id: "id",
      #     answers: [{
      #       requirement_id: "inrqi_xxxxxxxxxxxxxx"
      #     }]
      #   )
      #
      # @return [Whop_sdk::Types::FinancingApplication]
      def update(request_options: {}, **params)
        params = Whop_sdk::Internal::Types::Utils.normalize_keys(params)
        request_data = Whop_sdk::FinancingApplications::Types::UpdateFinancingApplicationsRequest.new(params).to_h
        non_body_param_names = %w[id]
        body = request_data.except(*non_body_param_names)

        request = Whop_sdk::Internal::JSON::Request.new(
          base_url: request_options[:base_url] || @base_url || @environment&.dig(:api),
          method: "PATCH",
          path: "financing_applications/#{URI.encode_uri_component(params[:id].to_s)}",
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
          (response.body.to_s.empty? ? nil : Whop_sdk::Types::FinancingApplication.load(response.body))
        else
          error_class = Whop_sdk::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # Submits a complete application for financing review, recording the merchant's acceptance, who submitted, and
      # when, then moving it to `awaiting_review`. Before calling, present the application's `terms.content`, policies,
      # and disclosure to the merchant and collect affirmative acceptance; every resubmission needs acceptance again.
      # Only an application in `requires_collection` can be submitted, including after a reviewer requests more
      # information. Retry with the same `Idempotency-Key`: submitting an application already in review without a replay
      # returns an error. Approval does not by itself enable financing payment methods.
      #
      # @param request_options [Hash]
      # @param params [Whop_sdk::FinancingApplications::Types::SubmitFinancingApplicationsRequest]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [String] :id
      #
      # @example
      #   client.financing_applications.submit(
      #     id: "id",
      #     merchant_acceptance: {
      #       accepted: true,
      #       terms_version: "xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx"
      #     }
      #   )
      #
      # @return [Whop_sdk::Types::FinancingApplication]
      def submit(request_options: {}, **params)
        params = Whop_sdk::Internal::Types::Utils.normalize_keys(params)
        request_data = Whop_sdk::FinancingApplications::Types::SubmitFinancingApplicationsRequest.new(params).to_h
        non_body_param_names = %w[id]
        body = request_data.except(*non_body_param_names)

        request = Whop_sdk::Internal::JSON::Request.new(
          base_url: request_options[:base_url] || @base_url || @environment&.dig(:api),
          method: "POST",
          path: "financing_applications/#{URI.encode_uri_component(params[:id].to_s)}/submit",
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
          (response.body.to_s.empty? ? nil : Whop_sdk::Types::FinancingApplication.load(response.body))
        else
          error_class = Whop_sdk::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end
    end
  end
end
