# frozen_string_literal: true

module Whop_sdk
  module Types
    module InvoiceStatuses
      extend Whop_sdk::Internal::Types::Enum

      DRAFT = "draft"
      OPEN = "open"
      PAID = "paid"
      PAST_DUE = "past_due"
      UNCOLLECTIBLE = "uncollectible"
      VOID = "void"
    end
  end
end
