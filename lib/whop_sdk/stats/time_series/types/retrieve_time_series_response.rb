# frozen_string_literal: true

module Whop_sdk
  module Stats
    module TimeSeries
      module Types
        class RetrieveTimeSeriesResponse < Internal::Types::Model
          field :data, -> { Whop_sdk::Stats::TimeSeries::Types::RetrieveTimeSeriesResponseData }, optional: false, nullable: false
        end
      end
    end
  end
end
