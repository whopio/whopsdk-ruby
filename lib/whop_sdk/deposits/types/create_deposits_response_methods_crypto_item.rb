# frozen_string_literal: true

module Whop_sdk
  module Deposits
    module Types
      class CreateDepositsResponseMethodsCryptoItem < Internal::Types::Model
        field :deposit_address, -> { String }, optional: false, nullable: true

        field :icon_url, -> { String }, optional: false, nullable: true

        field :name, -> { Whop_sdk::Deposits::Types::CreateDepositsResponseMethodsCryptoItemName }, optional: false, nullable: false

        field :supported_currencies, -> { Internal::Types::Array[Whop_sdk::Deposits::Types::CreateDepositsResponseMethodsCryptoItemSupportedCurrenciesItem] }, optional: false, nullable: false
      end
    end
  end
end
