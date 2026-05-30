# typed: strong

module WhopSDK
  module Resources
    # Ad reports
    class AdReports
      # Performance report for a company, ad campaign, ad group, or ad. Always returns
      # aggregate `summary` totals. Set `granularity` (`daily`/`hourly`) to additionally
      # get a time series, or set `breakdown` (`campaign`/`ad_group`/`ad`) to
      # additionally get per-entity rows inside the requested scope. Exactly one of
      # `companyId`, `adCampaignId`, `adGroupId`, or `adId` must be provided.
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
          company_id: T.nilable(String),
          currency: T.nilable(String),
          granularity: T.nilable(WhopSDK::Granularities::OrSymbol),
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(WhopSDK::Models::AdReportRetrieveResponse)
      end
      def retrieve(
        # Inclusive start of the reporting window.
        from:,
        # Inclusive end of the reporting window.
        to:,
        # The unique identifier of an ad campaign. Mutually exclusive with `companyId`,
        # `adGroupId`, and `adId`.
        ad_campaign_id: nil,
        # The unique identifier of an ad group. Mutually exclusive with `companyId`,
        # `adCampaignId`, and `adId`.
        ad_group_id: nil,
        # The unique identifier of an ad. Mutually exclusive with `companyId`,
        # `adCampaignId`, and `adGroupId`.
        ad_id: nil,
        # Entity level to group an ad report by.
        breakdown: nil,
        # The unique identifier of a company. Mutually exclusive with `adCampaignId`,
        # `adGroupId`, and `adId`. Use with `breakdown` to fan out across every campaign,
        # ad group, or ad in the company without paging.
        company_id: nil,
        # ISO 4217 currency code to report `spend` in. Defaults to the company's ads
        # reporting currency.
        currency: nil,
        # Bucket size for external ad stat rows.
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
