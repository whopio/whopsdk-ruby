# frozen_string_literal: true

module WhopSDK
  module Models
    # @see WhopSDK::Resources::PaymentMethods#retrieve
    class PaymentMethodRetrieveParams < WhopSDK::Internal::Type::BaseModel
      extend WhopSDK::Internal::Type::RequestParameters::Converter
      include WhopSDK::Internal::Type::RequestParameters

      # @!attribute member_id
      #   The ID of the Member associated with the PaymentMethod
      #
      #   @return [String]
      required :member_id, String

      # @!method initialize(member_id:, request_options: {})
      #   @param member_id [String] The ID of the Member associated with the PaymentMethod
      #
      #   @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
