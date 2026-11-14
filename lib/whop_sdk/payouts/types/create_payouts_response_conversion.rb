# frozen_string_literal: true

module Whop_sdk
  module Payouts
    module Types
      # How the balance was converted into the payout currency before the payout was sent. `null` when the payout was
      # sent from a balance in its own currency.
      class CreatePayoutsResponseConversion < Internal::Types::Model
        field :from_amount, -> { String }, optional: false, nullable: false

        field :from_currency, -> { String }, optional: false, nullable: false

        field :rate, -> { Integer }, optional: false, nullable: false
      end
    end
  end
end
