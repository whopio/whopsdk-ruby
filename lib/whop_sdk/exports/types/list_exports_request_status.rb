# frozen_string_literal: true

module Whop_sdk
  module Exports
    module Types
      module ListExportsRequestStatus
        extend Whop_sdk::Internal::Types::Enum

        PENDING = "pending"
        PROCESSING = "processing"
        COMPLETED = "completed"
        FAILED = "failed"
        EXPIRED = "expired"
      end
    end
  end
end
