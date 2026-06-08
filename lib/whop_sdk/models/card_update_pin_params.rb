# frozen_string_literal: true

module WhopSDK
  module Models
    # @see WhopSDK::Resources::Cards#update_pin
    class CardUpdatePinParams < WhopSDK::Internal::Type::BaseModel
      extend WhopSDK::Internal::Type::RequestParameters::Converter
      include WhopSDK::Internal::Type::RequestParameters

      # @!attribute id
      #
      #   @return [String]
      required :id, String

      # @!attribute pin
      #   The new 4-digit PIN.
      #
      #   @return [String]
      required :pin, String

      # @!method initialize(id:, pin:, request_options: {})
      #   @param id [String]
      #
      #   @param pin [String] The new 4-digit PIN.
      #
      #   @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
