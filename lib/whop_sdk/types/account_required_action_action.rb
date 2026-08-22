# frozen_string_literal: true

module Whop_sdk
  module Types
    module AccountRequiredActionAction
      extend Whop_sdk::Internal::Types::Enum

      DEPOSIT_FUNDS = "deposit_funds"
      SUBMIT_INFORMATION_REQUEST = "submit_information_request"
      REAUTHORIZE_PAYOUT_METHODS = "reauthorize_payout_methods"
      UPDATE_PAYOUT_PROFILE = "update_payout_profile"
      CARD_USAGE_REVIEW = "card_usage_review"
      VERIFY_IDENTITY = "verify_identity"
      SIGN_FORMATION_DOCUMENTS = "sign_formation_documents"
      CONNECT_FULFILLMENT_TRACKER = "connect_fulfillment_tracker"
      SETUP_APPLE_PAY_DOMAINS = "setup_apple_pay_domains"
      CONFIGURE_TAX_REMITTER = "configure_tax_remitter"
      ADD_VAT_REGISTRATION = "add_vat_registration"
    end
  end
end
