# frozen_string_literal: true

module Whop_sdk
  module Types
    module FinancingProviderReason
      extend Whop_sdk::Internal::Types::Enum

      ACCOUNT_NOT_SUPPORTED = "account_not_supported"
      PAYIN_ACCOUNT_REQUIRED = "payin_account_required"
      PAYMENT_ACCOUNT_REQUIRED = "payment_account_required"
      PROCESSOR_CONNECTION_REQUIRED = "processor_connection_required"
      MINIMUM_VOLUME_NOT_MET = "minimum_volume_not_met"
      TURNED_OFF_IN_CHECKOUT_SETTINGS = "turned_off_in_checkout_settings"
      PROVIDER_REVIEW = "provider_review"
      DISPUTE_RATE_NEAR_LIMIT = "dispute_rate_near_limit"
      DISPUTE_RATE_EXCEEDED = "dispute_rate_exceeded"
      WHOP_RISK_CONTROL = "whop_risk_control"
      NOT_INCLUDED = "not_included"
      TURNED_OFF = "turned_off"
      DECLINED = "declined"
      SETUP_FAILED = "setup_failed"
      PAYOUT_ACCOUNT_COUNTRY_UNSUPPORTED = "payout_account_country_unsupported"
      SELLER_COUNTRY_UNSUPPORTED = "seller_country_unsupported"
      APPROVED_DISPUTE_RATE_TOO_HIGH = "approved_dispute_rate_too_high"
      RESTRICTED_INDUSTRY = "restricted_industry"
      INCOME_CLAIMS = "income_claims"
      MISSING_STORE_DETAILS = "missing_store_details"
      DUPLICATE_ACCOUNT = "duplicate_account"
      INVALID_WEBSITE = "invalid_website"
      UNSPECIFIED = "unspecified"
    end
  end
end
