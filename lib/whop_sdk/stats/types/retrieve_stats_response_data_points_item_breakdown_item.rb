# frozen_string_literal: true

module Whop_sdk
  module Stats
    module Types
      class RetrieveStatsResponseDataPointsItemBreakdownItem < Internal::Types::Model
        field :name, -> { String }, optional: false, nullable: false

        field :steps, -> { Internal::Types::Array[Whop_sdk::Types::FunnelStepResult] }, optional: true, nullable: false

        field :value, -> { Integer }, optional: false, nullable: true
      end
    end
  end
end
