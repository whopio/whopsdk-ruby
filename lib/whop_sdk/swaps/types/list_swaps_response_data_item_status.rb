# frozen_string_literal: true

module Whop_sdk
  module Swaps
    module Types
      module ListSwapsResponseDataItemStatus
        extend Whop_sdk::Internal::Types::Enum

        QUEUED = "queued"
        WORKING = "working"
        COMPLETE = "complete"
        FAILED = "failed"
      end
    end
  end
end
