# frozen_string_literal: true

module Whop_sdk
  module Types
    # What is available to spend, and whether the account may spend it.
    class PaymentMethodListItemPlatformBalancePaymentMethodPlatformBalance < Internal::Types::Model
      field :account, -> { Whop_sdk::Types::PaymentMethodListItemPlatformBalancePaymentMethodPlatformBalanceAccount }, optional: false, nullable: true

      field :balances, -> { Internal::Types::Array[Whop_sdk::Types::PaymentMethodListItemPlatformBalancePaymentMethodPlatformBalanceBalancesItem] }, optional: false, nullable: false

      field :spendable, -> { Internal::Types::Boolean }, optional: false, nullable: false
    end
  end
end
