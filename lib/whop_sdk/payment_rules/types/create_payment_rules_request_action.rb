# frozen_string_literal: true

module Whop_sdk
  module PaymentRules
    module Types
      module CreatePaymentRulesRequestAction
        extend Whop_sdk::Internal::Types::Enum

        ALLOW = "allow"
        BLOCK = "block"
        ENFORCE3DS = "enforce_3ds"
      end
    end
  end
end
