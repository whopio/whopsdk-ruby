# frozen_string_literal: true

module Whop_sdk
  module FinancialReports
    module Breakdown
      class Client
        # @param client [Whop_sdk::Internal::Http::RawClient]
        #
        # @return [void]
        def initialize(client:)
          @client = client
        end

        # Returns the top entities behind one high-level financial report bucket and an aggregate remainder.
        #
        # @param request_options [Hash]
        # @param params [Hash]
        # @option request_options [String] :base_url
        # @option request_options [Hash{String => Object}] :additional_headers
        # @option request_options [Hash{String => Object}] :additional_query_parameters
        # @option request_options [Hash{String => Object}] :additional_body_parameters
        # @option request_options [Integer] :timeout_in_seconds
        # @option params [String] :account_id
        # @option params [Whop_sdk::FinancialReports::Breakdown::Types::RetrieveBreakdownRequestBucket] :bucket
        # @option params [Whop_sdk::FinancialReports::Breakdown::Types::RetrieveBreakdownRequestDirection] :direction
        # @option params [String] :currency
        # @option params [String] :from
        # @option params [String] :to
        # @option params [Whop_sdk::FinancialReports::Breakdown::Types::RetrieveBreakdownRequestGroupBy, nil] :group_by
        # @option params [String, nil] :timezone
        #
        # @example
        #   client.financial_reports.breakdown.retrieve(
        #     account_id: "account_id",
        #     bucket: "transfers",
        #     direction: "money_in",
        #     currency: "currency",
        #     from: "2024-01-15T09:30:00Z",
        #     to: "2024-01-15T09:30:00Z"
        #   )
        #
        # @return [Whop_sdk::FinancialReports::Breakdown::Types::RetrieveBreakdownResponse]
        def retrieve(request_options: {}, **params)
          params = Whop_sdk::Internal::Types::Utils.normalize_keys(params)
          query_params = {}
          query_params["account_id"] = params[:account_id] if params.key?(:account_id)
          query_params["bucket"] = params[:bucket] if params.key?(:bucket)
          query_params["direction"] = params[:direction] if params.key?(:direction)
          query_params["currency"] = params[:currency] if params.key?(:currency)
          query_params["from"] = params[:from] if params.key?(:from)
          query_params["to"] = params[:to] if params.key?(:to)
          query_params["group_by"] = params[:group_by] if params.key?(:group_by)
          query_params["timezone"] = params[:timezone] if params.key?(:timezone)

          request = Whop_sdk::Internal::JSON::Request.new(
            base_url: request_options[:base_url],
            method: "GET",
            path: "financial_reports/breakdown",
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
            Whop_sdk::FinancialReports::Breakdown::Types::RetrieveBreakdownResponse.load(response.body)
          else
            error_class = Whop_sdk::Errors::ResponseError.subclass_for_code(code)
            raise error_class.new(response.body, code: code)
          end
        end
      end
    end
  end
end
