# frozen_string_literal: true

module Whop_sdk
  module Types
    # The purchase: the account it belongs to, what is bought, and the promo code applied. The same shape prices a
    # purchase and pays for it.
    class PaymentInput < Internal::Types::Model
      field :account_id, -> { String }, optional: false, nullable: false

      field :line_items, -> { Internal::Types::Array[Whop_sdk::Types::PaymentInputLineItemsItem] }, optional: true, nullable: false

      field :plan, -> { Whop_sdk::Types::PaymentInputPlan }, optional: true, nullable: false

      field :plan_id, -> { String }, optional: true, nullable: false

      field :promo_code_id, -> { String }, optional: true, nullable: false
    end
  end
end
