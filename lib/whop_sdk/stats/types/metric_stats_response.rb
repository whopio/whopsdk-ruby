# frozen_string_literal: true

module Whop_sdk
  module Stats
    module Types
      # Result from a stats query (raw, metric, or SQL).
      class MetricStatsResponse < Internal::Types::Model
        field :columns, -> { Internal::Types::Array[String] }, optional: false, nullable: true

        field :data, -> { Internal::Types::Array[Internal::Types::Hash[String, Object]] }, optional: false, nullable: true

        field :debug, -> { Whop_sdk::Stats::Types::MetricStatsResponseDebug }, optional: false, nullable: true

        field :node, -> { String }, optional: false, nullable: true

        field :pagination, -> { Whop_sdk::Stats::Types::MetricStatsResponsePagination }, optional: false, nullable: true

        field :typename, -> { Whop_sdk::Stats::Types::MetricStatsResponseTypename }, optional: false, nullable: false
      end
    end
  end
end
