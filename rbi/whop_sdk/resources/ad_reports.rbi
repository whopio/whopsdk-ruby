# typed: strong

module WhopSDK
  module Resources
    # Ad reports
    class AdReports
      # Performance report for an ad campaign, ad group, or ad. Returns aggregate totals
      # and, when `breakdown` is set, a per-bucket time series at that grain. Exactly
      # one of `adCampaignId`, `adGroupId`, or `adId` must be provided.
      #
      # Required permissions:
      #
      # - `ad_campaign:stats:read`
      sig do
        params(
          from: Time,
          to: Time,
          ad_campaign_id: T.nilable(String),
          ad_group_id: T.nilable(String),
          ad_id: T.nilable(String),
          breakdown:
            T.nilable(WhopSDK::AdReportRetrieveParams::Breakdown::OrSymbol),
          currency: T.nilable(String),
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(WhopSDK::Models::AdReportRetrieveResponse)
      end
      def retrieve(
        # Inclusive start of the reporting window.
        from:,
        # Inclusive end of the reporting window.
        to:,
        # The unique identifier of an ad campaign. Mutually exclusive with `adGroupId` and
        # `adId`.
        ad_campaign_id: nil,
        # The unique identifier of an ad group. Mutually exclusive with `adCampaignId` and
        # `adId`.
        ad_group_id: nil,
        # The unique identifier of an ad. Mutually exclusive with `adCampaignId` and
        # `adGroupId`.
        ad_id: nil,
        # Bucket size for external ad stat rows.
        breakdown: nil,
        # ISO 4217 currency code to report `spend` in. Defaults to the company's ads
        # reporting currency.
        currency: nil,
        request_options: {}
      )
      end

      # @api private
      sig { params(client: WhopSDK::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end
