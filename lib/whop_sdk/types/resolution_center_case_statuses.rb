# frozen_string_literal: true

module Whop_sdk
  module Types
    module ResolutionCenterCaseStatuses
      extend Whop_sdk::Internal::Types::Enum

      MERCHANT_RESPONSE_NEEDED = "merchant_response_needed"
      CUSTOMER_RESPONSE_NEEDED = "customer_response_needed"
      MERCHANT_INFO_NEEDED = "merchant_info_needed"
      CUSTOMER_INFO_NEEDED = "customer_info_needed"
      UNDER_PLATFORM_REVIEW = "under_platform_review"
      CUSTOMER_WON = "customer_won"
      MERCHANT_WON = "merchant_won"
      CUSTOMER_WITHDREW = "customer_withdrew"
    end
  end
end
