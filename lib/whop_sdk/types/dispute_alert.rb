# frozen_string_literal: true

module Whop_sdk
  module Types
    class DisputeAlert < Internal::Types::Model
      field :account_id, -> { String }, optional: false, nullable: true

      field :actionable, -> { Internal::Types::Boolean }, optional: false, nullable: false

      field :amount, -> { Integer }, optional: false, nullable: false

      field :card_brand, -> { String }, optional: false, nullable: true

      field :created_at, -> { String }, optional: false, nullable: false

      field :currency, -> { String }, optional: false, nullable: false

      field :fee_charged, -> { Internal::Types::Boolean }, optional: false, nullable: false

      field :id, -> { String }, optional: false, nullable: false

      field :issuer, -> { String }, optional: false, nullable: true

      field :not_actionable_reason, -> { Whop_sdk::Types::DisputeAlertNotActionableReason }, optional: false, nullable: true

      field :payment_id, -> { String }, optional: false, nullable: true

      field :product_id, -> { String }, optional: false, nullable: true

      field :reported_at, -> { String }, optional: false, nullable: false

      field :transaction_at, -> { String }, optional: false, nullable: true

      field :type, -> { Whop_sdk::Types::DisputeAlertType }, optional: false, nullable: false

      field :updated_at, -> { String }, optional: false, nullable: false
    end
  end
end
