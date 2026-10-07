# frozen_string_literal: true

module Whop_sdk
  module Stats
    module TimeSeries
      module Types
        class RetrieveTimeSeriesResponseData < Internal::Types::Model
          field :currency, -> { String }, optional: true, nullable: false

          field :points, -> { Internal::Types::Array[Whop_sdk::Stats::TimeSeries::Types::RetrieveTimeSeriesResponseDataPointsItem] }, optional: false, nullable: false

          field :totals, -> { Internal::Types::Array[Whop_sdk::Stats::TimeSeries::Types::RetrieveTimeSeriesResponseDataTotalsItem] }, optional: true, nullable: false
        end
      end
    end
  end
end
