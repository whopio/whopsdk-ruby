# frozen_string_literal: true

module Whop_sdk
  module Types
    class AccountCapabilities < Internal::Types::Model
      field :accept_bank_payments, -> { Whop_sdk::Types::AccountCapabilitiesAcceptBankPayments }, optional: false, nullable: false

      field :accept_bnpl_payments, -> { Whop_sdk::Types::AccountCapabilitiesAcceptBnplPayments }, optional: false, nullable: false

      field :accept_card_payments, -> { Whop_sdk::Types::AccountCapabilitiesAcceptCardPayments }, optional: false, nullable: false

      field :bank_deposit, -> { Whop_sdk::Types::AccountCapabilitiesBankDeposit }, optional: false, nullable: false

      field :card_deposit, -> { Whop_sdk::Types::AccountCapabilitiesCardDeposit }, optional: false, nullable: false

      field :card_issuing, -> { Whop_sdk::Types::AccountCapabilitiesCardIssuing }, optional: false, nullable: false

      field :crypto_deposit, -> { Whop_sdk::Types::AccountCapabilitiesCryptoDeposit }, optional: false, nullable: false

      field :crypto_payout, -> { Whop_sdk::Types::AccountCapabilitiesCryptoPayout }, optional: false, nullable: false

      field :instant_payout, -> { Whop_sdk::Types::AccountCapabilitiesInstantPayout }, optional: false, nullable: false

      field :run_ads, -> { Whop_sdk::Types::AccountCapabilitiesRunAds }, optional: false, nullable: false

      field :standard_payout, -> { Whop_sdk::Types::AccountCapabilitiesStandardPayout }, optional: false, nullable: false

      field :transfer, -> { Whop_sdk::Types::AccountCapabilitiesTransfer }, optional: false, nullable: false
    end
  end
end
