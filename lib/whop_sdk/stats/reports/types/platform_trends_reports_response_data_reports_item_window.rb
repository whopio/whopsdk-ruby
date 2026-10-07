# frozen_string_literal: true

module Whop_sdk
  module Stats
    module Reports
      module Types
        class PlatformTrendsReportsResponseDataReportsItemWindow < Internal::Types::Model
          field :as_of, -> { String }, optional: false, nullable: true

          field :from, -> { String }, optional: false, nullable: true

          field :key, -> { String }, optional: false, nullable: false

          field :kind, -> { Whop_sdk::Stats::Reports::Types::PlatformTrendsReportsResponseDataReportsItemWindowKind }, optional: false, nullable: false

          field :time_zone, -> { String }, optional: false, nullable: false

          field :to, -> { String }, optional: false, nullable: true
        end
      end
    end
  end
end
