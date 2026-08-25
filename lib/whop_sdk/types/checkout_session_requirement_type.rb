# frozen_string_literal: true

module Whop_sdk
  module Types
    module CheckoutSessionRequirementType
      extend Whop_sdk::Internal::Types::Enum

      CUSTOM_PASSWORD = "custom_password"
      EMAIL = "email"
      TERMS = "terms"
      CUSTOM_FIELDS = "custom_fields"
      SHIPPING_ADDRESS = "shipping_address"
      PHONE_NUMBER = "phone_number"
    end
  end
end
