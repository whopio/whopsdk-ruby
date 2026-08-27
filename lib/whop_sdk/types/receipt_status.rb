# frozen_string_literal: true

module Whop_sdk
  module Types
    module ReceiptStatus
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
