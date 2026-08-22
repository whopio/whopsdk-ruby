# frozen_string_literal: true

module Whop_sdk
  module Types
    # A Whop balance the buyer can pay with — their own, or an account's they hold permission to spend. Charged by
    # naming its ledger id on a `saved` confirmation token — it is a live wallet, not a stored credential, so it cannot
    # be vaulted or charged off-session.
    class PaymentMethodPlatformBalancePaymentMethod < Internal::Types::Model
      field :created_at, -> { String }, optional: false, nullable: false

      field :icons, -> { Whop_sdk::Types::PaymentMethodPlatformBalancePaymentMethodIcons }, optional: false, nullable: false

      field :id, -> { String }, optional: false, nullable: false

      field :payment_method_type, -> { Whop_sdk::Types::PaymentMethodTypes }, optional: false, nullable: false

      field :platform_balance, -> { Whop_sdk::Types::PaymentMethodPlatformBalancePaymentMethodPlatformBalance }, optional: false, nullable: false
    end
  end
end
