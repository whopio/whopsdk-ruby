# frozen_string_literal: true

module Whop_sdk
  module Stats
    module Types
      class ListStatsResponse < Internal::Types::Model
        field :data, -> { Internal::Types::Array[Whop_sdk::Stats::Types::ListStatsResponseDataItem] }, optional: false, nullable: false
      end
    end
  end
end
