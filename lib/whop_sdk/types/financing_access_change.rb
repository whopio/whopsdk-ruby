# frozen_string_literal: true

module Whop_sdk
  module Types
    class FinancingAccessChange < Internal::Types::Model
      field :account_id, -> { String }, optional: false, nullable: false

      field :disabled_at, -> { String }, optional: false, nullable: false

      field :disabled_payment_methods, -> { Internal::Types::Array[Whop_sdk::Types::FinancingAccessChangeDisabledPaymentMethodsItem] }, optional: false, nullable: false

      field :object, -> { Whop_sdk::Types::FinancingAccessChangeObject }, optional: false, nullable: false

      field :provider, -> { Whop_sdk::Types::FinancingAccessChangeProvider }, optional: false, nullable: false

      field :reason, -> { Whop_sdk::Types::FinancingAccessChangeReason }, optional: false, nullable: false
    end
  end
end
