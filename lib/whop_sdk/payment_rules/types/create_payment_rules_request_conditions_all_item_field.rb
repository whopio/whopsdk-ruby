# frozen_string_literal: true

module Whop_sdk
  module PaymentRules
    module Types
      module CreatePaymentRulesRequestConditionsAllItemField
        extend Whop_sdk::Internal::Types::Enum

        RISK_SCORE = "risk_score"
        CARD_COUNTRY = "card_country"
        CUSTOMER_EMAIL = "customer_email"
      end
    end
  end
end
