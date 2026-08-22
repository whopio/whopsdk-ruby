# frozen_string_literal: true

module Whop_sdk
  module Stats
    module Types
      class RetrieveStatsResponseDataPointsItem < Internal::Types::Model
        field :breakdown, -> { Internal::Types::Array[Whop_sdk::Stats::Types::RetrieveStatsResponseDataPointsItemBreakdownItem] }, optional: true, nullable: false

        field :timestamp, -> { Integer }, optional: false, nullable: false

        field :value, -> { Integer }, optional: false, nullable: true
      end
    end
  end
end
