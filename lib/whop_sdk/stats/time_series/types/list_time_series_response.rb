# frozen_string_literal: true

module Whop_sdk
  module Stats
    module TimeSeries
      module Types
        class ListTimeSeriesResponse < Internal::Types::Model
          field :data, -> { Internal::Types::Array[Whop_sdk::Stats::TimeSeries::Types::ListTimeSeriesResponseDataItem] }, optional: false, nullable: false
        end
      end
    end
  end
end
