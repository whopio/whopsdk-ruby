# frozen_string_literal: true

module Whop_sdk
  module Types
    # The account, variant and promo code for a purchase.
    class PaymentInput < Internal::Types::Model
      field :account_id, -> { String }, optional: false, nullable: false

      field :promo_code, -> { String }, optional: true, nullable: false

      field :promo_code_id, -> { String }, optional: true, nullable: false

      field :variant, -> { Whop_sdk::Types::PaymentInputVariant }, optional: true, nullable: false

      field :variant_id, -> { String }, optional: true, nullable: false
    end
  end
end
