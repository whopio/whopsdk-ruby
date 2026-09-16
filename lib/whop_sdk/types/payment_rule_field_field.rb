# frozen_string_literal: true

module Whop_sdk
  module Types
    module PaymentRuleFieldField
      extend Whop_sdk::Internal::Types::Enum

      RISK_SCORE = "risk_score"
      AMOUNT_IN_USD = "amount_in_usd"
      CARD_COUNTRY = "card_country"
      CUSTOMER_EMAIL = "customer_email"
      IP_ADDRESS = "ip_address"
    end
  end
end
