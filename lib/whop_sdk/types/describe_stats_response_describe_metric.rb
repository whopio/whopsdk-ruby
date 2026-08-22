# frozen_string_literal: true

module Whop_sdk
  module Types
    # Description of a metric including its configuration and SQL.
    class DescribeStatsResponseDescribeMetric < Internal::Types::Model
      field :metric, -> { String }, optional: false, nullable: false

      field :node, -> { String }, optional: false, nullable: false

      field :engine, -> { String }, optional: false, nullable: false

      field :timestamp_column, -> { String }, optional: false, nullable: false

      field :supported_engines, -> { Internal::Types::Array[String] }, optional: false, nullable: false

      field :filterable_columns, -> { Internal::Types::Array[String] }, optional: false, nullable: false

      field :breakdownable_columns, -> { Internal::Types::Array[String] }, optional: false, nullable: false

      field :sql, -> { String }, optional: false, nullable: true

      field :debug, -> { Whop_sdk::Types::DescribeStatsResponseDescribeMetricDebug }, optional: false, nullable: true
    end
  end
end
