# frozen_string_literal: true

module Whop_sdk
  module ResolutionCenterCases
    module Types
      module SummaryResolutionCenterCasesRequestStatusItem
        extend Whop_sdk::Internal::Types::Enum

        AWAITING_MERCHANT = "awaiting_merchant"
        AWAITING_CUSTOMER = "awaiting_customer"
        UNDER_REVIEW = "under_review"
        CLOSED = "closed"
      end
    end
  end
end
