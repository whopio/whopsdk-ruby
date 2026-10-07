# frozen_string_literal: true

module Whop_sdk
  module Stats
    module Reports
      module Types
        class PlatformTrendsReportsResponseDataColumnsItem < Internal::Types::Model
          field :aggregate, -> { Whop_sdk::Stats::Reports::Types::PlatformTrendsReportsResponseDataColumnsItemAggregate }, optional: true, nullable: false

          field :key, -> { String }, optional: false, nullable: false

          field :name, -> { String }, optional: false, nullable: false

          field :type, -> { Whop_sdk::Stats::Reports::Types::PlatformTrendsReportsResponseDataColumnsItemType }, optional: false, nullable: false

          field :unit, -> { Whop_sdk::Stats::Reports::Types::PlatformTrendsReportsResponseDataColumnsItemUnit }, optional: true, nullable: false

          field :weight, -> { String }, optional: true, nullable: false
        end
      end
    end
  end
end
