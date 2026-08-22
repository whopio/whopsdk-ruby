# frozen_string_literal: true

module Whop_sdk
  module Stats
    module Types
      class DescribeStatsResponse < Internal::Types::Model
        extend Whop_sdk::Internal::Types::Union

        discriminant :typename

        member -> { Whop_sdk::Types::DescribeStatsResponseDescribeRoot }, key: "DESCRIBE_ROOT"

        member -> { Whop_sdk::Types::DescribeStatsResponseDescribeNode }, key: "DESCRIBE_NODE"

        member -> { Whop_sdk::Types::DescribeStatsResponseDescribeMetric }, key: "DESCRIBE_METRIC"

        member -> { Whop_sdk::Types::DescribeStatsResponseDescribeView }, key: "DESCRIBE_VIEW"
      end
    end
  end
end
