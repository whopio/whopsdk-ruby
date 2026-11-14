# frozen_string_literal: true

module Whop_sdk
  module Stats
    module Reports
      module Types
        class PlatformTrendsReportsResponseData < Internal::Types::Model
          field :breakdown_by, -> { String }, optional: false, nullable: true

          field :columns, -> { Internal::Types::Array[Whop_sdk::Stats::Reports::Types::PlatformTrendsReportsResponseDataColumnsItem] }, optional: false, nullable: false

          field :data_as_of, -> { String }, optional: false, nullable: false

          field :report, -> { String }, optional: false, nullable: false

          field :reports, -> { Internal::Types::Array[Whop_sdk::Stats::Reports::Types::PlatformTrendsReportsResponseDataReportsItem] }, optional: false, nullable: false
        end
      end
    end
  end
end
