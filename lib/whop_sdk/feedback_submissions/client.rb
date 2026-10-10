# frozen_string_literal: true

module Whop_sdk
  module FeedbackSubmissions
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

      # Submits an issue or an unanswered question to Whop for review, recorded under the authenticated user, account,
      # or app. Returns a receipt once the submission is accepted; processing is asynchronous and no reply is sent.
      #
      # @param request_options [Hash]
      # @param params [Whop_sdk::FeedbackSubmissions::Types::CreateFeedbackSubmissionsRequest]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      #
      # @example
      #   client.feedback_submissions.create(
      #     content: "The docs omit the required permission",
      #     source: "mcp_report_feedback"
      #   )
      #
      # @return [Whop_sdk::FeedbackSubmissions::Types::CreateFeedbackSubmissionsResponse]
      def create(request_options: {}, **params)
        params = Whop_sdk::Internal::Types::Utils.normalize_keys(params)
        request = Whop_sdk::Internal::JSON::Request.new(
          base_url: request_options[:base_url] || @base_url || @environment&.dig(:api),
          method: "POST",
          path: "feedback_submissions",
          body: Whop_sdk::FeedbackSubmissions::Types::CreateFeedbackSubmissionsRequest.new(params).to_h,
          request_options: request_options
        )
        begin
          response = @client.send(request)
        rescue Net::HTTPRequestTimeout
          raise Whop_sdk::Errors::TimeoutError
        end
        code = response.code.to_i
        if code.between?(200, 299)
          (response.body.to_s.empty? ? nil : Whop_sdk::FeedbackSubmissions::Types::CreateFeedbackSubmissionsResponse.load(response.body))
        else
          error_class = Whop_sdk::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end
    end
  end
end
