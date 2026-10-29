# frozen_string_literal: true

module Whop_sdk
  module Types
    module AccountRequiredActionAction
      extend Whop_sdk::Internal::Types::Enum

      DEPOSIT_FUNDS = "deposit_funds"
      REVIEW_HELD_PAYMENTS = "review_held_payments"
      SUBMIT_INFORMATION_REQUEST = "submit_information_request"
      UPDATE_AUTOMATIC_WITHDRAWAL_METHOD = "update_automatic_withdrawal_method"
      REAUTHORIZE_PAYOUT_METHODS = "reauthorize_payout_methods"
      UPDATE_PAYOUT_METHOD = "update_payout_method"
      UPDATE_PAYOUT_PROFILE = "update_payout_profile"
      CARD_USAGE_REVIEW = "card_usage_review"
      VERIFY_IDENTITY = "verify_identity"
      SCALE_ACCOUNT_SETUP = "scale_account_setup"
      SIGN_FORMATION_DOCUMENTS = "sign_formation_documents"
      CONFIGURE_TAX_REMITTER = "configure_tax_remitter"
      ADD_VAT_REGISTRATION = "add_vat_registration"
      CONFIRM_TAX_DETAILS = "confirm_tax_details"
      ACCEPT_PAYOUT_TERMS = "accept_payout_terms"
      ENABLE_TWO_FACTOR_AUTHENTICATION = "enable_two_factor_authentication"
      RESPOND_TO_ABUSE_REPORT = "respond_to_abuse_report"
    end
  end
end
