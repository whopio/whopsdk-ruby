# frozen_string_literal: true

module Whop_sdk
  module Types
    # An amount of money. Never a bare number, because a bare number cannot answer the two questions a client has to
    # answer to render it: what currency is this, and how many digits do I write? The second is stated twice rather than
    # derived, because the digits the amount CARRIES and the digits to SHOW differ in COP — charged in centavos, written
    # in whole pesos. Formatting is deliberately left to the caller: the number belongs in the buyer's locale, and this
    # API does not know it.
    class PaymentMethodPlatformBalancePaymentMethodPlatformBalanceBalancesItem < Internal::Types::Model
      field :amount, -> { String }, optional: false, nullable: false

      field :currency, -> { Whop_sdk::Types::Currencies }, optional: false, nullable: false

      field :decimals, -> { Integer }, optional: false, nullable: false

      field :display_decimals, -> { Integer }, optional: false, nullable: false
    end
  end
end
