# frozen_string_literal: true

module Whop_sdk
  module Deposits
    module Types
      # Bank deposit details. Only present when bank deposits are active for the destination account.
      class CreateDepositsResponseMethodsBank < Internal::Types::Model
        field :currencies, -> { Internal::Types::Array[Whop_sdk::Deposits::Types::CreateDepositsResponseMethodsBankCurrenciesItem] }, optional: false, nullable: false
      end
    end
  end
end
