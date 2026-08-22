# frozen_string_literal: true

module Whop_sdk
  module Types
    class ResolutionCenterCase < Internal::Types::Model
      field :account, -> { Whop_sdk::Types::AccountSummary }, optional: false, nullable: true

      field :amount, -> { Integer }, optional: false, nullable: false

      field :available_actions, -> { Internal::Types::Array[Whop_sdk::Types::ResolutionCenterCaseAvailableActionsItem] }, optional: false, nullable: false

      field :buyer, -> { Whop_sdk::Types::ResolutionBuyer }, optional: false, nullable: false

      field :created_at, -> { String }, optional: false, nullable: false

      field :currency, -> { String }, optional: false, nullable: true

      field :customer_appealed, -> { Internal::Types::Boolean }, optional: false, nullable: false

      field :escalated, -> { Internal::Types::Boolean }, optional: false, nullable: false

      field :id, -> { String }, optional: false, nullable: false

      field :outcome, -> { Whop_sdk::Types::ResolutionCenterCaseOutcome }, optional: false, nullable: true

      field :payment, -> { Whop_sdk::Types::ResolutionPayment }, optional: false, nullable: false

      field :plan_id, -> { String }, optional: false, nullable: true

      field :product_id, -> { String }, optional: false, nullable: true

      field :reason, -> { Whop_sdk::Types::ResolutionCenterCaseReason }, optional: false, nullable: false

      field :refund, -> { Whop_sdk::Types::ResolutionCenterCaseRefund }, optional: false, nullable: true

      field :response_due_at, -> { String }, optional: false, nullable: true

      field :status, -> { Whop_sdk::Types::ResolutionCenterCaseStatus }, optional: false, nullable: false

      field :updated_at, -> { String }, optional: false, nullable: false
    end
  end
end
