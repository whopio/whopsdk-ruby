# frozen_string_literal: true

module Whop_sdk
  module Types
    module PaymentCheckoutSurface
      extend Whop_sdk::Internal::Types::Enum

      HOSTED_CHECKOUT = "hosted_checkout"
      EMBEDDED_CHECKOUT = "embedded_checkout"
      CUSTOM_CHECKOUT = "custom_checkout"
      MODAL_CHECKOUT = "modal_checkout"
      IN_APP_CHECKOUT = "in_app_checkout"
      MOBILE_CHECKOUT = "mobile_checkout"
      OFF_SESSION = "off_session"
      CARD_PRESENT = "card_present"
    end
  end
end
