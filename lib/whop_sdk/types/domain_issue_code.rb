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
      UNSUPPORTED_TLD = "unsupported_tld"
      REGISTRATION_UNAVAILABLE = "registration_unavailable"
      REGISTRATION_FAILED = "registration_failed"
      RENEWAL_FAILED = "renewal_failed"
      PAYMENT_ACTION_REQUIRED = "payment_action_required"
      DOMAIN_ON_WHOP = "domain_on_whop"
      TRANSFER_PAYMENT_EXPIRED = "transfer_payment_expired"
      DOMAIN_TRANSFER_UNAVAILABLE = "domain_transfer_unavailable"
      TRANSFER_LOCKED = "transfer_locked"
      TRANSFER_AUTH_CODE_REJECTED = "transfer_auth_code_rejected"
      TRANSFER_APPROVAL_PENDING = "transfer_approval_pending"
      TRANSFER_REJECTED = "transfer_rejected"
      TRANSFER_NOT_CANCELLABLE = "transfer_not_cancellable"
      DOMAIN_TRANSFER_FAILED = "domain_transfer_failed"
      APPLE_PAY_UNVERIFIED = "apple_pay_unverified"
      PIXEL_NOT_SEEN = "pixel_not_seen"
      PIXEL_NOT_INSTALLED = "pixel_not_installed"
      PIXEL_WAITING = "pixel_waiting"
      PIXEL_UNREACHABLE = "pixel_unreachable"
      PIXEL_QUIET = "pixel_quiet"
      EMAIL_NEEDS_WHOP_DNS = "email_needs_whop_dns"
      EMAIL_UNREACHABLE = "email_unreachable"
      EMAIL_IDENTITY_IN_USE = "email_identity_in_use"
      EMAIL_VERIFICATION_FAILED = "email_verification_failed"
    end
  end
end
