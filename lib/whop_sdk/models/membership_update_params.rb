# frozen_string_literal: true

module WhopSDK
  module Models
    # @see WhopSDK::Resources::Memberships#update
    class MembershipUpdateParams < WhopSDK::Internal::Type::BaseModel
      extend WhopSDK::Internal::Type::RequestParameters::Converter
      include WhopSDK::Internal::Type::RequestParameters

      # @!attribute metadata
      #   The metadata to update the membership with.
      #
      #   @return [Hash{Symbol=>Object}, nil]
      optional :metadata, WhopSDK::Internal::Type::HashOf[WhopSDK::Internal::Type::Unknown], nil?: true

      # @!method initialize(metadata: nil, request_options: {})
      #   @param metadata [Hash{Symbol=>Object}, nil] The metadata to update the membership with.
      #
      #   @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
