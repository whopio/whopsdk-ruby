# frozen_string_literal: true

module Whop_sdk
  module Payouts
    module SupportedMethods
      module Types
        module ListSupportedMethodsResponseDataItemCategory
          extend Whop_sdk::Internal::Types::Enum

          BANK_DEPOSIT = "bank_deposit"
          CRYPTO = "crypto"
          PAYMENT_APP = "payment_app"
        end
      end
    end
  end
end
