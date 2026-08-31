# typed: strong

module WhopSDK
  module Resources
    class AdReports
      # Performance report for a company, ad campaigns, ad groups, or ads. Always
      # returns aggregate `summary` totals summed across the scope. Set `granularity` to
      # additionally get a time series, or set `breakdown` (`campaign`/`ad_group`/`ad`)
      # to additionally get per-entity rows inside the requested scope. Exactly one of
      # `companyId`, `adCampaignIds`, `adGroupIds`, or `adIds` must be provided.
      #
      # Required permissions:
      #
      # - `ad_campaign:stats:read`
      sig do
        params(
          from: Time,
          to: Time,
          ad_campaign_ids: T::Array[String],
          ad_group_ids: T::Array[String],
          ad_ids: T::Array[String],
          breakdown: WhopSDK::AdReportRetrieveParams::Breakdown::OrSymbol,
          company_id: String,
          currency: String,
          granularity: WhopSDK::Granularities::OrSymbol,
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(WhopSDK::Models::AdReportRetrieveResponse)
      end
      def retrieve(
        # Inclusive start of the reporting window.
        from:,
        # Inclusive end of the reporting window.
        to:,
        # Scope the report to these ad campaigns (max 100); stats are summed across them.
        # Mutually exclusive with `companyId`, `adGroupIds`, and `adIds`.
        ad_campaign_ids: nil,
        # Scope the report to these ad groups (max 100); stats are summed across them.
        # Mutually exclusive with `companyId`, `adCampaignIds`, and `adIds`.
        ad_group_ids: nil,
        # Scope the report to these ads (max 100); stats are summed across them. Mutually
        # exclusive with `companyId`, `adCampaignIds`, and `adGroupIds`.
        ad_ids: nil,
        # Entity level to break down the report by. When set, `breakdown` on the response
        # contains one row per entity at the requested level inside the requested scope.
        # `ad` returns one row per ad, `ad_group` per ad group, `campaign` per ad
        # campaign. The breakdown level must be at or below the scope (e.g. `adId` cannot
        # be broken down by `campaign`). The `summary` totals are unaffected.
        breakdown: nil,
        # The unique identifier of a company. Mutually exclusive with `adCampaignIds`,
        # `adGroupIds`, and `adIds`. Use with `breakdown` to fan out across every
        # campaign, ad group, or ad in the company without paging.
        company_id: nil,
        # ISO 4217 currency code to report `spend` in. Defaults to the company's ads
        # reporting currency.
        currency: nil,
        # Bucket grain for the per-bucket `granularity` time series. Omit (`null`) for
        # summary-only. `hourly`/`daily` max 90 days, `weekly` max 366 days, `monthly` max
        # 4 years. The `summary` totals are unaffected. With `breakdown`, each row gets
        # its own series at the same grain.
        granularity: nil,
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
