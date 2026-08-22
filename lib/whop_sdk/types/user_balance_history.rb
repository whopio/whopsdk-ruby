# frozen_string_literal: true

module Whop_sdk
  module Types
    class UserBalanceHistory < Internal::Types::Model
      field :data, -> { Internal::Types::Array[Whop_sdk::Types::UserBalanceHistoryPoint] }, optional: false, nullable: false

      field :last, -> { Integer }, optional: false, nullable: false

      field :max, -> { Integer }, optional: false, nullable: false

      field :min, -> { Integer }, optional: false, nullable: false
    end
  end
end
