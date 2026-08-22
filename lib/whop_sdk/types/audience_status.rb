# frozen_string_literal: true

module Whop_sdk
  module Types
    module AudienceStatus
      extend Whop_sdk::Internal::Types::Enum

      PENDING = "pending"
      PROCESSING = "processing"
      SYNCING = "syncing"
      READY = "ready"
      PARTIAL = "partial"
      FAILED = "failed"
    end
  end
end
