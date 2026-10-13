# frozen_string_literal: true

module Whop_sdk
  module Types
    module MembershipMostRecentAction
      extend Whop_sdk::Internal::Types::Enum

      CANCELED_ON = "canceled_on"
      FINISHED_SPLIT_PAY_AT = "finished_split_pay_at"
      CANCELING_ON = "canceling_on"
      ENDING_ON = "ending_on"
      RENEWING_ON = "renewing_on"
      PAST_DUE = "past_due"
      NEXT_PAYMENT_ATTEMPT = "next_payment_attempt"
      PAUSED_AT = "paused_at"
      TRIAL_ENDS_AT = "trial_ends_at"
      UNRESOLVED_AT = "unresolved_at"
      TRIAL_CANCELING_ON = "trial_canceling_on"
    end
  end
end
