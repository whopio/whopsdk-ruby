# frozen_string_literal: true

module Whop_sdk
  module Types
    class PaymentMethodIconVariants < Internal::Types::Model
      field :dark, -> { Whop_sdk::Types::PaymentMethodIconFiles }, optional: false, nullable: false

      field :light, -> { Whop_sdk::Types::PaymentMethodIconFiles }, optional: false, nullable: false
    end
  end
end
