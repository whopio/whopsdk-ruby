# frozen_string_literal: true

module Whop_sdk
  module Disputes
    class Client
      # @param client [Whop_sdk::Internal::Http::RawClient]
      #
      # @return [void]
      def initialize(client:)
        @client = client
      end

      # Lists the disputes across the accounts you can read.
      #
      # @param request_options [Hash]
      # @param params [Hash]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [String, nil] :account_id
      # @option params [Integer, nil] :first
      # @option params [String, nil] :after
      # @option params [Integer, nil] :last
      # @option params [String, nil] :before
      # @option params [Whop_sdk::Disputes::Types::ListDisputesRequestOrder, nil] :order
      # @option params [Whop_sdk::Disputes::Types::ListDisputesRequestDirection, nil] :direction
      # @option params [Whop_sdk::Disputes::Types::ListDisputesRequestStatusItem, nil] :status
      # @option params [String, nil] :currency
      # @option params [String, nil] :created_before
      # @option params [String, nil] :created_after
      #
      # @example
      #   client.disputes.list
      #
      # @return [Whop_sdk::Disputes::Types::ListDisputesResponse]
      def list(request_options: {}, **params)
        params = Whop_sdk::Internal::Types::Utils.normalize_keys(params)
        query_params = {}
        query_params["account_id"] = params[:account_id] if params.key?(:account_id)
        query_params["first"] = params[:first] if params.key?(:first)
        query_params["after"] = params[:after] if params.key?(:after)
        query_params["last"] = params[:last] if params.key?(:last)
        query_params["before"] = params[:before] if params.key?(:before)
        query_params["order"] = params[:order] if params.key?(:order)
        query_params["direction"] = params[:direction] if params.key?(:direction)
        query_params["status"] = params[:status] if params.key?(:status)
        query_params["currency"] = params[:currency] if params.key?(:currency)
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
            path: "disputes",
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
            parsed_response = Whop_sdk::Disputes::Types::ListDisputesResponse.load(response.body)
            [parsed_response, response]
          else
            error_class = Whop_sdk::Errors::ResponseError.subclass_for_code(code)
            raise error_class.new(response.body, code: code)
          end
        end
      end

      # Totals up the same disputes the list returns, so you can build status tabs and totals without paging through
      # them.
      #
      # @param request_options [Hash]
      # @param params [Hash]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [Whop_sdk::Disputes::Types::SummaryDisputesRequestGroupsItem, nil] :groups
      # @option params [String, nil] :account_id
      # @option params [Whop_sdk::Disputes::Types::SummaryDisputesRequestStatusItem, nil] :status
      # @option params [String, nil] :currency
      # @option params [String, nil] :created_before
      # @option params [String, nil] :created_after
      #
      # @example
      #   client.disputes.summary
      #
      # @return [Whop_sdk::Disputes::Types::SummaryDisputesResponse]
      def summary(request_options: {}, **params)
        params = Whop_sdk::Internal::Types::Utils.normalize_keys(params)
        query_params = {}
        query_params["groups"] = params[:groups] if params.key?(:groups)
        query_params["account_id"] = params[:account_id] if params.key?(:account_id)
        query_params["status"] = params[:status] if params.key?(:status)
        query_params["currency"] = params[:currency] if params.key?(:currency)
        query_params["created_before"] = params[:created_before] if params.key?(:created_before)
        query_params["created_after"] = params[:created_after] if params.key?(:created_after)

        request = Whop_sdk::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "GET",
          path: "disputes/summary",
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
          Whop_sdk::Disputes::Types::SummaryDisputesResponse.load(response.body)
        else
          error_class = Whop_sdk::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # Retrieves a single dispute.
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
      #   client.disputes.retrieve(id: "id")
      #
      # @return [Whop_sdk::Types::Dispute]
      def retrieve(request_options: {}, **params)
        params = Whop_sdk::Internal::Types::Utils.normalize_keys(params)
        request = Whop_sdk::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "GET",
          path: "disputes/#{URI.encode_uri_component(params[:id].to_s)}",
          request_options: request_options
        )
        begin
          response = @client.send(request)
        rescue Net::HTTPRequestTimeout
          raise Whop_sdk::Errors::TimeoutError
        end
        code = response.code.to_i
        if code.between?(200, 299)
          Whop_sdk::Types::Dispute.load(response.body)
        else
          error_class = Whop_sdk::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # Edits a dispute's evidence, while it is still editable. Sending it is a separate call.
      #
      # @param request_options [Hash]
      # @param params [Whop_sdk::Disputes::Types::UpdateDisputesRequest]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [String] :id
      #
      # @example
      #   client.disputes.update(id: "id")
      #
      # @return [Whop_sdk::Types::Dispute]
      def update(request_options: {}, **params)
        params = Whop_sdk::Internal::Types::Utils.normalize_keys(params)
        request_data = Whop_sdk::Disputes::Types::UpdateDisputesRequest.new(params).to_h
        non_body_param_names = %w[id]
        body = request_data.except(*non_body_param_names)

        request = Whop_sdk::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "PATCH",
          path: "disputes/#{URI.encode_uri_component(params[:id].to_s)}",
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
          Whop_sdk::Types::Dispute.load(response.body)
        else
          error_class = Whop_sdk::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # Sends a dispute's evidence to the payment processor. This is final — it cannot be edited or sent again.
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
      #   client.disputes.submit(id: "id")
      #
      # @return [Whop_sdk::Types::Dispute]
      def submit(request_options: {}, **params)
        params = Whop_sdk::Internal::Types::Utils.normalize_keys(params)
        request = Whop_sdk::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "POST",
          path: "disputes/#{URI.encode_uri_component(params[:id].to_s)}/submit",
          request_options: request_options
        )
        begin
          response = @client.send(request)
        rescue Net::HTTPRequestTimeout
          raise Whop_sdk::Errors::TimeoutError
        end
        code = response.code.to_i
        if code.between?(200, 299)
          Whop_sdk::Types::Dispute.load(response.body)
        else
          error_class = Whop_sdk::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # Submit a payment dispute to the payment processor for review. Once submitted, no further edits can be made.
      #
      # Required permissions:
      #  - `payment:dispute`
      #  - `plan:basic:read`
      #  - `access_pass:basic:read`
      #  - `company:basic:read`
      #  - `payment:basic:read`
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
      #   client.disputes.submit_evidence_dispute(id: "dspt_xxxxxxxxxxxxx")
      #
      # @return [Whop_sdk::Types::Dispute]
      def submit_evidence_dispute(request_options: {}, **params)
        params = Whop_sdk::Internal::Types::Utils.normalize_keys(params)
        request = Whop_sdk::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "POST",
          path: "disputes/#{URI.encode_uri_component(params[:id].to_s)}/submit_evidence",
          request_options: request_options
        )
        begin
          response = @client.send(request)
        rescue Net::HTTPRequestTimeout
          raise Whop_sdk::Errors::TimeoutError
        end
        code = response.code.to_i
        if code.between?(200, 299)
          Whop_sdk::Types::Dispute.load(response.body)
        else
          error_class = Whop_sdk::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # Update a dispute with evidence data to attempt to win the dispute.
      #
      # Required permissions:
      #  - `payment:dispute`
      #  - `plan:basic:read`
      #  - `access_pass:basic:read`
      #  - `company:basic:read`
      #  - `payment:basic:read`
      #  - `member:email:read`
      #  - `member:basic:read`
      #  - `member:phone:read`
      #
      # @param request_options [Hash]
      # @param params [Whop_sdk::Disputes::Types::UpdateEvidenceDisputeRequest]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [String] :id
      #
      # @example
      #   client.disputes.update_evidence_dispute(id: "dspt_xxxxxxxxxxxxx")
      #
      # @return [Whop_sdk::Types::Dispute]
      def update_evidence_dispute(request_options: {}, **params)
        params = Whop_sdk::Internal::Types::Utils.normalize_keys(params)
        request_data = Whop_sdk::Disputes::Types::UpdateEvidenceDisputeRequest.new(params).to_h
        non_body_param_names = %w[id]
        body = request_data.except(*non_body_param_names)

        request = Whop_sdk::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "POST",
          path: "disputes/#{URI.encode_uri_component(params[:id].to_s)}/update_evidence",
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
          Whop_sdk::Types::Dispute.load(response.body)
        else
          error_class = Whop_sdk::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # Replaces the full set of uploaded evidence documents on a dispute, beyond the four fixed evidence slots. Send
      # the files as multipart file parts to upload and attach in one call, or reference files already stored by
      # `id`/`direct_upload_id`. Send every document the packet should carry — up to 10, 10MB each and 25MB in total; an
      # empty list removes them all. Accepted content types: application/pdf, application/json, image/jpeg, image/png,
      # image/webp — any other type is rejected.
      #
      # @param request_options [Hash]
      # @param params [Whop_sdk::Disputes::Types::UploadEvidenceDisputesRequest]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [String] :id
      #
      # @example
      #   client.disputes.upload_evidence(
      #     id: "id",
      #     documents: [{
      #       document_type: "return_policy"
      #     }]
      #   )
      #
      # @return [Whop_sdk::Types::Dispute]
      def upload_evidence(request_options: {}, **params)
        params = Whop_sdk::Internal::Types::Utils.normalize_keys(params)
        request_data = Whop_sdk::Disputes::Types::UploadEvidenceDisputesRequest.new(params).to_h
        non_body_param_names = %w[id]
        body = request_data.except(*non_body_param_names)

        request = Whop_sdk::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "POST",
          path: "disputes/#{URI.encode_uri_component(params[:id].to_s)}/upload_evidence",
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
          Whop_sdk::Types::Dispute.load(response.body)
        else
          error_class = Whop_sdk::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end
    end
  end
end
