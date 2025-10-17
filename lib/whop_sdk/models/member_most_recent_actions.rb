# frozen_string_literal: true

module WhopSDK
  module Models
    # The different most recent actions a member can have.
    module MemberMostRecentActions
      extend WhopSDK::Internal::Type::Enum

      CANCELING = :canceling
      CHURNED = :churned
      FINISHED_SPLIT_PAY = :finished_split_pay
      PAUSED = :paused
      PAID_SUBSCRIBER = :paid_subscriber
      PAID_ONCE = :paid_once
      EXPIRING = :expiring
      JOINED = :joined
      DRAFTED = :drafted
      LEFT = :left
      TRIALING = :trialing
      PENDING_ENTRY = :pending_entry
      RENEWING = :renewing
      PAST_DUE = :past_due

      # @!method self.values
      #   @return [Array<Symbol>]
    end
  end
end
