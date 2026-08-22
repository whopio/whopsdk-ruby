# frozen_string_literal: true

module Whop_sdk
  module Types
    # The original payment that this refund was issued against. Null if the payment is no longer available.
    class RefundListItemPayment < Internal::Types::Model
      field :id, -> { String }, optional: false, nullable: false
    end
  end
end
