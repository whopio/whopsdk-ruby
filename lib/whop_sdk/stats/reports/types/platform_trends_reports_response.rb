# frozen_string_literal: true

module Whop_sdk
  module Stats
    module Reports
      module Types
        class PlatformTrendsReportsResponse < Internal::Types::Model
          field :data, -> { Whop_sdk::Stats::Reports::Types::PlatformTrendsReportsResponseData }, optional: false, nullable: false

          field :page_info, -> { Whop_sdk::Stats::Reports::Types::PlatformTrendsReportsResponsePageInfo }, optional: false, nullable: false
        end
      end
    end
  end
end
