# frozen_string_literal: true

module Whop_sdk
  module Types
    # Description of a node (model) including its columns and associations.
    class DescribeStatsResponseDescribeNode < Internal::Types::Model
      field :node, -> { String }, optional: false, nullable: false

      field :engine, -> { String }, optional: false, nullable: false

      field :columns, -> { Internal::Types::Array[String] }, optional: false, nullable: false

      field :sortable_columns, -> { Internal::Types::Array[String] }, optional: false, nullable: false

      field :associations, -> { Internal::Types::Array[Whop_sdk::Types::DescribeStatsResponseDescribeNodeAssociationsItem] }, optional: false, nullable: false

      field :metrics, -> { Internal::Types::Array[Whop_sdk::Types::DescribeStatsResponseDescribeNodeMetricsItem] }, optional: false, nullable: false

      field :sample, -> { Internal::Types::Array[Internal::Types::Hash[String, Object]] }, optional: false, nullable: true

      field :debug, -> { Whop_sdk::Types::DescribeStatsResponseDescribeNodeDebug }, optional: false, nullable: true
    end
  end
end
