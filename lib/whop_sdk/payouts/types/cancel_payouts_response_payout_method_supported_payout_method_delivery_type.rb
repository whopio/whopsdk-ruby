# frozen_string_literal: true

module Whop_sdk
  module Payouts
    module Types
      module CancelPayoutsResponsePayoutMethodSupportedPayoutMethodDeliveryType
        extend Whop_sdk::Internal::Types::Enum

        CASH_PICKUP = "cash_pickup"
        BANK_DEPOSIT = "bank_deposit"
        HOME_DELIVERY = "home_delivery"
        MOBILE_WALLET = "mobile_wallet"
        CARD = "card"
        CHECK = "check"
        BILL = "bill"
        CRYPTOCURRENCY = "cryptocurrency"
        UNKNOWN = "unknown"
      end
    end
  end
end
