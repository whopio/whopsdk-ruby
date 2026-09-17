# frozen_string_literal: true

module Whop_sdk
  module Accounts
    module Fees
      module Types
        # This platform's default markups for every account connected to it.
        class UpdateFeesRequestChildMarkups < Internal::Types::Model
          field :crypto_swaps, -> { Whop_sdk::Accounts::Fees::Types::UpdateFeesRequestChildMarkupsCryptoSwaps }, optional: true, nullable: false

          field :deposits, -> { Internal::Types::Hash[String, Whop_sdk::Accounts::Fees::Types::UpdateFeesRequestChildMarkupsDepositsValue] }, optional: true, nullable: false

          field :payments, -> { Whop_sdk::Accounts::Fees::Types::UpdateFeesRequestChildMarkupsPayments }, optional: true, nullable: false

          field :payouts, -> { Internal::Types::Hash[String, Whop_sdk::Accounts::Fees::Types::UpdateFeesRequestChildMarkupsPayoutsValue] }, optional: true, nullable: false

          field :transfers, -> { Whop_sdk::Accounts::Fees::Types::UpdateFeesRequestChildMarkupsTransfers }, optional: true, nullable: false
        end
      end
    end
  end
end
