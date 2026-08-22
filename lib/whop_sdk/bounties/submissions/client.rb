# frozen_string_literal: true

module Whop_sdk
  module Bounties
    module Submissions
      class Client
        # @param client [Whop_sdk::Internal::Http::RawClient]
        #
        # @return [void]
        def initialize(client:)
          @client = client
        end

        # Lists a bounty's publicly visible work — submitted, approved, and denied submissions in the reduced public
        # shape. Authentication is optional; a bounty that is not publicly visible returns `404`.
        #
        # @param request_options [Hash]
        # @param params [Hash]
        # @option request_options [String] :base_url
        # @option request_options [Hash{String => Object}] :additional_headers
        # @option request_options [Hash{String => Object}] :additional_query_parameters
        # @option request_options [Hash{String => Object}] :additional_body_parameters
        # @option request_options [Integer] :timeout_in_seconds
        # @option params [String] :bounty_id
        # @option params [Whop_sdk::Bounties::Submissions::Types::ListSubmissionsRequestStatus, nil] :status
        # @option params [String, nil] :created_after
        # @option params [String, nil] :created_before
        # @option params [Whop_sdk::Bounties::Submissions::Types::ListSubmissionsRequestOrder, nil] :order
        # @option params [Whop_sdk::Bounties::Submissions::Types::ListSubmissionsRequestDirection, nil] :direction
        # @option params [Integer, nil] :first
        # @option params [String, nil] :after
        # @option params [Integer, nil] :last
        # @option params [String, nil] :before
        #
        # @example
        #   client.bounties.submissions.list(bounty_id: "bounty_id")
        #
        # @return [Whop_sdk::Bounties::Submissions::Types::ListSubmissionsResponse]
        def list(request_options: {}, **params)
          params = Whop_sdk::Internal::Types::Utils.normalize_keys(params)
          query_params = {}
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
              path: "bounties/#{URI.encode_uri_component(params[:bounty_id].to_s)}/submissions",
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
              parsed_response = Whop_sdk::Bounties::Submissions::Types::ListSubmissionsResponse.load(response.body)
              [parsed_response, response]
            else
              error_class = Whop_sdk::Errors::ResponseError.subclass_for_code(code)
              raise error_class.new(response.body, code: code)
            end
          end
        end

        # Retrieves one of a bounty's publicly visible submissions in the reduced public shape — the read behind a
        # shared proof link, whose submission is usually outside the bounty page's capped preview. Authentication is
        # optional; a bounty that is not publicly visible, and a submission that is not publicly visible work on it,
        # both return `404`.
        #
        # @param request_options [Hash]
        # @param params [Hash]
        # @option request_options [String] :base_url
        # @option request_options [Hash{String => Object}] :additional_headers
        # @option request_options [Hash{String => Object}] :additional_query_parameters
        # @option request_options [Hash{String => Object}] :additional_body_parameters
        # @option request_options [Integer] :timeout_in_seconds
        # @option params [String] :bounty_id
        # @option params [String] :id
        #
        # @example
        #   client.bounties.submissions.retrieve(
        #     bounty_id: "bounty_id",
        #     id: "id"
        #   )
        #
        # @return [Whop_sdk::Types::PublicBountySubmission]
        def retrieve(request_options: {}, **params)
          params = Whop_sdk::Internal::Types::Utils.normalize_keys(params)
          request = Whop_sdk::Internal::JSON::Request.new(
            base_url: request_options[:base_url],
            method: "GET",
            path: "bounties/#{URI.encode_uri_component(params[:bounty_id].to_s)}/submissions/#{URI.encode_uri_component(params[:id].to_s)}",
            request_options: request_options
          )
          begin
            response = @client.send(request)
          rescue Net::HTTPRequestTimeout
            raise Whop_sdk::Errors::TimeoutError
          end
          code = response.code.to_i
          if code.between?(200, 299)
            Whop_sdk::Types::PublicBountySubmission.load(response.body)
          else
            error_class = Whop_sdk::Errors::ResponseError.subclass_for_code(code)
            raise error_class.new(response.body, code: code)
          end
        end
      end
    end
  end
end
