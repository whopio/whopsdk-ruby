# frozen_string_literal: true

module Whop_sdk
  module Types
    class AccountReserveType < Internal::Types::Model
      field :amount, -> { String }, optional: false, nullable: false

      field :hold_period_days, -> { Integer }, optional: false, nullable: true

      field :percentage, -> { Integer }, optional: false, nullable: true

      field :type, -> { Whop_sdk::Types::AccountReserveTypeType }, optional: false, nullable: false
    end
  end
end
