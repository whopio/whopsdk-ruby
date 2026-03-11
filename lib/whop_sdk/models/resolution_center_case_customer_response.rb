# frozen_string_literal: true

module WhopSDK
  module Models
    # The types of responses a customer can make to a resolution.
    module ResolutionCenterCaseCustomerResponse
      extend WhopSDK::Internal::Type::Enum

      RESPOND = :respond
      APPEAL = :appeal
      WITHDRAW = :withdraw

      # @!method self.values
      #   @return [Array<Symbol>]
    end
  end
end
