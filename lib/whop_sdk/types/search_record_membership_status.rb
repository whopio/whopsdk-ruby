# frozen_string_literal: true

module Whop_sdk
  module Types
    module SearchRecordMembershipStatus
      extend Whop_sdk::Internal::Types::Enum

      TRIALING = "trialing"
      ACTIVE = "active"
      PAST_DUE = "past_due"
      COMPLETED = "completed"
      CANCELED = "canceled"
      EXPIRED = "expired"
      UNRESOLVED = "unresolved"
    end
  end
end
