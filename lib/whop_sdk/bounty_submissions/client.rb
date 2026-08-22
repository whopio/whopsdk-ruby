# frozen_string_literal: true

module Whop_sdk
  module BountySubmissions
    class Client
      # @param client [Whop_sdk::Internal::Http::RawClient]
      #
      # @return [void]
      def initialize(client:)
        @client = client
      end

      # Lists bounty submissions visible to the credential — for a user token, the submissions they authored plus those
      # on bounties they posted; for an account API key, the submissions on the account's bounties. For the anonymous
      # view of one bounty's reviewed work, use the submissions list under the bounty instead.
      #
      # @param request_options [Hash]
      # @param params [Hash]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [String, nil] :account_id
      # @option params [String, nil] :bounty_id
      # @option params [Whop_sdk::BountySubmissions::Types::ListBountySubmissionsRequestStatus, nil] :status
      # @option params [String, nil] :created_after
      # @option params [String, nil] :created_before
      # @option params [Whop_sdk::BountySubmissions::Types::ListBountySubmissionsRequestOrder, nil] :order
      # @option params [Whop_sdk::BountySubmissions::Types::ListBountySubmissionsRequestDirection, nil] :direction
      # @option params [Integer, nil] :first
      # @option params [String, nil] :after
      # @option params [Integer, nil] :last
      # @option params [String, nil] :before
      #
      # @example
      #   client.bounty_submissions.list
      #
      # @return [Whop_sdk::BountySubmissions::Types::ListBountySubmissionsResponse]
      def list(request_options: {}, **params)
        params = Whop_sdk::Internal::Types::Utils.normalize_keys(params)
        query_params = {}
        query_params["account_id"] = params[:account_id] if params.key?(:account_id)
        query_params["bounty_id"] = params[:bounty_id] if params.key?(:bounty_id)
        query_params["status"] = params[:status] if params.key?(:status)
        query_params["created_after"] = params[:created_after] if params.key?(:created_after)
        query_params["created_before"] = params[:created_before] if params.key?(:created_before)
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
            path: "bounty_submissions",
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
            parsed_response = Whop_sdk::BountySubmissions::Types::ListBountySubmissionsResponse.load(response.body)
            [parsed_response, response]
          else
            error_class = Whop_sdk::Errors::ResponseError.subclass_for_code(code)
            raise error_class.new(response.body, code: code)
          end
        end
      end

      # Creates a submission on a workforce bounty. Include a `deliverable` payload — any combination of links and
      # uploaded files, with at least one of the two — and the submission goes straight to review; create is the only
      # step. For `data_capture` bounties, omit the deliverable: this starts a claimed attempt whose proof accumulates
      # server-side, and the separate submit endpoint sends it to review once complete. Requires a user credential —
      # account API keys cannot author submissions.
      #
      # @param request_options [Hash]
      # @param params [Whop_sdk::BountySubmissions::Types::CreateBountySubmissionsRequest]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      #
      # @example
      #   client.bounty_submissions.create(bounty_id: "bnty_xxxxxxxxxxxxxx")
      #
      # @return [Whop_sdk::Types::BountySubmission]
      def create(request_options: {}, **params)
        params = Whop_sdk::Internal::Types::Utils.normalize_keys(params)
        request = Whop_sdk::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "POST",
          path: "bounty_submissions",
          body: Whop_sdk::BountySubmissions::Types::CreateBountySubmissionsRequest.new(params).to_h,
          request_options: request_options
        )
        begin
          response = @client.send(request)
        rescue Net::HTTPRequestTimeout
          raise Whop_sdk::Errors::TimeoutError
        end
        code = response.code.to_i
        if code.between?(200, 299)
          Whop_sdk::Types::BountySubmission.load(response.body)
        else
          error_class = Whop_sdk::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # Retrieves one bounty submission the credential can see — one the caller authored, or one on a bounty they posted
      # or their account owns. Reading another member's work on an account's bounty takes `account_id`, the same way the
      # list does.
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
      #
      # @example
      #   client.bounty_submissions.retrieve(id: "id")
      #
      # @return [Whop_sdk::Types::BountySubmission]
      def retrieve(request_options: {}, **params)
        params = Whop_sdk::Internal::Types::Utils.normalize_keys(params)
        query_params = {}
        query_params["account_id"] = params[:account_id] if params.key?(:account_id)

        request = Whop_sdk::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "GET",
          path: "bounty_submissions/#{URI.encode_uri_component(params[:id].to_s)}",
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
          Whop_sdk::Types::BountySubmission.load(response.body)
        else
          error_class = Whop_sdk::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # Cancels the caller's own active attempt on a bounty and discards any accumulated capture clips. Only the worker
      # who started the attempt can cancel it — account API keys cannot.
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
      #   client.bounty_submissions.delete(id: "id")
      #
      # @return [Whop_sdk::BountySubmissions::Types::DeleteBountySubmissionsResponse]
      def delete(request_options: {}, **params)
        params = Whop_sdk::Internal::Types::Utils.normalize_keys(params)
        request = Whop_sdk::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "DELETE",
          path: "bounty_submissions/#{URI.encode_uri_component(params[:id].to_s)}",
          request_options: request_options
        )
        begin
          response = @client.send(request)
        rescue Net::HTTPRequestTimeout
          raise Whop_sdk::Errors::TimeoutError
        end
        code = response.code.to_i
        if code.between?(200, 299)
          Whop_sdk::BountySubmissions::Types::DeleteBountySubmissionsResponse.load(response.body)
        else
          error_class = Whop_sdk::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # Submits a claimed attempt for review. A livestream attempt needs an ended proof stream and can attach an
      # optional `deliverable` — links, files, and a caption in any combination; if the attempt already went to review
      # when its stream ended, the payload attaches to it once, until reviewers start voting. A data capture attempt
      # instead needs enough validated clip time and takes no payload. Only the worker who started the attempt can
      # submit it — account API keys cannot.
      #
      # @param request_options [Hash]
      # @param params [Whop_sdk::BountySubmissions::Types::SubmitBountySubmissionsRequest]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [String] :id
      #
      # @example
      #   client.bounty_submissions.submit(id: "id")
      #
      # @return [Whop_sdk::Types::BountySubmission]
      def submit(request_options: {}, **params)
        params = Whop_sdk::Internal::Types::Utils.normalize_keys(params)
        request_data = Whop_sdk::BountySubmissions::Types::SubmitBountySubmissionsRequest.new(params).to_h
        non_body_param_names = %w[id]
        body = request_data.except(*non_body_param_names)

        request = Whop_sdk::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "POST",
          path: "bounty_submissions/#{URI.encode_uri_component(params[:id].to_s)}/submit",
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
          Whop_sdk::Types::BountySubmission.load(response.body)
        else
          error_class = Whop_sdk::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end
    end
  end
end
