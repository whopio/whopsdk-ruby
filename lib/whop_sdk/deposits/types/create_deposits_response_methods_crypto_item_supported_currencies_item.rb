# frozen_string_literal: true

module Whop_sdk
  module Deposits
    module Types
      class CreateDepositsResponseMethodsCryptoItemSupportedCurrenciesItem < Internal::Types::Model
        field :icon_url, -> { String }, optional: false, nullable: true

        field :name, -> { Whop_sdk::Deposits::Types::CreateDepositsResponseMethodsCryptoItemSupportedCurrenciesItemName }, optional: false, nullable: false
      end
    end
  end
end
