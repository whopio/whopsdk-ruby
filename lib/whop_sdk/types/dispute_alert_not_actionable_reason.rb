# frozen_string_literal: true

module Whop_sdk
  module Types
    module DisputeAlertNotActionableReason
      extend Whop_sdk::Internal::Types::Enum

      NETWORK_RESOLVED = "network_resolved"
      PAYMENT_UNMATCHED = "payment_unmatched"
      PAYMENT_NOT_CAPTURED = "payment_not_captured"
      PAYMENT_DISPUTED = "payment_disputed"
      PAYMENT_REFUNDED = "payment_refunded"
    end
  end
end
