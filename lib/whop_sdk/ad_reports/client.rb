# frozen_string_literal: true

module Whop_sdk
  module AdReports
    class Client
      # @param client [Whop_sdk::Internal::Http::RawClient]
      #
      # @return [void]
      def initialize(client:)
        @client = client
      end

      # Performance report for a company, ad campaigns, ad groups, or ads. Always returns aggregate `summary` totals
      # summed across the scope. Set `granularity` to additionally get a time series, or set `breakdown`
      # (`campaign`/`ad_group`/`ad`) to additionally get per-entity rows inside the requested scope. Exactly one of
      # `companyId`, `adCampaignIds`, `adGroupIds`, or `adIds` must be provided.
      #
      # Required permissions:
      #  - `ad_campaign:stats:read`
      #
      # @param request_options [Hash]
      # @param params [Hash]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [String, nil] :ad_campaign_ids
      # @option params [String, nil] :ad_group_ids
      # @option params [String, nil] :ad_ids
      # @option params [Whop_sdk::Types::AdReportBreakdownLevels, nil] :breakdown
      # @option params [String, nil] :company_id
      # @option params [String, nil] :currency
      # @option params [String] :from
      # @option params [Whop_sdk::Types::Granularities, nil] :granularity
      # @option params [String] :to
      #
      # @example
      #   client.ad_reports.retrieve(
      #     company_id: "biz_xxxxxxxxxxxxxx",
      #     from: "2023-12-01T05:00:00Z",
      #     to: "2023-12-01T05:00:00Z"
      #   )
      #
      # @return [Whop_sdk::Types::AdReport]
      def retrieve(request_options: {}, **params)
        params = Whop_sdk::Internal::Types::Utils.normalize_keys(params)
        query_params = {}
        query_params["ad_campaign_ids"] = params[:ad_campaign_ids] if params.key?(:ad_campaign_ids)
        query_params["ad_group_ids"] = params[:ad_group_ids] if params.key?(:ad_group_ids)
        query_params["ad_ids"] = params[:ad_ids] if params.key?(:ad_ids)
        query_params["breakdown"] = params[:breakdown] if params.key?(:breakdown)
        query_params["company_id"] = params[:company_id] if params.key?(:company_id)
        query_params["currency"] = params[:currency] if params.key?(:currency)
        query_params["from"] = params[:from] if params.key?(:from)
        query_params["granularity"] = params[:granularity] if params.key?(:granularity)
        query_params["to"] = params[:to] if params.key?(:to)

        request = Whop_sdk::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "GET",
          path: "ad_reports",
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
          Whop_sdk::Types::AdReport.load(response.body)
        else
          error_class = Whop_sdk::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end
    end
  end
end
