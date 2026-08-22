# frozen_string_literal: true

module Whop_sdk
  module Types
    # The account whose wallet this is. Null for the buyer's own personal wallet. A buyer sees an account's balance here
    # when they hold permission to spend it, so a list can hold several — their own and one per account they are on.
    class PaymentMethodPlatformBalancePaymentMethodPlatformBalanceAccount < Internal::Types::Model
      field :id, -> { String }, optional: false, nullable: false

      field :logo, -> { Whop_sdk::Types::PaymentMethodPlatformBalancePaymentMethodPlatformBalanceAccountLogo }, optional: false, nullable: true

      field :title, -> { String }, optional: false, nullable: false
    end
  end
end
