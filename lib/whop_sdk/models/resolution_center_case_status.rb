# frozen_string_literal: true

module WhopSDK
  module Models
    # The statuses a resolution object can have
    module ResolutionCenterCaseStatus
      extend WhopSDK::Internal::Type::Enum

      MERCHANT_RESPONSE_NEEDED = :merchant_response_needed
      CUSTOMER_RESPONSE_NEEDED = :customer_response_needed
      MERCHANT_INFO_NEEDED = :merchant_info_needed
      CUSTOMER_INFO_NEEDED = :customer_info_needed
      UNDER_PLATFORM_REVIEW = :under_platform_review
      CUSTOMER_WON = :customer_won
      MERCHANT_WON = :merchant_won
      CUSTOMER_WITHDREW = :customer_withdrew

      # @!method self.values
      #   @return [Array<Symbol>]
    end
  end
end
