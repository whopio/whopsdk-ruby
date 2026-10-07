# frozen_string_literal: true

module Whop_sdk
  module Stats
    module Reports
      module Types
        class PlatformTrendsReportsRequest < Internal::Types::Model
          field :breakdown_by, -> { Whop_sdk::Stats::Reports::Types::PlatformTrendsReportsRequestBreakdownBy }, optional: true, nullable: false

          field :columns, -> { String }, optional: true, nullable: false

          field :windows, -> { String }, optional: true, nullable: false

          field :time_zone, -> { String }, optional: true, nullable: false

          field :order, -> { Whop_sdk::Stats::Reports::Types::PlatformTrendsReportsRequestOrder }, optional: true, nullable: false

          field :direction, -> { Whop_sdk::Stats::Reports::Types::PlatformTrendsReportsRequestDirection }, optional: true, nullable: false

          field :convert_to, -> { String }, optional: true, nullable: false

          field :business_type, -> { String }, optional: true, nullable: false

          field :industry_type, -> { String }, optional: true, nullable: false

          field :account_country, -> { String }, optional: true, nullable: false

          field :customer_country, -> { String }, optional: true, nullable: false

          field :first, -> { Integer }, optional: true, nullable: false

          field :after, -> { String }, optional: true, nullable: false
        end
      end
    end
  end
end
