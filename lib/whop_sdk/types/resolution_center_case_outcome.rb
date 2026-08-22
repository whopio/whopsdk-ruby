# frozen_string_literal: true

module Whop_sdk
  module Types
    module ResolutionCenterCaseOutcome
      extend Whop_sdk::Internal::Types::Enum

      CUSTOMER_WON = "customer_won"
      MERCHANT_WON = "merchant_won"
      WITHDRAWN = "withdrawn"
    end
  end
end
