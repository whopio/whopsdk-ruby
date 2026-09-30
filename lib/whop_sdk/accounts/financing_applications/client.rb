# frozen_string_literal: true

module Whop_sdk
  module Accounts
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

        # Lists payment-financing applications for the account in the URL. Account credentials can access their own
        # account and direct sub-accounts, excluding deeper descendants. User credentials require the read permission on
        # each account. Filters only narrow this visibility.
        #
        # @param request_options [Hash]
        # @param params [Hash]
        # @option request_options [String] :base_url
        # @option request_options [Hash{String => Object}] :additional_headers
        # @option request_options [Hash{String => Object}] :additional_query_parameters
        # @option request_options [Hash{String => Object}] :additional_body_parameters
        # @option request_options [Integer] :timeout_in_seconds
        # @option params [String] :account_id
        # @option params [Whop_sdk::Accounts::FinancingApplications::Types::ListFinancingApplicationsRequestStatus, nil] :status
        # @option params [String, nil] :created_before
        # @option params [String, nil] :created_after
        # @option params [Whop_sdk::Accounts::FinancingApplications::Types::ListFinancingApplicationsRequestOrder, nil] :order
        # @option params [Whop_sdk::Accounts::FinancingApplications::Types::ListFinancingApplicationsRequestDirection, nil] :direction
        # @option params [Integer, nil] :first
        # @option params [String, nil] :after
        # @option params [Integer, nil] :last
        # @option params [String, nil] :before
        #
        # @example
        #   client.accounts.financing_applications.list(account_id: "account_id")
        #
        # @return [Whop_sdk::Accounts::FinancingApplications::Types::ListFinancingApplicationsResponse]
        def list(request_options: {}, **params)
          params = Whop_sdk::Internal::Types::Utils.normalize_keys(params)
          query_params = {}
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
              path: "accounts/#{URI.encode_uri_component(params[:account_id].to_s)}/financing_applications",
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
              parsed_response = Whop_sdk::Accounts::FinancingApplications::Types::ListFinancingApplicationsResponse.load(response.body)
              [parsed_response, response]
            else
              error_class = Whop_sdk::Errors::ResponseError.subclass_for_code(code)
              raise error_class.new(response.body, code: code)
            end
          end
        end

        # Creates an application for merchant payment-financing approval. Requires an existing ledger account. Returns
        # an existing application collecting information or awaiting review; applications awaiting review take
        # precedence. Restricted industries cannot apply. Closed applications allow reapplication. This does not submit
        # the application for review. Supports Idempotency-Key replay; open applications are also reused across
        # different keys.
        #
        # @param request_options [Hash]
        # @param params [Whop_sdk::Accounts::FinancingApplications::Types::CreateFinancingApplicationsRequest]
        # @option request_options [String] :base_url
        # @option request_options [Hash{String => Object}] :additional_headers
        # @option request_options [Hash{String => Object}] :additional_query_parameters
        # @option request_options [Hash{String => Object}] :additional_body_parameters
        # @option request_options [Integer] :timeout_in_seconds
        # @option params [String] :account_id
        #
        # @example
        #   client.accounts.financing_applications.create(account_id: "account_id")
        #
        # @return [Whop_sdk::Types::FinancingApplication]
        def create(request_options: {}, **params)
          params = Whop_sdk::Internal::Types::Utils.normalize_keys(params)
          request_data = Whop_sdk::Accounts::FinancingApplications::Types::CreateFinancingApplicationsRequest.new(params).to_h
          non_body_param_names = %w[account_id]
          body = request_data.except(*non_body_param_names)

          request = Whop_sdk::Internal::JSON::Request.new(
            base_url: request_options[:base_url] || @base_url || @environment&.dig(:api),
            method: "POST",
            path: "accounts/#{URI.encode_uri_component(params[:account_id].to_s)}/financing_applications",
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
            Whop_sdk::Types::FinancingApplication.load(response.body)
          else
            error_class = Whop_sdk::Errors::ResponseError.subclass_for_code(code)
            raise error_class.new(response.body, code: code)
          end
        end

        # Retrieves a payment-financing application's review state, requirements, saved answers, documents, current
        # terms, and public review feedback. Requires read access to its owning account. Internal review notes and risk
        # metrics are not exposed.
        #
        # @param request_options [Hash]
        # @param params [Hash]
        # @option request_options [String] :base_url
        # @option request_options [Hash{String => Object}] :additional_headers
        # @option request_options [Hash{String => Object}] :additional_query_parameters
        # @option request_options [Hash{String => Object}] :additional_body_parameters
        # @option request_options [Integer] :timeout_in_seconds
        # @option params [String] :account_id
        # @option params [String] :id
        #
        # @example
        #   client.accounts.financing_applications.retrieve(
        #     account_id: "account_id",
        #     id: "id"
        #   )
        #
        # @return [Whop_sdk::Types::FinancingApplication]
        def retrieve(request_options: {}, **params)
          params = Whop_sdk::Internal::Types::Utils.normalize_keys(params)
          request = Whop_sdk::Internal::JSON::Request.new(
            base_url: request_options[:base_url] || @base_url || @environment&.dig(:api),
            method: "GET",
            path: "accounts/#{URI.encode_uri_component(params[:account_id].to_s)}/financing_applications/#{URI.encode_uri_component(params[:id].to_s)}",
            request_options: request_options
          )
          begin
            response = @client.send(request)
          rescue Net::HTTPRequestTimeout
            raise Whop_sdk::Errors::TimeoutError
          end
          code = response.code.to_i
          if code.between?(200, 299)
            Whop_sdk::Types::FinancingApplication.load(response.body)
          else
            error_class = Whop_sdk::Errors::ResponseError.subclass_for_code(code)
            raise error_class.new(response.body, code: code)
          end
        end

        # Saves merchant answers while the application requires_collection. The entire batch is atomic. Omitted
        # requirements and answer fields are unchanged; empty arrays clear values or documents, and null money clears a
        # price. Only merchant requirement IDs returned by this application are accepted. Upload documents through the
        # Files API first: new files must belong to the caller, be ready and private, and satisfy the requirement's
        # formats and 20 MB limit. file_ids replaces the requirement's attachments. This does not submit the
        # application.
        #
        # @param request_options [Hash]
        # @param params [Whop_sdk::Accounts::FinancingApplications::Types::UpdateFinancingApplicationsRequest]
        # @option request_options [String] :base_url
        # @option request_options [Hash{String => Object}] :additional_headers
        # @option request_options [Hash{String => Object}] :additional_query_parameters
        # @option request_options [Hash{String => Object}] :additional_body_parameters
        # @option request_options [Integer] :timeout_in_seconds
        # @option params [String] :account_id
        # @option params [String] :id
        #
        # @example
        #   client.accounts.financing_applications.update(
        #     account_id: "account_id",
        #     id: "id",
        #     answers: [{
        #       requirement_id: "inrqi_xxxxxxxxxxxxxx"
        #     }]
        #   )
        #
        # @return [Whop_sdk::Types::FinancingApplication]
        def update(request_options: {}, **params)
          params = Whop_sdk::Internal::Types::Utils.normalize_keys(params)
          request_data = Whop_sdk::Accounts::FinancingApplications::Types::UpdateFinancingApplicationsRequest.new(params).to_h
          non_body_param_names = %w[account_id id]
          body = request_data.except(*non_body_param_names)

          request = Whop_sdk::Internal::JSON::Request.new(
            base_url: request_options[:base_url] || @base_url || @environment&.dig(:api),
            method: "PATCH",
            path: "accounts/#{URI.encode_uri_component(params[:account_id].to_s)}/financing_applications/#{URI.encode_uri_component(params[:id].to_s)}",
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
            Whop_sdk::Types::FinancingApplication.load(response.body)
          else
            error_class = Whop_sdk::Errors::ResponseError.subclass_for_code(code)
            raise error_class.new(response.body, code: code)
          end
        end

        # Submits a complete application for financing review. Present the application's terms.content, policies, and
        # disclosure to the merchant and collect affirmative acceptance before calling this endpoint. Pass the
        # terms.version that was presented; stale versions are rejected. The server records acceptance, submitting
        # actor, and submission time before entering awaiting_review. Only requires_collection applications may submit,
        # including after a reviewer requests more information. Resubmissions require acceptance again. Use
        # Idempotency-Key for retries; submitting an application already in review without replay returns an error.
        # Approval does not itself enable financing payment methods.
        #
        # @param request_options [Hash]
        # @param params [Whop_sdk::Accounts::FinancingApplications::Types::SubmitFinancingApplicationsRequest]
        # @option request_options [String] :base_url
        # @option request_options [Hash{String => Object}] :additional_headers
        # @option request_options [Hash{String => Object}] :additional_query_parameters
        # @option request_options [Hash{String => Object}] :additional_body_parameters
        # @option request_options [Integer] :timeout_in_seconds
        # @option params [String] :account_id
        # @option params [String] :id
        #
        # @example
        #   client.accounts.financing_applications.submit(
        #     account_id: "account_id",
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
          request_data = Whop_sdk::Accounts::FinancingApplications::Types::SubmitFinancingApplicationsRequest.new(params).to_h
          non_body_param_names = %w[account_id id]
          body = request_data.except(*non_body_param_names)

          request = Whop_sdk::Internal::JSON::Request.new(
            base_url: request_options[:base_url] || @base_url || @environment&.dig(:api),
            method: "POST",
            path: "accounts/#{URI.encode_uri_component(params[:account_id].to_s)}/financing_applications/#{URI.encode_uri_component(params[:id].to_s)}/submit",
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
            Whop_sdk::Types::FinancingApplication.load(response.body)
          else
            error_class = Whop_sdk::Errors::ResponseError.subclass_for_code(code)
            raise error_class.new(response.body, code: code)
          end
        end
      end
    end
  end
end
