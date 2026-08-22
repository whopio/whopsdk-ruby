# frozen_string_literal: true

module Whop_sdk
  module Types
    # Per-entity ad performance row. Returned when the `breakdown` arg on `adReport` is set.
    class AdReportBreakdownItem < Internal::Types::Model
      field :granularity, -> { Internal::Types::Array[Whop_sdk::Types::AdReportBreakdownItemGranularityItem] }, optional: false, nullable: true

      field :id, -> { String }, optional: false, nullable: false

      field :level, -> { Whop_sdk::Types::AdReportBreakdownLevels }, optional: false, nullable: false

      field :name, -> { String }, optional: false, nullable: true

      field :summary, -> { Whop_sdk::Types::AdReportBreakdownItemSummary }, optional: false, nullable: false
    end
  end
end
