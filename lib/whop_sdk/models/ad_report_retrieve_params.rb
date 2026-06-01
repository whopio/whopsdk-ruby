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

      # @!attribute ad_campaign_id
      #   The unique identifier of an ad campaign. Mutually exclusive with `companyId`,
      #   `adGroupId`, and `adId`.
      #
      #   @return [String, nil]
      optional :ad_campaign_id, String, nil?: true

      # @!attribute ad_group_id
      #   The unique identifier of an ad group. Mutually exclusive with `companyId`,
      #   `adCampaignId`, and `adId`.
      #
      #   @return [String, nil]
      optional :ad_group_id, String, nil?: true

      # @!attribute ad_id
      #   The unique identifier of an ad. Mutually exclusive with `companyId`,
      #   `adCampaignId`, and `adGroupId`.
      #
      #   @return [String, nil]
      optional :ad_id, String, nil?: true

      # @!attribute breakdown
      #   Entity level to group an ad report by.
      #
      #   @return [Symbol, WhopSDK::Models::AdReportRetrieveParams::Breakdown, nil]
      optional :breakdown, enum: -> { WhopSDK::AdReportRetrieveParams::Breakdown }, nil?: true

      # @!attribute company_id
      #   The unique identifier of a company. Mutually exclusive with `adCampaignId`,
      #   `adGroupId`, and `adId`. Use with `breakdown` to fan out across every campaign,
      #   ad group, or ad in the company without paging.
      #
      #   @return [String, nil]
      optional :company_id, String, nil?: true

      # @!attribute currency
      #   ISO 4217 currency code to report `spend` in. Defaults to the company's ads
      #   reporting currency.
      #
      #   @return [String, nil]
      optional :currency, String, nil?: true

      # @!attribute granularity
      #   Bucket size for external ad stat rows.
      #
      #   @return [Symbol, WhopSDK::Models::Granularities, nil]
      optional :granularity, enum: -> { WhopSDK::Granularities }, nil?: true

      # @!method initialize(from:, to:, ad_campaign_id: nil, ad_group_id: nil, ad_id: nil, breakdown: nil, company_id: nil, currency: nil, granularity: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {WhopSDK::Models::AdReportRetrieveParams} for more details.
      #
      #   @param from [Time] Inclusive start of the reporting window.
      #
      #   @param to [Time] Inclusive end of the reporting window.
      #
      #   @param ad_campaign_id [String, nil] The unique identifier of an ad campaign. Mutually exclusive with `companyId`, `a
      #
      #   @param ad_group_id [String, nil] The unique identifier of an ad group. Mutually exclusive with `companyId`, `adCa
      #
      #   @param ad_id [String, nil] The unique identifier of an ad. Mutually exclusive with `companyId`, `adCampaign
      #
      #   @param breakdown [Symbol, WhopSDK::Models::AdReportRetrieveParams::Breakdown, nil] Entity level to group an ad report by.
      #
      #   @param company_id [String, nil] The unique identifier of a company. Mutually exclusive with `adCampaignId`, `adG
      #
      #   @param currency [String, nil] ISO 4217 currency code to report `spend` in. Defaults to the company's ads repor
      #
      #   @param granularity [Symbol, WhopSDK::Models::Granularities, nil] Bucket size for external ad stat rows.
      #
      #   @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}]

      # Entity level to group an ad report by.
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
