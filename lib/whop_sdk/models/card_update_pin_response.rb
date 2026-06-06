# frozen_string_literal: true

module WhopSDK
  module Models
    # @see WhopSDK::Resources::Cards#update_pin
    class CardUpdatePinResponse < WhopSDK::Internal::Type::BaseModel
      # @!attribute success
      #
      #   @return [Boolean]
      required :success, WhopSDK::Internal::Type::Boolean

      # @!method initialize(success:)
      #   @param success [Boolean]
    end
  end
end
