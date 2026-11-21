# frozen_string_literal: true

module Whop_sdk
  module Payouts
    module Types
      module RetrievePayoutsResponseFailureNextStep
        extend Whop_sdk::Internal::Types::Enum

        UPDATE_PAYOUT_METHOD = "update_payout_method"
        USE_ANOTHER_PAYOUT_METHOD = "use_another_payout_method"
        COMPLETE_VERIFICATION = "complete_verification"
        WITHDRAW_AGAIN = "withdraw_again"
        CONTACT_BANK = "contact_bank"
        CONTACT_SUPPORT = "contact_support"
      end
    end
  end
end
