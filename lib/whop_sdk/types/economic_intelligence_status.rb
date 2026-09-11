# frozen_string_literal: true

module Whop_sdk
  module Types
    module EconomicIntelligenceStatus
      extend Whop_sdk::Internal::Types::Enum

      QUEUED = "queued"
      PENDING = "pending"
      READY = "ready"
      EXECUTED = "executed"
      SUPERSEDED = "superseded"
      FAILED = "failed"
    end
  end
end
