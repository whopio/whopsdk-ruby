# frozen_string_literal: true

module Whop_sdk
  module Types
    # A dispute alert represents an early warning notification from a payment processor about a potential dispute or
    # chargeback.
    class DisputeAlertLegacy < Internal::Types::Model
      field :alert_type, -> { Whop_sdk::Types::DisputeAlertTypes }, optional: false, nullable: false

      field :amount, -> { Integer }, optional: false, nullable: false

      field :charge_for_alert, -> { Internal::Types::Boolean }, optional: false, nullable: false

      field :created_at, -> { String }, optional: false, nullable: false

      field :currency, -> { Whop_sdk::Types::Currencies }, optional: false, nullable: false

      field :dispute, -> { Whop_sdk::Types::DisputeAlertLegacyDispute }, optional: false, nullable: true

      field :id, -> { String }, optional: false, nullable: false

      field :payment, -> { Whop_sdk::Types::DisputeAlertLegacyPayment }, optional: false, nullable: true

      field :transaction_date, -> { String }, optional: false, nullable: true
    end
  end
end
