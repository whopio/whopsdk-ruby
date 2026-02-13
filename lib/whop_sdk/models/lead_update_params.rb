# frozen_string_literal: true

module WhopSDK
  module Models
    # @see WhopSDK::Resources::Leads#update
    class LeadUpdateParams < WhopSDK::Internal::Type::BaseModel
      extend WhopSDK::Internal::Type::RequestParameters::Converter
      include WhopSDK::Internal::Type::RequestParameters

      # @!attribute metadata
      #   A JSON object of custom metadata to set on the lead, replacing any existing
      #   metadata.
      #
      #   @return [Hash{Symbol=>Object}, nil]
      optional :metadata, WhopSDK::Internal::Type::HashOf[WhopSDK::Internal::Type::Unknown], nil?: true

      # @!attribute referrer
      #   The updated referral URL for the lead, such as 'https://example.com/landing'.
      #
      #   @return [String, nil]
      optional :referrer, String, nil?: true

      # @!method initialize(metadata: nil, referrer: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {WhopSDK::Models::LeadUpdateParams} for more details.
      #
      #   @param metadata [Hash{Symbol=>Object}, nil] A JSON object of custom metadata to set on the lead, replacing any existing meta
      #
      #   @param referrer [String, nil] The updated referral URL for the lead, such as 'https://example.com/landing'.
      #
      #   @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
