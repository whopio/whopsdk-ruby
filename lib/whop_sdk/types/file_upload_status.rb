# frozen_string_literal: true

module Whop_sdk
  module Types
    module FileUploadStatus
      extend Whop_sdk::Internal::Types::Enum

      PENDING = "pending"
      PROCESSING = "processing"
      READY = "ready"
      FAILED = "failed"
    end
  end
end
