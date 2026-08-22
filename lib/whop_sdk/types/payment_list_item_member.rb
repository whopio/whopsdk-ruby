# frozen_string_literal: true

module Whop_sdk
  module Types
    # The member attached to this payment.
    class PaymentListItemMember < Internal::Types::Model
      field :id, -> { String }, optional: false, nullable: false

      field :phone, -> { String }, optional: false, nullable: true
    end
  end
end
