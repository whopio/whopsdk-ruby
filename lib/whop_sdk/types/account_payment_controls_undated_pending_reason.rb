# frozen_string_literal: true

module Whop_sdk
  module Types
    module AccountPaymentControlsUndatedPendingReason
      extend Whop_sdk::Internal::Types::Enum

      KYC_INCOMPLETE = "kyc_incomplete"
      PENDING_INFORMATION_REQUEST = "pending_information_request"
      UPDATE_PAYOUT_PROFILE = "update_payout_profile"
      COMPLIANCE_REVIEW = "compliance_review"
      WITHDRAWALS_DISABLED = "withdrawals_disabled"
    end
  end
end
