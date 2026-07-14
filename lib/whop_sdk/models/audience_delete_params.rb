# frozen_string_literal: true

module WhopSDK
  module Models
    # @see WhopSDK::Resources::Audiences#delete
    class AudienceDeleteParams < WhopSDK::Internal::Type::BaseModel
      extend WhopSDK::Internal::Type::RequestParameters::Converter
      include WhopSDK::Internal::Type::RequestParameters

      # @!attribute audience_id
      #
      #   @return [String]
      required :audience_id, String

      # @!method initialize(audience_id:, request_options: {})
      #   @param audience_id [String]
      #   @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
