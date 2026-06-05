# frozen_string_literal: true

module WhopSDK
  module Resources
    # Ad reports
    class AdReports
      # Some parameter documentations has been truncated, see
      # {WhopSDK::Models::AdReportRetrieveParams} for more details.
      #
      # Performance report for a company, ad campaigns, ad groups, or ads. Always
      # returns aggregate `summary` totals summed across the scope. Set `granularity`
      # (`daily`/`hourly`) to additionally get a time series, or set `breakdown`
      # (`campaign`/`ad_group`/`ad`) to additionally get per-entity rows inside the
      # requested scope. Exactly one of `companyId`, `adCampaignIds`, `adGroupIds`, or
      # `adIds` must be provided.
      #
      # Required permissions:
      #
      # - `ad_campaign:stats:read`
      #
      # @overload retrieve(from:, to:, ad_campaign_ids: nil, ad_group_ids: nil, ad_ids: nil, breakdown: nil, company_id: nil, currency: nil, granularity: nil, request_options: {})
      #
      # @param from [Time] Inclusive start of the reporting window.
      #
      # @param to [Time] Inclusive end of the reporting window.
      #
      # @param ad_campaign_ids [Array<String>, nil] Scope the report to these ad campaigns (max 100); stats are summed across them.
      #
      # @param ad_group_ids [Array<String>, nil] Scope the report to these ad groups (max 100); stats are summed across them. Mut
      #
      # @param ad_ids [Array<String>, nil] Scope the report to these ads (max 100); stats are summed across them. Mutually
      #
      # @param breakdown [Symbol, WhopSDK::Models::AdReportRetrieveParams::Breakdown, nil] Entity level to group an ad report by.
      #
      # @param company_id [String, nil] The unique identifier of a company. Mutually exclusive with `adCampaignIds`, `ad
      #
      # @param currency [String, nil] ISO 4217 currency code to report `spend` in. Defaults to the company's ads repor
      #
      # @param granularity [Symbol, WhopSDK::Models::Granularities, nil] Bucket size for external ad stat rows.
      #
      # @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [WhopSDK::Models::AdReportRetrieveResponse]
      #
      # @see WhopSDK::Models::AdReportRetrieveParams
      def retrieve(params)
        parsed, options = WhopSDK::AdReportRetrieveParams.dump_request(params)
        query = WhopSDK::Internal::Util.encode_query_params(parsed)
        @client.request(
          method: :get,
          path: "ad_reports",
          query: query,
          model: WhopSDK::Models::AdReportRetrieveResponse,
          options: options
        )
      end

      # @api private
      #
      # @param client [WhopSDK::Client]
      def initialize(client:)
        @client = client
      end
    end
  end
end
