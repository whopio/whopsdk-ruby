# frozen_string_literal: true

module Whop_sdk
  module Types
    module WaitlistEntryStatus
      extend Whop_sdk::Internal::Types::Enum

      PENDING = "pending"
      APPROVED = "approved"
      DENIED = "denied"
      CANCELED = "canceled"
    end
  end
end
