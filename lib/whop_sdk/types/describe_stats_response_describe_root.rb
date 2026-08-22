# frozen_string_literal: true

module Whop_sdk
  module Types
    # Root schema description showing available nodes, views, and metrics.
    class DescribeStatsResponseDescribeRoot < Internal::Types::Model
      field :nodes, -> { Internal::Types::Array[String] }, optional: false, nullable: false

      field :views, -> { Internal::Types::Array[String] }, optional: false, nullable: false

      field :metrics, -> { Internal::Types::Array[Whop_sdk::Types::DescribeStatsResponseDescribeRootMetricsItem] }, optional: false, nullable: false

      field :debug, -> { Whop_sdk::Types::DescribeStatsResponseDescribeRootDebug }, optional: false, nullable: true
    end
  end
end
