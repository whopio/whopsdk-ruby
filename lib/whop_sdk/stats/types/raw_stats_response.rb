# frozen_string_literal: true

module Whop_sdk
  module Stats
    module Types
      # Result from a stats query (raw, metric, or SQL).
      class RawStatsResponse < Internal::Types::Model
        field :columns, -> { Internal::Types::Array[String] }, optional: false, nullable: true

        field :data, -> { Internal::Types::Array[Internal::Types::Hash[String, Object]] }, optional: false, nullable: true

        field :debug, -> { Whop_sdk::Stats::Types::RawStatsResponseDebug }, optional: false, nullable: true

        field :node, -> { String }, optional: false, nullable: true

        field :pagination, -> { Whop_sdk::Stats::Types::RawStatsResponsePagination }, optional: false, nullable: true
      end
    end
  end
end
