# frozen_string_literal: true

module Whop_sdk
  module Types
    module RefundFailureReason
      extend Whop_sdk::Internal::Types::Enum

      BANK_DECLINED = "bank_declined"
      EXPIRED_OR_CANCELED_CARD = "expired_or_canceled_card"
      LOST_OR_STOLEN_CARD = "lost_or_stolen_card"
      INSUFFICIENT_FUNDS = "insufficient_funds"
      CHARGE_DISPUTED = "charge_disputed"
      NOT_REFUNDABLE = "not_refundable"
      MERCHANT_REQUEST = "merchant_request"
      UNKNOWN = "unknown"
    end
  end
end
