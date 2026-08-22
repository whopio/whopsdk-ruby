# frozen_string_literal: true

module Whop_sdk
  module Types
    class AccountReserve < Internal::Types::Model
      field :amount, -> { String }, optional: false, nullable: false

      field :by_type, -> { Internal::Types::Array[Whop_sdk::Types::AccountReserveType] }, optional: false, nullable: false

      field :currency, -> { String }, optional: false, nullable: false

      field :unlocks_by_date, -> { Internal::Types::Array[Whop_sdk::Types::AccountReserveUnlock] }, optional: false, nullable: false
    end
  end
end
