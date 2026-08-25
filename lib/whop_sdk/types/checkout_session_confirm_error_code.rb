# frozen_string_literal: true

module Whop_sdk
  module Types
    module CheckoutSessionConfirmErrorCode
      extend Whop_sdk::Internal::Types::Enum

      SESSION_EXPIRED = "session_expired"
      SESSION_COMPLETED = "session_completed"
      ATTESTATION_REQUIRED = "attestation_required"
      QUOTE_EXPIRED = "quote_expired"
      QUOTE_CHANGED = "quote_changed"
      RATE_EXPIRED = "rate_expired"
      TOKEN_INVALID = "token_invalid"
      CONFIRM_IN_PROGRESS = "confirm_in_progress"
      ENGINE_UNAVAILABLE = "engine_unavailable"
      SELLER_UNAVAILABLE = "seller_unavailable"
      PROMO_INVALID = "promo_invalid"
      PAYMENT_METHOD_UNSUPPORTED = "payment_method_unsupported"
      PAYMENT_METHOD_UNAVAILABLE = "payment_method_unavailable"
      SHIPPING_ADDRESS_REQUIRED = "shipping_address_required"
      CUSTOM_FIELD_INVALID = "custom_field_invalid"
      PAYMENT_FAILED = "payment_failed"
      WAITLIST_UNAVAILABLE = "waitlist_unavailable"
      PURCHASES_DISABLED = "purchases_disabled"
      PLAN_ARCHIVED = "plan_archived"
      PRODUCT_ARCHIVED = "product_archived"
      OUT_OF_STOCK = "out_of_stock"
      CUSTOM_PASSWORD = "custom_password"
      BLOCKED_COUNTRY = "blocked_country"
      USER_SUSPENDED = "user_suspended"
      USER_BANNED_FROM_WHOP = "user_banned_from_whop"
      EMAIL_REQUIRED = "email_required"
      FREE_PLAN_ALREADY_OWNED = "free_plan_already_owned"
      WAITLIST_ENTRY_PENDING = "waitlist_entry_pending"
      WAITLIST_ALREADY_MEMBER = "waitlist_already_member"
      BUYER_INELIGIBLE = "buyer_ineligible"
    end
  end
end
