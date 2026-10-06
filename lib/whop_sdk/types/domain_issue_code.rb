# frozen_string_literal: true

module Whop_sdk
  module Types
    module DomainIssueCode
      extend Whop_sdk::Internal::Types::Enum

      OWNERSHIP_REQUIRED = "ownership_required"
      DNS_REQUIRED = "dns_required"
      PROVIDER_VALIDATION = "provider_validation"
      CERTIFICATE_PENDING = "certificate_pending"
      EXPIRING_SOON = "expiring_soon"
      OWNERSHIP_CONFLICT = "ownership_conflict"
      ACCOUNT_UNAVAILABLE = "account_unavailable"
      CHECK_FAILED = "check_failed"
      DOMAIN_UNAVAILABLE = "domain_unavailable"
      PREMIUM_NOT_SUPPORTED = "premium_not_supported"
      UNSUPPORTED_TLD = "unsupported_tld"
      REGISTRATION_FAILED = "registration_failed"
      RENEWAL_FAILED = "renewal_failed"
      PAYMENT_ACTION_REQUIRED = "payment_action_required"
    end
  end
end
