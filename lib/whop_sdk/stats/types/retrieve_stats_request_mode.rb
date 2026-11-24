# frozen_string_literal: true

module Whop_sdk
  module Stats
    module Types
      module RetrieveStatsRequestMode
        extend Whop_sdk::Internal::Types::Enum

        GLOBAL = "global"
        OWNER = "owner"
        TRENDS = "trends"
      end
    end
  end
end
