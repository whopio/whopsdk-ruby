# frozen_string_literal: true

module Whop_sdk
  module Transfers
    module Types
      module PostTransferFailedPayloadDataStatus
        extend Whop_sdk::Internal::Types::Enum

        PROCESSING = "processing"
        SUCCEEDED = "succeeded"
        FAILED = "failed"
      end
    end
  end
end
