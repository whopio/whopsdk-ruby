# frozen_string_literal: true

module Whop_sdk
  module EconomicIntelligence
    module Types
      module UpdateEconomicIntelligenceRequestStatus
        extend Whop_sdk::Internal::Types::Enum

        RUNNING = "running"
        EXECUTED = "executed"
        INCOMPLETE = "incomplete"
        SUPERSEDED = "superseded"
        ACKNOWLEDGED = "acknowledged"
      end
    end
  end
end
