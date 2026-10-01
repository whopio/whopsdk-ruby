# frozen_string_literal: true

module Whop_sdk
  module Types
    class AccountReserveUnlockType < Internal::Types::Model
      field :amount, -> { String }, optional: false, nullable: false

      field :type, -> { Whop_sdk::Types::AccountReserveUnlockTypeType }, optional: false, nullable: false
    end
  end
end
