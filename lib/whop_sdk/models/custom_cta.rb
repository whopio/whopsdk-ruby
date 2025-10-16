# frozen_string_literal: true

module WhopSDK
  module Models
    # The different types of custom CTAs that can be selected.
    module CustomCta
      extend WhopSDK::Internal::Type::Enum

      GET_ACCESS = :get_access
      JOIN = :join
      ORDER_NOW = :order_now
      SHOP_NOW = :shop_now
      CALL_NOW = :call_now
      DONATE_NOW = :donate_now
      CONTACT_US = :contact_us
      SIGN_UP = :sign_up
      SUBSCRIBE = :subscribe
      PURCHASE = :purchase
      GET_OFFER = :get_offer
      APPLY_NOW = :apply_now
      COMPLETE_ORDER = :complete_order

      # @!method self.values
      #   @return [Array<Symbol>]
    end
  end
end
