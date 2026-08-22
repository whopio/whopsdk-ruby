# frozen_string_literal: true

module Whop_sdk
  module Types
    module ExportStatus
      extend Whop_sdk::Internal::Types::Enum

      PENDING = "pending"
      PROCESSING = "processing"
      COMPLETED = "completed"
      FAILED = "failed"
      EXPIRED = "expired"
    end
  end
end
