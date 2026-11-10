# frozen_string_literal: true

module Whop_sdk
  module Types
    class PaymentLevelsRebate < Internal::Types::Model
      field :amount, -> { Whop_sdk::Types::Money }, optional: false, nullable: true

      field :covered_share, -> { Integer }, optional: false, nullable: true

      field :effective_rate_percentage, -> { Integer }, optional: false, nullable: true

      field :ineligible_reason, -> { Whop_sdk::Types::PaymentLevelsRebateIneligibleReason }, optional: false, nullable: true

      field :level, -> { Integer }, optional: false, nullable: true

      field :month_started_at, -> { String }, optional: false, nullable: true

      field :payment_id, -> { String }, optional: false, nullable: false

      field :processing_rate_percentage, -> { Integer }, optional: false, nullable: true

      field :region, -> { Whop_sdk::Types::PaymentLevelsRebateRegion }, optional: false, nullable: true

      field :status, -> { Whop_sdk::Types::PaymentLevelsRebateStatus }, optional: false, nullable: false
    end
  end
end
