# frozen_string_literal: true

module Whop_sdk
  module Types
    module ResolutionCenterCaseIssueTypes
      extend Whop_sdk::Internal::Types::Enum

      FORGOT_TO_CANCEL = "forgot_to_cancel"
      ITEM_NOT_RECEIVED = "item_not_received"
      SIGNIFICANTLY_NOT_AS_DESCRIBED = "significantly_not_as_described"
      UNAUTHORIZED_TRANSACTION = "unauthorized_transaction"
      PRODUCT_UNACCEPTABLE = "product_unacceptable"
    end
  end
end
