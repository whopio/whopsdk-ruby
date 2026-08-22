# frozen_string_literal: true

module Whop_sdk
  module Payouts
    module Methods
      module Types
        module CreateMethodsResponseBankVerificationState
          extend Whop_sdk::Internal::Types::Enum

          CHECKING = "checking"
          VERIFIED = "verified"
          NO_DATA = "no_data"
          WARNING = "warning"
          BROKEN = "broken"
        end
      end
    end
  end
end
