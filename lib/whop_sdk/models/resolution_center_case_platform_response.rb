# frozen_string_literal: true

module WhopSDK
  module Models
    # The types of responses the platform can make to a resolution.
    module ResolutionCenterCasePlatformResponse
      extend WhopSDK::Internal::Type::Enum

      REQUEST_BUYER_INFO = :request_buyer_info
      REQUEST_MERCHANT_INFO = :request_merchant_info
      MERCHANT_WINS = :merchant_wins
      PLATFORM_REFUND = :platform_refund
      MERCHANT_REFUND = :merchant_refund

      # @!method self.values
      #   @return [Array<Symbol>]
    end
  end
end
