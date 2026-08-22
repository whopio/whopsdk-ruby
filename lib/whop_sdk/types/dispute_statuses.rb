# frozen_string_literal: true

module Whop_sdk
  module Types
    module DisputeStatuses
      extend Whop_sdk::Internal::Types::Enum

      WARNING_NEEDS_RESPONSE = "warning_needs_response"
      WARNING_UNDER_REVIEW = "warning_under_review"
      WARNING_CLOSED = "warning_closed"
      NEEDS_RESPONSE = "needs_response"
      UNDER_REVIEW = "under_review"
      WON = "won"
      LOST = "lost"
      CLOSED = "closed"
      OTHER = "other"
    end
  end
end
