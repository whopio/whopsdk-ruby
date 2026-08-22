# frozen_string_literal: true

module Whop_sdk
  module ResolutionCenterCases
    class Client
      # @param client [Whop_sdk::Internal::Http::RawClient]
      #
      # @return [void]
      def initialize(client:)
        @client = client
      end

      # Lists resolution center cases. Without `account_id` you get every case you can read — the ones you opened as a
      # buyer and every account you are a team member of; the filters narrow that list.
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
      # @option params [Integer, nil] :first
      # @option params [String, nil] :after
      # @option params [Integer, nil] :last
      # @option params [String, nil] :before
      # @option params [Whop_sdk::ResolutionCenterCases::Types::ListResolutionCenterCasesRequestOrder, nil] :order
      # @option params [Whop_sdk::ResolutionCenterCases::Types::ListResolutionCenterCasesRequestDirection, nil] :direction
      # @option params [Whop_sdk::ResolutionCenterCases::Types::ListResolutionCenterCasesRequestStatusItem, nil] :status
      # @option params [Whop_sdk::ResolutionCenterCases::Types::ListResolutionCenterCasesRequestReasonItem, nil] :reason
      # @option params [Whop_sdk::ResolutionCenterCases::Types::ListResolutionCenterCasesRequestOutcomeItem, nil] :outcome
      # @option params [String, nil] :created_before
      # @option params [String, nil] :created_after
      #
      # @example
      #   client.resolution_center_cases.list
      #
      # @return [Whop_sdk::ResolutionCenterCases::Types::ListResolutionCenterCasesResponse]
      def list(request_options: {}, **params)
        params = Whop_sdk::Internal::Types::Utils.normalize_keys(params)
        query_params = {}
        query_params["account_id"] = params[:account_id] if params.key?(:account_id)
        query_params["user_id"] = params[:user_id] if params.key?(:user_id)
        query_params["first"] = params[:first] if params.key?(:first)
        query_params["after"] = params[:after] if params.key?(:after)
        query_params["last"] = params[:last] if params.key?(:last)
        query_params["before"] = params[:before] if params.key?(:before)
        query_params["order"] = params[:order] if params.key?(:order)
        query_params["direction"] = params[:direction] if params.key?(:direction)
        query_params["status"] = params[:status] if params.key?(:status)
        query_params["reason"] = params[:reason] if params.key?(:reason)
        query_params["outcome"] = params[:outcome] if params.key?(:outcome)
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
            path: "resolution_center_cases",
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
            parsed_response = Whop_sdk::ResolutionCenterCases::Types::ListResolutionCenterCasesResponse.load(response.body)
            [parsed_response, response]
          else
            error_class = Whop_sdk::Errors::ResponseError.subclass_for_code(code)
            raise error_class.new(response.body, code: code)
          end
        end
      end

      # Opens a case, as the customer, against one of your own payments. Provide the payment (`receipt_id`), the
      # `reason`, and a `message`.
      #
      # @param request_options [Hash]
      # @param params [Whop_sdk::ResolutionCenterCases::Types::CreateResolutionCenterCasesRequest]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      #
      # @example
      #   client.resolution_center_cases.create(
      #     message: "The mobile detailer never showed up for the Ceramic Coating appointment.",
      #     reason: "fraudulent",
      #     receipt_id: "pay_xxxxxxxxxxxxxx"
      #   )
      #
      # @return [Whop_sdk::Types::ResolutionCenterCase]
      def create(request_options: {}, **params)
        params = Whop_sdk::Internal::Types::Utils.normalize_keys(params)
        request = Whop_sdk::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "POST",
          path: "resolution_center_cases",
          body: Whop_sdk::ResolutionCenterCases::Types::CreateResolutionCenterCasesRequest.new(params).to_h,
          request_options: request_options
        )
        begin
          response = @client.send(request)
        rescue Net::HTTPRequestTimeout
          raise Whop_sdk::Errors::TimeoutError
        end
        code = response.code.to_i
        if code.between?(200, 299)
          Whop_sdk::Types::ResolutionCenterCase.load(response.body)
        else
          error_class = Whop_sdk::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # Aggregates the same cases `GET /resolution_center_cases` lists, using the same filters. Use it to build status
      # tabs and issue filters without paging the whole list.
      #
      # @param request_options [Hash]
      # @param params [Hash]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [Whop_sdk::ResolutionCenterCases::Types::SummaryResolutionCenterCasesRequestGroupsItem, nil] :groups
      # @option params [String, nil] :account_id
      # @option params [String, nil] :user_id
      # @option params [Whop_sdk::ResolutionCenterCases::Types::SummaryResolutionCenterCasesRequestStatusItem, nil] :status
      # @option params [Whop_sdk::ResolutionCenterCases::Types::SummaryResolutionCenterCasesRequestReasonItem, nil] :reason
      # @option params [Whop_sdk::ResolutionCenterCases::Types::SummaryResolutionCenterCasesRequestOutcomeItem, nil] :outcome
      # @option params [String, nil] :created_before
      # @option params [String, nil] :created_after
      #
      # @example
      #   client.resolution_center_cases.summary
      #
      # @return [Whop_sdk::ResolutionCenterCases::Types::SummaryResolutionCenterCasesResponse]
      def summary(request_options: {}, **params)
        params = Whop_sdk::Internal::Types::Utils.normalize_keys(params)
        query_params = {}
        query_params["groups"] = params[:groups] if params.key?(:groups)
        query_params["account_id"] = params[:account_id] if params.key?(:account_id)
        query_params["user_id"] = params[:user_id] if params.key?(:user_id)
        query_params["status"] = params[:status] if params.key?(:status)
        query_params["reason"] = params[:reason] if params.key?(:reason)
        query_params["outcome"] = params[:outcome] if params.key?(:outcome)
        query_params["created_before"] = params[:created_before] if params.key?(:created_before)
        query_params["created_after"] = params[:created_after] if params.key?(:created_after)

        request = Whop_sdk::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "GET",
          path: "resolution_center_cases/summary",
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
          Whop_sdk::ResolutionCenterCases::Types::SummaryResolutionCenterCasesResponse.load(response.body)
        else
          error_class = Whop_sdk::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # Retrieves a single resolution center case with its full event timeline.
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
      #   client.resolution_center_cases.retrieve(id: "id")
      #
      # @return [Whop_sdk::Types::ResolutionCenterCase]
      def retrieve(request_options: {}, **params)
        params = Whop_sdk::Internal::Types::Utils.normalize_keys(params)
        request = Whop_sdk::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "GET",
          path: "resolution_center_cases/#{URI.encode_uri_component(params[:id].to_s)}",
          request_options: request_options
        )
        begin
          response = @client.send(request)
        rescue Net::HTTPRequestTimeout
          raise Whop_sdk::Errors::TimeoutError
        end
        code = response.code.to_i
        if code.between?(200, 299)
          Whop_sdk::Types::ResolutionCenterCase.load(response.body)
        else
          error_class = Whop_sdk::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # Accepts the case in the customer's favor, as the merchant: refunds the payment in full and closes the case.
      #
      # @param request_options [Hash]
      # @param params [Whop_sdk::ResolutionCenterCases::Types::AcceptResolutionCenterCasesRequest]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [String] :id
      #
      # @example
      #   client.resolution_center_cases.accept(id: "id")
      #
      # @return [Whop_sdk::Types::ResolutionCenterCase]
      def accept(request_options: {}, **params)
        params = Whop_sdk::Internal::Types::Utils.normalize_keys(params)
        request_data = Whop_sdk::ResolutionCenterCases::Types::AcceptResolutionCenterCasesRequest.new(params).to_h
        non_body_param_names = %w[id]
        body = request_data.except(*non_body_param_names)

        request = Whop_sdk::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "POST",
          path: "resolution_center_cases/#{URI.encode_uri_component(params[:id].to_s)}/accept",
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
          Whop_sdk::Types::ResolutionCenterCase.load(response.body)
        else
          error_class = Whop_sdk::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # Appeals a decision, as the customer, on a case that closed in the merchant's favor. Escalates the case to Whop
      # for platform review. A case can be appealed once.
      #
      # @param request_options [Hash]
      # @param params [Whop_sdk::ResolutionCenterCases::Types::AppealResolutionCenterCasesRequest]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [String] :id
      #
      # @example
      #   client.resolution_center_cases.appeal(
      #     id: "id",
      #     message: "The coating is already flaking on the hood two weeks later."
      #   )
      #
      # @return [Whop_sdk::Types::ResolutionCenterCase]
      def appeal(request_options: {}, **params)
        params = Whop_sdk::Internal::Types::Utils.normalize_keys(params)
        request_data = Whop_sdk::ResolutionCenterCases::Types::AppealResolutionCenterCasesRequest.new(params).to_h
        non_body_param_names = %w[id]
        body = request_data.except(*non_body_param_names)

        request = Whop_sdk::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "POST",
          path: "resolution_center_cases/#{URI.encode_uri_component(params[:id].to_s)}/appeal",
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
          Whop_sdk::Types::ResolutionCenterCase.load(response.body)
        else
          error_class = Whop_sdk::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # Denies the case, as the merchant: rejects the claim and closes the case with no refund.
      #
      # @param request_options [Hash]
      # @param params [Whop_sdk::ResolutionCenterCases::Types::DenyResolutionCenterCasesRequest]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [String] :id
      #
      # @example
      #   client.resolution_center_cases.deny(
      #     id: "id",
      #     message: "The ceramic coating was applied and the vehicle was collected on 2026-01-05."
      #   )
      #
      # @return [Whop_sdk::Types::ResolutionCenterCase]
      def deny(request_options: {}, **params)
        params = Whop_sdk::Internal::Types::Utils.normalize_keys(params)
        request_data = Whop_sdk::ResolutionCenterCases::Types::DenyResolutionCenterCasesRequest.new(params).to_h
        non_body_param_names = %w[id]
        body = request_data.except(*non_body_param_names)

        request = Whop_sdk::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "POST",
          path: "resolution_center_cases/#{URI.encode_uri_component(params[:id].to_s)}/deny",
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
          Whop_sdk::Types::ResolutionCenterCase.load(response.body)
        else
          error_class = Whop_sdk::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # Lists the case timeline, newest first. Events the viewer is not allowed to see are omitted — a customer reads
      # the customer-visible timeline, the merchant reads the full one.
      #
      # @param request_options [Hash]
      # @param params [Hash]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [String] :id
      # @option params [Integer, nil] :first
      # @option params [String, nil] :after
      # @option params [Integer, nil] :last
      # @option params [String, nil] :before
      #
      # @example
      #   client.resolution_center_cases.events(id: "id")
      #
      # @return [Whop_sdk::ResolutionCenterCases::Types::EventsResolutionCenterCasesResponse]
      def events(request_options: {}, **params)
        params = Whop_sdk::Internal::Types::Utils.normalize_keys(params)
        query_params = {}
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
            path: "resolution_center_cases/#{URI.encode_uri_component(params[:id].to_s)}/events",
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
            parsed_response = Whop_sdk::ResolutionCenterCases::Types::EventsResolutionCenterCasesResponse.load(response.body)
            [parsed_response, response]
          else
            error_class = Whop_sdk::Errors::ResponseError.subclass_for_code(code)
            raise error_class.new(response.body, code: code)
          end
        end
      end

      # Replies to an open request for information on the case. As the merchant this answers Whop's request (valid while
      # the case awaits your information); as the customer it provides the information requested from you. The actor is
      # resolved from the credential.
      #
      # @param request_options [Hash]
      # @param params [Whop_sdk::ResolutionCenterCases::Types::ReplyResolutionCenterCasesRequest]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [String] :id
      #
      # @example
      #   client.resolution_center_cases.reply(
      #     id: "id",
      #     message: "Here are the before and after photos from the Burnet Rd bay."
      #   )
      #
      # @return [Whop_sdk::Types::ResolutionCenterCase]
      def reply(request_options: {}, **params)
        params = Whop_sdk::Internal::Types::Utils.normalize_keys(params)
        request_data = Whop_sdk::ResolutionCenterCases::Types::ReplyResolutionCenterCasesRequest.new(params).to_h
        non_body_param_names = %w[id]
        body = request_data.except(*non_body_param_names)

        request = Whop_sdk::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "POST",
          path: "resolution_center_cases/#{URI.encode_uri_component(params[:id].to_s)}/reply",
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
          Whop_sdk::Types::ResolutionCenterCase.load(response.body)
        else
          error_class = Whop_sdk::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # Asks the customer for more information, as the merchant. Allowed up to 3 times per case before you must accept
      # or deny it.
      #
      # @param request_options [Hash]
      # @param params [Whop_sdk::ResolutionCenterCases::Types::RequestInfoResolutionCenterCasesRequest]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [String] :id
      #
      # @example
      #   client.resolution_center_cases.request_info(id: "id")
      #
      # @return [Whop_sdk::Types::ResolutionCenterCase]
      def request_info(request_options: {}, **params)
        params = Whop_sdk::Internal::Types::Utils.normalize_keys(params)
        request_data = Whop_sdk::ResolutionCenterCases::Types::RequestInfoResolutionCenterCasesRequest.new(params).to_h
        non_body_param_names = %w[id]
        body = request_data.except(*non_body_param_names)

        request = Whop_sdk::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "POST",
          path: "resolution_center_cases/#{URI.encode_uri_component(params[:id].to_s)}/request_info",
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
          Whop_sdk::Types::ResolutionCenterCase.load(response.body)
        else
          error_class = Whop_sdk::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # Withdraws (cancels) a case you opened, as the customer. Only possible while the case is still open.
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
      #   client.resolution_center_cases.withdraw(id: "id")
      #
      # @return [Whop_sdk::Types::ResolutionCenterCase]
      def withdraw(request_options: {}, **params)
        params = Whop_sdk::Internal::Types::Utils.normalize_keys(params)
        request = Whop_sdk::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "POST",
          path: "resolution_center_cases/#{URI.encode_uri_component(params[:id].to_s)}/withdraw",
          request_options: request_options
        )
        begin
          response = @client.send(request)
        rescue Net::HTTPRequestTimeout
          raise Whop_sdk::Errors::TimeoutError
        end
        code = response.code.to_i
        if code.between?(200, 299)
          Whop_sdk::Types::ResolutionCenterCase.load(response.body)
        else
          error_class = Whop_sdk::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end
    end
  end
end
