# frozen_string_literal: true

module Whop_sdk
  module Types
    module PaymentLevelsRebateIneligibleReason
      extend Whop_sdk::Internal::Types::Enum

      NOT_CARD_PAYMENT = "not_card_payment"
      BEFORE_LEVELS = "before_levels"
      NOT_IN_LEVELS = "not_in_levels"
      FEE_NOT_POSTED = "fee_not_posted"
      FEE_AT_LEVEL_RATE = "fee_at_level_rate"
      NO_LEVEL_RATE = "no_level_rate"
    end
  end
end
