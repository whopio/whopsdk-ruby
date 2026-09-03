# frozen_string_literal: true

module Whop_sdk
  module Types
    module RefundReferenceStatus
      extend Whop_sdk::Internal::Types::Enum

      AVAILABLE = "available"
      PENDING = "pending"
      UNAVAILABLE = "unavailable"
    end
  end
end
