# frozen_string_literal: true

module Whop_sdk
  module Stats
    module Reports
      module Types
        class PlatformTrendsReportsResponseDataReportsItem < Internal::Types::Model
          field :rows, -> { Internal::Types::Array[Whop_sdk::Stats::Reports::Types::PlatformTrendsReportsResponseDataReportsItemRowsItem] }, optional: false, nullable: false

          field :window, -> { Whop_sdk::Stats::Reports::Types::PlatformTrendsReportsResponseDataReportsItemWindow }, optional: false, nullable: false
        end
      end
    end
  end
end
