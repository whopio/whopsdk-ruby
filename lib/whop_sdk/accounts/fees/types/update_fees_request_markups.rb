# frozen_string_literal: true

module Whop_sdk
  module Accounts
    module Fees
      module Types
        # Markups on this connected account, set by the platform it is connected to.
        class UpdateFeesRequestMarkups < Internal::Types::Model
          field :card_spend, -> { Whop_sdk::Accounts::Fees::Types::UpdateFeesRequestMarkupsCardSpend }, optional: true, nullable: false

          field :crypto_swaps, -> { Whop_sdk::Accounts::Fees::Types::UpdateFeesRequestMarkupsCryptoSwaps }, optional: true, nullable: false

          field :deposits, -> { Internal::Types::Hash[String, Whop_sdk::Accounts::Fees::Types::UpdateFeesRequestMarkupsDepositsValue] }, optional: true, nullable: false

          field :payments, -> { Whop_sdk::Accounts::Fees::Types::UpdateFeesRequestMarkupsPayments }, optional: true, nullable: false

          field :payouts, -> { Internal::Types::Hash[String, Whop_sdk::Accounts::Fees::Types::UpdateFeesRequestMarkupsPayoutsValue] }, optional: true, nullable: false

          field :transfers, -> { Whop_sdk::Accounts::Fees::Types::UpdateFeesRequestMarkupsTransfers }, optional: true, nullable: false
        end
      end
    end
  end
end
