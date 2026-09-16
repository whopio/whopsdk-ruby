# frozen_string_literal: true

module Whop_sdk
  module PaymentRules
    module Types
      module ListPaymentRulesRequestStatus
        extend Whop_sdk::Internal::Types::Enum

        ACTIVE = "active"
        INACTIVE = "inactive"
        DELETED = "deleted"
      end
    end
  end
end
