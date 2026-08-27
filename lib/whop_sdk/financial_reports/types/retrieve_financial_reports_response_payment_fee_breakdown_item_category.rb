# frozen_string_literal: true

module Whop_sdk
  module FinancialReports
    module Types
      module RetrieveFinancialReportsResponsePaymentFeeBreakdownItemCategory
        extend Whop_sdk::Internal::Types::Enum

        APP_STORE_PAYMENTS = "app_store_payments"
        BANK_PAYMENTS = "bank_payments"
        BUY_NOW_PAY_LATER = "buy_now_pay_later"
        CARD_PAYMENTS = "card_payments"
        CRYPTO_PAYMENTS = "crypto_payments"
        FRAUD_PREVENTION = "fraud_prevention"
        LOCAL_PAYMENTS = "local_payments"
        OTHER_PAYMENT_METHODS = "other_payment_methods"
        SUBSCRIPTION_BILLING = "subscription_billing"
        WALLET_PAYMENTS = "wallet_payments"
        WHOP_BALANCE = "whop_balance"
        WHOP_ORCHESTRATION = "whop_orchestration"
      end
    end
  end
end
