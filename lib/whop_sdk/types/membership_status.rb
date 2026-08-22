# frozen_string_literal: true

module Whop_sdk
  module Types
    module MembershipStatus
      extend Whop_sdk::Internal::Types::Enum

      TRIALING = "trialing"
      ACTIVE = "active"
      PAST_DUE = "past_due"
      COMPLETED = "completed"
      CANCELED = "canceled"
      EXPIRED = "expired"
      UNRESOLVED = "unresolved"
      DRAFTED = "drafted"
      CANCELING = "canceling"
    end
  end
end
