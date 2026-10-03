# frozen_string_literal: true

module Whop_sdk
  module Types
    class PaymentQuote < Internal::Types::Model
      field :account_id, -> { String }, optional: false, nullable: false

      field :address, -> { Whop_sdk::Types::PaymentAddress }, optional: false, nullable: true

      field :created_at, -> { String }, optional: false, nullable: false

      field :currency, -> { String }, optional: false, nullable: false

      field :discount, -> { Whop_sdk::Types::Money }, optional: false, nullable: false

      field :expires_at, -> { String }, optional: false, nullable: false

      field :id, -> { String }, optional: false, nullable: false

      field :line_items, -> { Internal::Types::Array[Whop_sdk::Types::PaymentQuoteLineItem] }, optional: false, nullable: false

      field :located_by, -> { Whop_sdk::Types::PaymentQuoteLocatedBy }, optional: false, nullable: true

      field :promo_code_id, -> { String }, optional: false, nullable: true

      field :shipping_address, -> { Whop_sdk::Types::PaymentAddress }, optional: false, nullable: true

      field :subtotal, -> { Whop_sdk::Types::Money }, optional: false, nullable: false

      field :tax_amount, -> { Whop_sdk::Types::Money }, optional: false, nullable: false

      field :tax_behavior, -> { Whop_sdk::Types::PaymentQuoteTaxBehavior }, optional: false, nullable: true

      field :tax_ids, -> { Internal::Types::Array[Whop_sdk::Types::TaxID] }, optional: false, nullable: false

      field :tax_status, -> { Whop_sdk::Types::PaymentQuoteTaxStatus }, optional: false, nullable: false

      field :total, -> { Whop_sdk::Types::Money }, optional: false, nullable: false
    end
  end
end
