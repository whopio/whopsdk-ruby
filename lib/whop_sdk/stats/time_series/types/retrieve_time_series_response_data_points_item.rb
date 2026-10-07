# frozen_string_literal: true

module Whop_sdk
  module Stats
    module TimeSeries
      module Types
        class RetrieveTimeSeriesResponseDataPointsItem < Internal::Types::Model
          field :breakdown, -> { Internal::Types::Array[Whop_sdk::Stats::TimeSeries::Types::RetrieveTimeSeriesResponseDataPointsItemBreakdownItem] }, optional: true, nullable: false

          field :steps, -> { Internal::Types::Array[Whop_sdk::Types::FunnelStepResult] }, optional: true, nullable: false

          field :timestamp, -> { Integer }, optional: false, nullable: false

          field :value, -> { Integer }, optional: false, nullable: true
        end
      end
    end
  end
end
