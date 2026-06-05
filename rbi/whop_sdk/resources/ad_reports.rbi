# typed: strong

module WhopSDK
  module Resources
    # Ad reports
    class AdReports
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
      sig do
        params(
          from: Time,
          to: Time,
          ad_campaign_ids: T.nilable(T::Array[String]),
          ad_group_ids: T.nilable(T::Array[String]),
          ad_ids: T.nilable(T::Array[String]),
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
        # Scope the report to these ad campaigns (max 100); stats are summed across them.
        # Mutually exclusive with `companyId`, `adGroupIds`, and `adIds`.
        ad_campaign_ids: nil,
        # Scope the report to these ad groups (max 100); stats are summed across them.
        # Mutually exclusive with `companyId`, `adCampaignIds`, and `adIds`.
        ad_group_ids: nil,
        # Scope the report to these ads (max 100); stats are summed across them. Mutually
        # exclusive with `companyId`, `adCampaignIds`, and `adGroupIds`.
        ad_ids: nil,
        # Entity level to group an ad report by.
        breakdown: nil,
        # The unique identifier of a company. Mutually exclusive with `adCampaignIds`,
        # `adGroupIds`, and `adIds`. Use with `breakdown` to fan out across every
        # campaign, ad group, or ad in the company without paging.
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
