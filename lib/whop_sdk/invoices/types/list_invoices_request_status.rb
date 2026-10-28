# frozen_string_literal: true

module Whop_sdk
  module Invoices
    module Types
      module ListInvoicesRequestStatus
        extend Whop_sdk::Internal::Types::Enum

        DRAFT = "draft"
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
