# frozen_string_literal: true

module Whop_sdk
  module Types
    module CheckoutSessionPaymentStatus
      extend Whop_sdk::Internal::Types::Enum

      REQUIRES_ACTION = "requires_action"
      PROCESSING = "processing"
      SUCCEEDED = "succeeded"
      FAILED = "failed"
    end
  end
end
