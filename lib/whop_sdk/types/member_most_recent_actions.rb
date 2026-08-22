# frozen_string_literal: true

module Whop_sdk
  module Types
    module MemberMostRecentActions
      extend Whop_sdk::Internal::Types::Enum

      CANCELING = "canceling"
      CHURNED = "churned"
      FINISHED_SPLIT_PAY = "finished_split_pay"
      PAUSED = "paused"
      PAID_SUBSCRIBER = "paid_subscriber"
      PAID_ONCE = "paid_once"
      EXPIRING = "expiring"
      JOINED = "joined"
      DRAFTED = "drafted"
      LEFT = "left"
      TRIALING = "trialing"
      PENDING_ENTRY = "pending_entry"
      RENEWING = "renewing"
      PAST_DUE = "past_due"
    end
  end
end
