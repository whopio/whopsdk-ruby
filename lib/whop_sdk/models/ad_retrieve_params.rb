# frozen_string_literal: true

module WhopSDK
  module Models
    # @see WhopSDK::Resources::Ads#retrieve
    class AdRetrieveParams < WhopSDK::Internal::Type::BaseModel
      extend WhopSDK::Internal::Type::RequestParameters::Converter
      include WhopSDK::Internal::Type::RequestParameters

      # @!attribute id
      #
      #   @return [String]
      required :id, String

      # @!attribute stats_from
      #   Inclusive start of the window for the ad's metric fields (spend, impressions,
      #   …). Omit both statsFrom and statsTo for all-time stats.
      #
      #   @return [Time, nil]
      optional :stats_from, Time, nil?: true

      # @!attribute stats_to
      #   Inclusive end of the window for the ad's metric fields. Omit both statsFrom and
      #   statsTo for all-time stats.
      #
      #   @return [Time, nil]
      optional :stats_to, Time, nil?: true

      # @!method initialize(id:, stats_from: nil, stats_to: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {WhopSDK::Models::AdRetrieveParams} for more details.
      #
      #   @param id [String]
      #
      #   @param stats_from [Time, nil] Inclusive start of the window for the ad's metric fields (spend, impressions, …)
      #
      #   @param stats_to [Time, nil] Inclusive end of the window for the ad's metric fields. Omit both statsFrom and
      #
      #   @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
