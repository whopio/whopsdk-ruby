# frozen_string_literal: true

module WhopSDK
  module Resources
    # Ad reports
    class AdReports
      # Some parameter documentations has been truncated, see
      # {WhopSDK::Models::AdReportRetrieveParams} for more details.
      #
      # Performance report for an ad campaign, ad group, or ad. Returns aggregate totals
      # and an optional per-day breakdown. Exactly one of `adCampaignId`, `adGroupId`,
      # or `adId` must be provided.
      #
      # Required permissions:
      #
      # - `ad_campaign:stats:read`
      #
      # @overload retrieve(from:, to:, ad_campaign_id: nil, ad_group_id: nil, ad_id: nil, currency: nil, include_daily: nil, request_options: {})
      #
      # @param from [Time] Inclusive start of the reporting window.
      #
      # @param to [Time] Inclusive end of the reporting window.
      #
      # @param ad_campaign_id [String, nil] The unique identifier of an ad campaign. Mutually exclusive with `adGroupId` and
      #
      # @param ad_group_id [String, nil] The unique identifier of an ad group. Mutually exclusive with `adCampaignId` and
      #
      # @param ad_id [String, nil] The unique identifier of an ad. Mutually exclusive with `adCampaignId` and `adGr
      #
      # @param currency [String, nil] ISO 4217 currency code to report `spend` in. Defaults to the company's ads repor
      #
      # @param include_daily [Boolean, nil] When true, includes a per-day breakdown alongside the summary.
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
