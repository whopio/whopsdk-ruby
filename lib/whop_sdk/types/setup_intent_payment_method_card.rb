# frozen_string_literal: true

module Whop_sdk
  module Types
    # The card data associated with the payment method, if its a debit or credit card.
    class SetupIntentPaymentMethodCard < Internal::Types::Model
      field :brand, -> { Whop_sdk::Types::CardBrands }, optional: false, nullable: true

      field :exp_month, -> { Integer }, optional: false, nullable: true

      field :exp_year, -> { Integer }, optional: false, nullable: true

      field :last4, -> { String }, optional: false, nullable: true
    end
  end
end
