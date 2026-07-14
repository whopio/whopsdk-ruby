# frozen_string_literal: true

module WhopSDK
  module Models
    # @see WhopSDK::Resources::AdGroups#retrieve
    class AdGroupRetrieveParams < WhopSDK::Internal::Type::BaseModel
      extend WhopSDK::Internal::Type::RequestParameters::Converter
      include WhopSDK::Internal::Type::RequestParameters

      # @!attribute id
      #
      #   @return [String]
      required :id, String

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

      # @!method initialize(id:, stats_from: nil, stats_to: nil, time_zone: nil, request_options: {})
      #   @param id [String]
      #
      #   @param stats_from [String] Start of the stats window.
      #
      #   @param stats_to [String] End of the stats window.
      #
      #   @param time_zone [String] IANA timezone the stats window is interpreted in. Defaults to UTC.
      #
      #   @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
