# frozen_string_literal: true

module Whop_sdk
  module Payments
    module Types
      class CreatePaymentsRequestLineItemsItem < Internal::Types::Model
        field :discount, -> { Whop_sdk::Types::PaymentRegisterDiscount }, optional: true, nullable: false

        field :quantity, -> { Integer }, optional: true, nullable: false

        field :variant, -> { Whop_sdk::Payments::Types::CreatePaymentsRequestLineItemsItemVariant }, optional: true, nullable: false

        field :variant_id, -> { String }, optional: true, nullable: false
      end
    end
  end
end
