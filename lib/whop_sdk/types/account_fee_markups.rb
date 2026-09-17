# frozen_string_literal: true

module Whop_sdk
  module Types
    class AccountFeeMarkups < Internal::Types::Model
      field :crypto_swaps, -> { Whop_sdk::Types::AccountFeeMarkup }, optional: false, nullable: false

      field :deposits, -> { Internal::Types::Hash[String, Whop_sdk::Types::AccountFeeMarkup] }, optional: false, nullable: false

      field :payments, -> { Whop_sdk::Types::AccountFeeMarkup }, optional: false, nullable: false

      field :payouts, -> { Internal::Types::Hash[String, Whop_sdk::Types::AccountFeeMarkup] }, optional: false, nullable: false

      field :transfers, -> { Whop_sdk::Types::AccountFeeMarkup }, optional: false, nullable: false
    end
  end
end
