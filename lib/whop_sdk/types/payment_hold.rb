# frozen_string_literal: true

module Whop_sdk
  module Types
    class PaymentHold < Internal::Types::Model
      field :amount, -> { Whop_sdk::Types::Money }, optional: false, nullable: false

      field :percentage, -> { Integer }, optional: false, nullable: true

      field :release_at, -> { String }, optional: false, nullable: true

      field :type, -> { Whop_sdk::Types::PaymentHoldType }, optional: false, nullable: false
    end
  end
end
