# frozen_string_literal: true

module Whop_sdk
  module Stats
    module Types
      class RetrieveStatsResponseDataTotalsItem < Internal::Types::Model
        field :comparison, -> { Whop_sdk::Types::FunnelComparison }, optional: true, nullable: false

        field :confidence_interval, -> { Whop_sdk::Types::FunnelConfidenceInterval }, optional: true, nullable: false

        field :name, -> { String }, optional: false, nullable: false

        field :steps, -> { Internal::Types::Array[Whop_sdk::Types::FunnelStepResult] }, optional: true, nullable: false

        field :value, -> { Integer }, optional: false, nullable: true
      end
    end
  end
end
