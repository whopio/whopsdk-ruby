# frozen_string_literal: true

module Whop_sdk
  module Types
    module CheckoutSessionBreakdownDisplayRowKind
      extend Whop_sdk::Internal::Types::Enum

      THEN_STARTING = "then_starting"
      THEN_AFTER_TRIAL = "then_after_trial"
      DUE_TODAY = "due_today"
      PERIOD = "period"
      ONE_TIME_PAYMENT = "one_time_payment"
      ACCESS_WINDOW = "access_window"
      ACCESS_UNTIL = "access_until"
      TRIAL_WINDOW = "trial_window"
      WAITLIST_NOTICE = "waitlist_notice"
      WAITLIST_TRIAL_NOTICE = "waitlist_trial_notice"
      FREE_FOREVER = "free_forever"
      TAX_INCLUDED = "tax_included"
      PROMO_FREE_PERIOD = "promo_free_period"
      INITIAL_FEE = "initial_fee"
      RENEWAL_FEE = "renewal_fee"
      TAX_TODAY = "tax_today"
      TOTAL_DUE_TODAY = "total_due_today"
      TOTAL_IF_ACCEPTED = "total_if_accepted"
      TOTAL_DUE_STARTING = "total_due_starting"
      TOTAL_AFTER_TRIAL = "total_after_trial"
      POST_PROMO = "post_promo"
      ITEM_SUBTOTAL = "item_subtotal"
      SERVICE_FEE = "service_fee"
    end
  end
end
