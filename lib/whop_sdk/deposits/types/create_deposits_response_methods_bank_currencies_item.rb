# frozen_string_literal: true

module Whop_sdk
  module Deposits
    module Types
      class CreateDepositsResponseMethodsBankCurrenciesItem < Internal::Types::Model
        field :account_number, -> { String }, optional: false, nullable: true

        field :currency, -> { String }, optional: false, nullable: false

        field :deposit_bank_address, -> { String }, optional: false, nullable: true

        field :deposit_bank_name, -> { String }, optional: false, nullable: true

        field :deposit_beneficiary_name, -> { String }, optional: false, nullable: true

        field :deposit_reference, -> { String }, optional: false, nullable: true

        field :rails, -> { Internal::Types::Array[Whop_sdk::Deposits::Types::CreateDepositsResponseMethodsBankCurrenciesItemRailsItem] }, optional: false, nullable: false

        field :routing_number, -> { String }, optional: false, nullable: true

        field :swift_bic, -> { String }, optional: false, nullable: true
      end
    end
  end
end
