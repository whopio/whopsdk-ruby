# frozen_string_literal: true

module Whop_sdk
  module Types
    class AccountReserveControl < Internal::Types::Model
      field :hold_period_days, -> { Integer }, optional: false, nullable: false

      field :percentage, -> { Integer }, optional: false, nullable: true
    end
  end
end
