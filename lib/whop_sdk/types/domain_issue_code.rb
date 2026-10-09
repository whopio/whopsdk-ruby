# frozen_string_literal: true

module Whop_sdk
  module Types
    module DomainIssueCode
      extend Whop_sdk::Internal::Types::Enum

      VERIFICATION_REQUIRED = "verification_required"
      VERIFICATION_EXPIRED = "verification_expired"
      OWNERSHIP_CONFLICT = "ownership_conflict"
      OWNERSHIP_LOST = "ownership_lost"
      DNS_REQUIRED = "dns_required"
      PROVIDER_VALIDATION = "provider_validation"
      CERTIFICATE_PENDING = "certificate_pending"
      EXPIRING_SOON = "expiring_soon"
      ACCOUNT_UNAVAILABLE = "account_unavailable"
      CHECK_FAILED = "check_failed"
      PURCHASE_EXPIRED = "purchase_expired"
      DOMAIN_UNAVAILABLE = "domain_unavailable"
      PREMIUM_NOT_SUPPORTED = "premium_not_supported"
      UNSUPPORTED_TLD = "unsupported_tld"
      REGISTRATION_UNAVAILABLE = "registration_unavailable"
      REGISTRATION_PREMIUM = "registration_premium"
      REGISTRATION_FAILED = "registration_failed"
      RENEWAL_FAILED = "renewal_failed"
      PAYMENT_ACTION_REQUIRED = "payment_action_required"
    end
  end
end
