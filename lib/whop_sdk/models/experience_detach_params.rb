# frozen_string_literal: true

module WhopSDK
  module Models
    # @see WhopSDK::Resources::Experiences#detach
    class ExperienceDetachParams < WhopSDK::Internal::Type::BaseModel
      extend WhopSDK::Internal::Type::RequestParameters::Converter
      include WhopSDK::Internal::Type::RequestParameters

      # @!attribute product_id
      #   The ID of the Access Pass to add the Experience to.
      #
      #   @return [String]
      required :product_id, String

      # @!method initialize(product_id:, request_options: {})
      #   @param product_id [String] The ID of the Access Pass to add the Experience to.
      #
      #   @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
