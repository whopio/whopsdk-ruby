# frozen_string_literal: true

module Whop_sdk
  module FinancialReports
    class Client
      # @param client [Whop_sdk::Internal::Http::RawClient]
      #
      # @return [void]
      def initialize(client:)
        @client = client
      end

      # Returns a financial report — balance activity, income statement, or balance summary — for an account over a date
      # range.
      #
      # @param request_options [Hash]
      # @param params [Hash]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [String] :account_id
      # @option params [Whop_sdk::FinancialReports::Types::RetrieveFinancialReportsRequestReportType] :report_type
      # @option params [String, nil] :currency
      # @option params [String, nil] :in_currency
      # @option params [String, nil] :from_date
      # @option params [String, nil] :to_date
      # @option params [Whop_sdk::FinancialReports::Types::RetrieveFinancialReportsRequestGroupBy, nil] :group_by
      # @option params [String, nil] :timezone
      # @option params [Whop_sdk::FinancialReports::Types::RetrieveFinancialReportsRequestLineTypesItem, nil] :line_types
      # @option params [Whop_sdk::FinancialReports::Types::RetrieveFinancialReportsRequestDirection, nil] :direction
      # @option params [Boolean, nil] :cumulative
      # @option params [String, nil] :scope_account_id
      # @option params [Boolean, nil] :include_payment_fee_breakdown
      #
      # @example
      #   client.financial_reports.retrieve(
      #     account_id: "account_id",
      #     report_type: "balance_summary"
      #   )
      #
      # @return [Whop_sdk::FinancialReports::Types::RetrieveFinancialReportsResponse]
      def retrieve(request_options: {}, **params)
        params = Whop_sdk::Internal::Types::Utils.normalize_keys(params)
        query_params = {}
        query_params["account_id"] = params[:account_id] if params.key?(:account_id)
        query_params["report_type"] = params[:report_type] if params.key?(:report_type)
        query_params["currency"] = params[:currency] if params.key?(:currency)
        query_params["in_currency"] = params[:in_currency] if params.key?(:in_currency)
        query_params["from_date"] = params[:from_date] if params.key?(:from_date)
        query_params["to_date"] = params[:to_date] if params.key?(:to_date)
        query_params["group_by"] = params[:group_by] if params.key?(:group_by)
        query_params["timezone"] = params[:timezone] if params.key?(:timezone)
        query_params["line_types"] = params[:line_types] if params.key?(:line_types)
        query_params["direction"] = params[:direction] if params.key?(:direction)
        query_params["cumulative"] = params[:cumulative] if params.key?(:cumulative)
        query_params["scope_account_id"] = params[:scope_account_id] if params.key?(:scope_account_id)
        query_params["include_payment_fee_breakdown"] = params[:include_payment_fee_breakdown] if params.key?(:include_payment_fee_breakdown)

        request = Whop_sdk::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "GET",
          path: "financial_reports",
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
          Whop_sdk::FinancialReports::Types::RetrieveFinancialReportsResponse.load(response.body)
        else
          error_class = Whop_sdk::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end
    end
  end
end
