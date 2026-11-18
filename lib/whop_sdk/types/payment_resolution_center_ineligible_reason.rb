# frozen_string_literal: true

module Whop_sdk
  module Types
    module PaymentResolutionCenterIneligibleReason
      extend Whop_sdk::Internal::Types::Enum

      ALREADY_OPENED = "already_opened"
      UNSUPPORTED_PAYMENT_PROCESSOR = "unsupported_payment_processor"
      OUT_OF_DATE = "out_of_date"
      NOT_PAID = "not_paid"
      FREE = "free"
      ALREADY_REFUNDED = "already_refunded"
    end
  end
end
