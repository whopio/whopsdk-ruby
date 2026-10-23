# frozen_string_literal: true

module Whop_sdk
  module PaymentRules
    module Types
      module ReplacePaymentRulesRequestConditionsAllItemField
        extend Whop_sdk::Internal::Types::Enum

        RISK_SCORE = "risk_score"
        AMOUNT_IN_USD = "amount_in_usd"
        CARD_COUNTRY = "card_country"
        CARD_BRAND = "card_brand"
        CARD_FUNDING = "card_funding"
        CARD_BIN = "card_bin"
        CUSTOMER_EMAIL = "customer_email"
        EMAIL_DOMAIN = "email_domain"
        IP_ADDRESS = "ip_address"
        IP_COUNTRY = "ip_country"
      end
    end
  end
end
