# frozen_string_literal: true

module Whop_sdk
  module Stats
    module Types
      # Pagination information.
      class RawStatsResponsePagination < Internal::Types::Model
        field :next_cursor, -> { String }, optional: false, nullable: true
      end
    end
  end
end
