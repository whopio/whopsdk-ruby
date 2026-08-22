# frozen_string_literal: true

module Whop_sdk
  module Types
    # An ads performance report. Always returns a summary. The `granularity` field contains a per-bucket time series
    # when the `granularity` arg is set; the `breakdown` field contains per-entity rows when the `breakdown` arg is set.
    class AdReport < Internal::Types::Model
      field :breakdown, -> { Internal::Types::Array[Whop_sdk::Types::AdReportBreakdownItem] }, optional: false, nullable: true

      field :granularity, -> { Internal::Types::Array[Whop_sdk::Types::AdReportGranularityItem] }, optional: false, nullable: true

      field :summary, -> { Whop_sdk::Types::AdReportSummary }, optional: false, nullable: false
    end
  end
end
