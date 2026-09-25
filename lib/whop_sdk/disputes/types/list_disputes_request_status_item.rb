# frozen_string_literal: true

module Whop_sdk
  module Disputes
    module Types
      module ListDisputesRequestStatusItem
        extend Whop_sdk::Internal::Types::Enum

        NEEDS_RESPONSE = "needs_response"
        WARNING_NEEDS_RESPONSE = "warning_needs_response"
        UNDER_REVIEW = "under_review"
        WARNING_UNDER_REVIEW = "warning_under_review"
        WON = "won"
        LOST = "lost"
        CLOSED = "closed"
        WARNING_CLOSED = "warning_closed"
      end
    end
  end
end
