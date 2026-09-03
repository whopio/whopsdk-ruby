# frozen_string_literal: true

module Whop_sdk
  module Payouts
    module Methods
      module Types
        module ListMethodsResponseLimitsStandardErrorCode
          extend Whop_sdk::Internal::Types::Enum

          ACCOUNT_SUSPENDED = "account_suspended"
          BLOCK_MOVE_MONEY_OUT_BECAUSE_CLAWBACK = "block_move_money_out_because_clawback"
          SUPPORTABILITY_CHECK_PAYOUT_STATUS_HOLD = "supportability_check_payout_status_hold"
          KYC_COMPLETED = "kyc_completed"
          RMI_CLEAR = "rmi_clear"
          IDENTITY_RFI_CLEAR = "identity_rfi_clear"
          ECOMMERCE_FULFILLMENT_CONNECTED = "ecommerce_fulfillment_connected"
          BLOCK_MOVE_MONEY_OUT = "block_move_money_out"
          BLOCK_MOVE_MONEY_OUT_SET_BY_PARENT = "block_move_money_out_set_by_parent"
          CARD_USAGE_REVIEW_PAYOUT_STATUS_HOLD = "card_usage_review_payout_status_hold"
          NO_AVAILABLE_BALANCE = "no_available_balance"
        end
      end
    end
  end
end
