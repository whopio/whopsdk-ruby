# frozen_string_literal: true

module Whop_sdk
  module Types
    # Description of an API resource view including its columns and associations.
    class DescribeStatsResponseDescribeView < Internal::Types::Model
      field :view, -> { String }, optional: false, nullable: false

      field :resource, -> { String }, optional: false, nullable: false

      field :model, -> { String }, optional: false, nullable: false

      field :engine, -> { String }, optional: false, nullable: false

      field :columns, -> { Internal::Types::Array[String] }, optional: false, nullable: false

      field :sortable_columns, -> { Internal::Types::Array[String] }, optional: false, nullable: false

      field :associations, -> { Internal::Types::Array[Whop_sdk::Types::DescribeStatsResponseDescribeViewAssociationsItem] }, optional: false, nullable: false

      field :metrics, -> { Internal::Types::Array[Whop_sdk::Types::DescribeStatsResponseDescribeViewMetricsItem] }, optional: false, nullable: false

      field :sample, -> { Internal::Types::Array[Internal::Types::Hash[String, Object]] }, optional: false, nullable: true

      field :debug, -> { Whop_sdk::Types::DescribeStatsResponseDescribeViewDebug }, optional: false, nullable: true
    end
  end
end
