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
      #   The unique identifier of an ad campaign. Mutually exclusive with `adGroupId` and
      #   `adId`.
      #
      #   @return [String, nil]
      optional :ad_campaign_id, String, nil?: true

      # @!attribute ad_group_id
      #   The unique identifier of an ad group. Mutually exclusive with `adCampaignId` and
      #   `adId`.
      #
      #   @return [String, nil]
      optional :ad_group_id, String, nil?: true

      # @!attribute ad_id
      #   The unique identifier of an ad. Mutually exclusive with `adCampaignId` and
      #   `adGroupId`.
      #
      #   @return [String, nil]
      optional :ad_id, String, nil?: true

      # @!attribute breakdown
      #   Bucket size for external ad stat rows.
      #
      #   @return [Symbol, WhopSDK::Models::Granularities, nil]
      optional :breakdown, enum: -> { WhopSDK::Granularities }, nil?: true

      # @!attribute currency
      #   ISO 4217 currency code to report `spend` in. Defaults to the company's ads
      #   reporting currency.
      #
      #   @return [String, nil]
      optional :currency, String, nil?: true

      # @!method initialize(from:, to:, ad_campaign_id: nil, ad_group_id: nil, ad_id: nil, breakdown: nil, currency: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {WhopSDK::Models::AdReportRetrieveParams} for more details.
      #
      #   @param from [Time] Inclusive start of the reporting window.
      #
      #   @param to [Time] Inclusive end of the reporting window.
      #
      #   @param ad_campaign_id [String, nil] The unique identifier of an ad campaign. Mutually exclusive with `adGroupId` and
      #
      #   @param ad_group_id [String, nil] The unique identifier of an ad group. Mutually exclusive with `adCampaignId` and
      #
      #   @param ad_id [String, nil] The unique identifier of an ad. Mutually exclusive with `adCampaignId` and `adGr
      #
      #   @param breakdown [Symbol, WhopSDK::Models::Granularities, nil] Bucket size for external ad stat rows.
      #
      #   @param currency [String, nil] ISO 4217 currency code to report `spend` in. Defaults to the company's ads repor
      #
      #   @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
