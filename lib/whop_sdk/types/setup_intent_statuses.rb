# frozen_string_literal: true

module Whop_sdk
  module Types
    module SetupIntentStatuses
      extend Whop_sdk::Internal::Types::Enum

      PROCESSING = "processing"
      SUCCEEDED = "succeeded"
      CANCELED = "canceled"
      REQUIRES_ACTION = "requires_action"
    end
  end
end
