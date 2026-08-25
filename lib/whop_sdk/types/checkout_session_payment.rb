# frozen_string_literal: true

module Whop_sdk
  module Types
    class CheckoutSessionPayment < Internal::Types::Model
      field :id, -> { String }, optional: false, nullable: false

      field :status, -> { Whop_sdk::Types::CheckoutSessionPaymentStatus }, optional: false, nullable: false
    end
  end
end
