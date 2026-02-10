# frozen_string_literal: true

module WhopSDK
  module Models
    # @see WhopSDK::Resources::Experiences#attach
    class ExperienceAttachParams < WhopSDK::Internal::Type::BaseModel
      extend WhopSDK::Internal::Type::RequestParameters::Converter
      include WhopSDK::Internal::Type::RequestParameters

      # @!attribute product_id
      #   The unique identifier of the product to attach the experience to.
      #
      #   @return [String]
      required :product_id, String

      # @!method initialize(product_id:, request_options: {})
      #   @param product_id [String] The unique identifier of the product to attach the experience to.
      #
      #   @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
