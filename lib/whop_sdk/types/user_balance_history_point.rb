# frozen_string_literal: true

module Whop_sdk
  module Types
    class UserBalanceHistoryPoint < Internal::Types::Model
      field :t, -> { Integer }, optional: false, nullable: false

      field :v, -> { Integer }, optional: false, nullable: false
    end
  end
end
