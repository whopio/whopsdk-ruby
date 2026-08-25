# frozen_string_literal: true

module Whop_sdk
  module Types
    module CheckoutSessionStatus
      extend Whop_sdk::Internal::Types::Enum

      OPEN = "open"
      COMPLETED = "completed"
      EXPIRED = "expired"
    end
  end
end
