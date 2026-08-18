# frozen_string_literal: true

module WhopSDK
  module Models
    # @see WhopSDK::Resources::AdReports#retrieve
    class AdReportRetrieveParams < WhopSDK::Internal::Type::BaseModel
      extend WhopSDK::Internal::Type::RequestParameters::Converter
      include WhopSDK::Internal::Type::RequestParameters

      # @!attribute from
      #   Inclusive start of the reporting window.
      #
      #   @return [Time]
      required :from, Time

      # @!attribute to
      #   Inclusive end of the reporting window.
      #
      #   @return [Time]
      required :to, Time

      # @!attribute ad_campaign_ids
      #   Scope the report to these ad campaigns (max 100); stats are summed across them.
      #   Mutually exclusive with `companyId`, `adGroupIds`, and `adIds`.
      #
      #   @return [Array<String>, nil]
      optional :ad_campaign_ids, WhopSDK::Internal::Type::ArrayOf[String]

      # @!attribute ad_group_ids
      #   Scope the report to these ad groups (max 100); stats are summed across them.
      #   Mutually exclusive with `companyId`, `adCampaignIds`, and `adIds`.
      #
      #   @return [Array<String>, nil]
      optional :ad_group_ids, WhopSDK::Internal::Type::ArrayOf[String]

      # @!attribute ad_ids
      #   Scope the report to these ads (max 100); stats are summed across them. Mutually
      #   exclusive with `companyId`, `adCampaignIds`, and `adGroupIds`.
      #
      #   @return [Array<String>, nil]
      optional :ad_ids, WhopSDK::Internal::Type::ArrayOf[String]

      # @!attribute breakdown
      #   Entity level to break down the report by. When set, `breakdown` on the response
      #   contains one row per entity at the requested level inside the requested scope.
      #   `ad` returns one row per ad, `ad_group` per ad group, `campaign` per ad
      #   campaign. The breakdown level must be at or below the scope (e.g. `adId` cannot
      #   be broken down by `campaign`). The `summary` totals are unaffected.
      #
      #   @return [Symbol, WhopSDK::Models::AdReportRetrieveParams::Breakdown, nil]
      optional :breakdown, enum: -> { WhopSDK::AdReportRetrieveParams::Breakdown }

      # @!attribute company_id
      #   The unique identifier of a company. Mutually exclusive with `adCampaignIds`,
      #   `adGroupIds`, and `adIds`. Use with `breakdown` to fan out across every
      #   campaign, ad group, or ad in the company without paging.
      #
      #   @return [String, nil]
      optional :company_id, String

      # @!attribute currency
      #   ISO 4217 currency code to report `spend` in. Defaults to the company's ads
      #   reporting currency.
      #
      #   @return [String, nil]
      optional :currency, String

      # @!attribute granularity
      #   Bucket grain for the per-bucket `granularity` time series. Omit (`null`) for
      #   summary-only. `hourly`/`daily` max 90 days, `weekly` max 366 days, `monthly` max
      #   4 years. The `summary` totals are unaffected. With `breakdown`, each row gets
      #   its own series at the same grain.
      #
      #   @return [Symbol, WhopSDK::Models::Granularities, nil]
      optional :granularity, enum: -> { WhopSDK::Granularities }

      # @!method initialize(from:, to:, ad_campaign_ids: nil, ad_group_ids: nil, ad_ids: nil, breakdown: nil, company_id: nil, currency: nil, granularity: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {WhopSDK::Models::AdReportRetrieveParams} for more details.
      #
      #   @param from [Time] Inclusive start of the reporting window.
      #
      #   @param to [Time] Inclusive end of the reporting window.
      #
      #   @param ad_campaign_ids [Array<String>] Scope the report to these ad campaigns (max 100); stats are summed across them.
      #
      #   @param ad_group_ids [Array<String>] Scope the report to these ad groups (max 100); stats are summed across them. Mut
      #
      #   @param ad_ids [Array<String>] Scope the report to these ads (max 100); stats are summed across them. Mutually
      #
      #   @param breakdown [Symbol, WhopSDK::Models::AdReportRetrieveParams::Breakdown] Entity level to break down the report by. When set, `breakdown` on the response
      #
      #   @param company_id [String] The unique identifier of a company. Mutually exclusive with `adCampaignIds`, `ad
      #
      #   @param currency [String] ISO 4217 currency code to report `spend` in. Defaults to the company's ads repor
      #
      #   @param granularity [Symbol, WhopSDK::Models::Granularities] Bucket grain for the per-bucket `granularity` time series. Omit (`null`) for sum
      #
      #   @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}]

      # Entity level to break down the report by. When set, `breakdown` on the response
      # contains one row per entity at the requested level inside the requested scope.
      # `ad` returns one row per ad, `ad_group` per ad group, `campaign` per ad
      # campaign. The breakdown level must be at or below the scope (e.g. `adId` cannot
      # be broken down by `campaign`). The `summary` totals are unaffected.
      module Breakdown
        extend WhopSDK::Internal::Type::Enum

        CAMPAIGN = :campaign
        AD_GROUP = :ad_group
        AD = :ad

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
