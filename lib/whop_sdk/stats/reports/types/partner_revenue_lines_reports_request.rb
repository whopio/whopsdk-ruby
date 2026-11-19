# frozen_string_literal: true

module Whop_sdk
  module Stats
    module Reports
      module Types
        class PartnerRevenueLinesReportsRequest < Internal::Types::Model
          field :referring_account_id, -> { String }, optional: false, nullable: false

          field :breakdown_by, -> { Whop_sdk::Stats::Reports::Types::PartnerRevenueLinesReportsRequestBreakdownBy }, optional: true, nullable: false

          field :columns, -> { String }, optional: true, nullable: false

          field :windows, -> { String }, optional: true, nullable: false

          field :time_zone, -> { String }, optional: true, nullable: false

          field :revenue_line, -> { String }, optional: true, nullable: false

          field :income_source, -> { String }, optional: true, nullable: false

          field :order, -> { Whop_sdk::Stats::Reports::Types::PartnerRevenueLinesReportsRequestOrder }, optional: true, nullable: false

          field :direction, -> { Whop_sdk::Stats::Reports::Types::PartnerRevenueLinesReportsRequestDirection }, optional: true, nullable: false

          field :convert_to, -> { String }, optional: true, nullable: false

          field :first, -> { Integer }, optional: true, nullable: false

          field :after, -> { String }, optional: true, nullable: false
        end
      end
    end
  end
end
