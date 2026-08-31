# frozen_string_literal: true

module WhopSDK
  module Models
    # @see WhopSDK::Resources::AdCampaigns#retrieve
    class AdCampaignRetrieveParams < WhopSDK::Internal::Type::BaseModel
      extend WhopSDK::Internal::Type::RequestParameters::Converter
      include WhopSDK::Internal::Type::RequestParameters

      # @!attribute id
      #
      #   @return [String]
      required :id, String

      # @!attribute attribution_model
      #   Attribution model the conversion stats count under (defaults to last_touch).
      #   Under both models a journey with any whop ad touch attributes to whop; the model
      #   picks which whop touch credits the entity and which non-whop source wins
      #   otherwise.
      #
      #   @return [Symbol, WhopSDK::Models::AdCampaignRetrieveParams::AttributionModel, nil]
      optional :attribution_model, enum: -> { WhopSDK::AdCampaignRetrieveParams::AttributionModel }

      # @!attribute stats_from
      #   Start of the stats window.
      #
      #   @return [String, nil]
      optional :stats_from, String

      # @!attribute stats_to
      #   End of the stats window.
      #
      #   @return [String, nil]
      optional :stats_to, String

      # @!attribute time_zone
      #   IANA timezone the stats window is interpreted in. Defaults to UTC.
      #
      #   @return [String, nil]
      optional :time_zone, String

      # @!attribute api_version_date
      #
      #   @return [String, nil]
      optional :api_version_date, String

      # @!method initialize(id:, attribution_model: nil, stats_from: nil, stats_to: nil, time_zone: nil, api_version_date: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {WhopSDK::Models::AdCampaignRetrieveParams} for more details.
      #
      #   @param id [String]
      #
      #   @param attribution_model [Symbol, WhopSDK::Models::AdCampaignRetrieveParams::AttributionModel] Attribution model the conversion stats count under (defaults to last_touch). Und
      #
      #   @param stats_from [String] Start of the stats window.
      #
      #   @param stats_to [String] End of the stats window.
      #
      #   @param time_zone [String] IANA timezone the stats window is interpreted in. Defaults to UTC.
      #
      #   @param api_version_date [String]
      #
      #   @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}]

      # Attribution model the conversion stats count under (defaults to last_touch).
      # Under both models a journey with any whop ad touch attributes to whop; the model
      # picks which whop touch credits the entity and which non-whop source wins
      # otherwise.
      module AttributionModel
        extend WhopSDK::Internal::Type::Enum

        LAST_TOUCH = :last_touch
        FIRST_TOUCH = :first_touch

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
