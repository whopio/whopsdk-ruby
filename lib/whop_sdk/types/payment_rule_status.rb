# frozen_string_literal: true

module Whop_sdk
  module Types
    module PaymentRuleStatus
      extend Whop_sdk::Internal::Types::Enum

      ACTIVE = "active"
      INACTIVE = "inactive"
      DELETED = "deleted"
    end
  end
end
