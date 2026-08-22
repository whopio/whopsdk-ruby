# frozen_string_literal: true

module Whop_sdk
  module Types
    module PaymentsApprovalStatuses
      extend Whop_sdk::Internal::Types::Enum

      PENDING = "pending"
      APPROVED = "approved"
      MONITORING = "monitoring"
      REJECTED = "rejected"
    end
  end
end
