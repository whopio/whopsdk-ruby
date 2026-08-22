# frozen_string_literal: true

module Whop_sdk
  module Stats
    module Types
      class RetrieveStatsResponse < Internal::Types::Model
        field :data, -> { Whop_sdk::Stats::Types::RetrieveStatsResponseData }, optional: false, nullable: false
      end
    end
  end
end
