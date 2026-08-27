# frozen_string_literal: true

module Whop_sdk
  module Types
    module PaymentStatusStatus
      extend Whop_sdk::Internal::Types::Enum

      REQUIRES_CONFIRMATION = "requires_confirmation"
      REQUIRES_ACTION = "requires_action"
      REQUIRES_CAPTURE = "requires_capture"
      CONFIRMING = "confirming"
      PROCESSING = "processing"
      SUCCEEDED = "succeeded"
      CANCELED = "canceled"
    end
  end
end
