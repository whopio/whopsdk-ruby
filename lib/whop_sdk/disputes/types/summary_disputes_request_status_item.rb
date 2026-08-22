# frozen_string_literal: true

module Whop_sdk
  module Disputes
    module Types
      module SummaryDisputesRequestStatusItem
        extend Whop_sdk::Internal::Types::Enum

        NEEDS_RESPONSE = "needs_response"
        UNDER_REVIEW = "under_review"
        WON = "won"
        LOST = "lost"
        CLOSED = "closed"
      end
    end
  end
end
