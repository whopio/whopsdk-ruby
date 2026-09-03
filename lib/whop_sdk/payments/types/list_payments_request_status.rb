# frozen_string_literal: true

module Whop_sdk
  module Payments
    module Types
      module ListPaymentsRequestStatus
        extend Whop_sdk::Internal::Types::Enum

        OPEN = "open"
        AUTHORIZED = "authorized"
        PAID = "paid"
        PENDING = "pending"
        UNCOLLECTIBLE = "uncollectible"
        UNRESOLVED = "unresolved"
        VOID = "void"
      end
    end
  end
end
