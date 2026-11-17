# frozen_string_literal: true

module Whop_sdk
  module Types
    class PaymentLevelsRebateEstimate < Internal::Types::Model
      field :amount, -> { Whop_sdk::Types::Money }, optional: false, nullable: false

      field :covered_share, -> { Integer }, optional: false, nullable: false

      field :effective_rate_percentage, -> { Integer }, optional: false, nullable: true

      field :level, -> { Integer }, optional: false, nullable: false

      field :processing_rate_percentage, -> { Integer }, optional: false, nullable: true

      field :region, -> { Whop_sdk::Types::PaymentLevelsRebateEstimateRegion }, optional: false, nullable: true
    end
  end
end
