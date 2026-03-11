# frozen_string_literal: true

module WhopSDK
  module Models
    # The different types of issues a resolution can be
    module ResolutionCenterCaseIssueType
      extend WhopSDK::Internal::Type::Enum

      FORGOT_TO_CANCEL = :forgot_to_cancel
      ITEM_NOT_RECEIVED = :item_not_received
      SIGNIFICANTLY_NOT_AS_DESCRIBED = :significantly_not_as_described
      UNAUTHORIZED_TRANSACTION = :unauthorized_transaction
      PRODUCT_UNACCEPTABLE = :product_unacceptable

      # @!method self.values
      #   @return [Array<Symbol>]
    end
  end
end
