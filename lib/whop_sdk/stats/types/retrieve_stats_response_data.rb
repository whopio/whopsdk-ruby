# frozen_string_literal: true

module Whop_sdk
  module Stats
    module Types
      class RetrieveStatsResponseData < Internal::Types::Model
        field :currency, -> { String }, optional: true, nullable: false

        field :points, -> { Internal::Types::Array[Whop_sdk::Stats::Types::RetrieveStatsResponseDataPointsItem] }, optional: false, nullable: false

        field :totals, -> { Internal::Types::Array[Whop_sdk::Stats::Types::RetrieveStatsResponseDataTotalsItem] }, optional: true, nullable: false
      end
    end
  end
end
