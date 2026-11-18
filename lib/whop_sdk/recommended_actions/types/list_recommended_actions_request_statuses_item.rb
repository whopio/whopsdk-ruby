# frozen_string_literal: true

module Whop_sdk
  module RecommendedActions
    module Types
      module ListRecommendedActionsRequestStatusesItem
        extend Whop_sdk::Internal::Types::Enum

        PREPARING = "preparing"
        READY = "ready"
        RUNNING = "running"
        EXECUTED = "executed"
        FAILED = "failed"
        DISMISSED = "dismissed"
        SUPERSEDED = "superseded"
      end
    end
  end
end
