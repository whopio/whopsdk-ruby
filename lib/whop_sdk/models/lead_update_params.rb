# frozen_string_literal: true

module WhopSDK
  module Models
    # @see WhopSDK::Resources::Leads#update
    class LeadUpdateParams < WhopSDK::Internal::Type::BaseModel
      extend WhopSDK::Internal::Type::RequestParameters::Converter
      include WhopSDK::Internal::Type::RequestParameters

      # @!attribute metadata
      #   Custom metadata for the lead.
      #
      #   @return [Hash{Symbol=>Object}, nil]
      optional :metadata, WhopSDK::Internal::Type::HashOf[WhopSDK::Internal::Type::Unknown], nil?: true

      # @!attribute referrer
      #   The url referrer of the lead.
      #
      #   @return [String, nil]
      optional :referrer, String, nil?: true

      # @!method initialize(metadata: nil, referrer: nil, request_options: {})
      #   @param metadata [Hash{Symbol=>Object}, nil] Custom metadata for the lead.
      #
      #   @param referrer [String, nil] The url referrer of the lead.
      #
      #   @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
