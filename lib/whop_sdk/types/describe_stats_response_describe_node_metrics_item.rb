# frozen_string_literal: true

module Whop_sdk
  module Types
    class DescribeStatsResponseDescribeNodeMetricsItem < Internal::Types::Model
      field :name, -> { String }, optional: false, nullable: false

      field :node_path, -> { String }, optional: false, nullable: false

      field :supported_engines, -> { Internal::Types::Array[String] }, optional: false, nullable: false
    end
  end
end
