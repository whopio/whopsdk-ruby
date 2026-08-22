# frozen_string_literal: true

module Whop_sdk
  module Stats
    module Types
      # Debug information including engine and SQL.
      class RawStatsResponseDebug < Internal::Types::Model
        field :engine, -> { String }, optional: false, nullable: true

        field :request_id, -> { String }, optional: false, nullable: true

        field :sql, -> { String }, optional: false, nullable: true
      end
    end
  end
end
