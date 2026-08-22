# frozen_string_literal: true

module Whop_sdk
  module Types
    module MediaAssetStatus
      extend Whop_sdk::Internal::Types::Enum

      PROCESSING = "processing"
      READY = "ready"
      FAILED = "failed"
    end
  end
end
