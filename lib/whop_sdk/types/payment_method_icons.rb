# frozen_string_literal: true

module Whop_sdk
  module Types
    class PaymentMethodIcons < Internal::Types::Model
      field :card, -> { Whop_sdk::Types::PaymentMethodIconVariants }, optional: false, nullable: false

      field :square, -> { Whop_sdk::Types::PaymentMethodIconVariants }, optional: false, nullable: false
    end
  end
end
