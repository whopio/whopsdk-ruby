# frozen_string_literal: true

module Whop_sdk
  module Types
    module RefundStatus
      extend Whop_sdk::Internal::Types::Enum

      PENDING = "pending"
      REQUIRES_ACTION = "requires_action"
      SUCCEEDED = "succeeded"
      FAILED = "failed"
      CANCELED = "canceled"
    end
  end
end
