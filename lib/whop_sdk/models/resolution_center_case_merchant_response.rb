# frozen_string_literal: true

module WhopSDK
  module Models
    # The types of responses a merchant can make to a resolution.
    module ResolutionCenterCaseMerchantResponse
      extend WhopSDK::Internal::Type::Enum

      ACCEPT = :accept
      DENY = :deny
      REQUEST_MORE_INFO = :request_more_info
      APPEAL = :appeal
      RESPOND = :respond

      # @!method self.values
      #   @return [Array<Symbol>]
    end
  end
end
