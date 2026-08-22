# frozen_string_literal: true

module Whop_sdk
  module Types
    module ResolutionEventAction
      extend Whop_sdk::Internal::Types::Enum

      CREATED = "created"
      RESPONDED = "responded"
      ACCEPTED = "accepted"
      DENIED = "denied"
      APPEALED = "appealed"
      WITHDREW = "withdrew"
      REQUESTED_MORE_INFO = "requested_more_info"
      ESCALATED = "escalated"
      DISPUTE_OPENED = "dispute_opened"
      DISPUTE_CUSTOMER_WON = "dispute_customer_won"
      DISPUTE_MERCHANT_WON = "dispute_merchant_won"
    end
  end
end
