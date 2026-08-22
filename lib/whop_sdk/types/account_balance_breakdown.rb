# frozen_string_literal: true

module Whop_sdk
  module Types
    class AccountBalanceBreakdown < Internal::Types::Model
      field :available, -> { String }, optional: false, nullable: false

      field :in_transit, -> { String }, optional: false, nullable: false

      field :pending, -> { String }, optional: false, nullable: false

      field :pending_settlements, -> { Internal::Types::Array[Whop_sdk::Types::AccountBalanceSettlement] }, optional: false, nullable: false

      field :reserve, -> { String }, optional: false, nullable: false
    end
  end
end
