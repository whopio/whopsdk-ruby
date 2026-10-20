# frozen_string_literal: true

module Whop_sdk
  module Types
    module FinancingProviderStatus
      extend Whop_sdk::Internal::Types::Enum

      ELIGIBLE = "eligible"
      NEEDS_ACTION = "needs_action"
      IN_REVIEW = "in_review"
      ACTIVE = "active"
      INACTIVE = "inactive"
    end
  end
end
