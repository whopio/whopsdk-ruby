# frozen_string_literal: true

module Whop_sdk
  module Types
    module PaymentTransactionTypes
      extend Whop_sdk::Internal::Types::Enum

      PURCHASE = "purchase"
      AUTHORIZE = "authorize"
      CAPTURE = "capture"
      REFUND = "refund"
      CANCELED = "canceled"
      VERIFY = "verify"
      CHARGEBACK = "chargeback"
      PRE_CHARGEBACK = "pre_chargeback"
      THREE_D_SECURE = "three_d_secure"
      FRAUD_SCREENING = "fraud_screening"
      AUTHORIZATION = "authorization"
      INSTALLMENT = "installment"
    end
  end
end
