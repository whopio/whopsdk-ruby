# frozen_string_literal: true

module Whop_sdk
  module Payouts
    module Types
      # How a USD balance pays a bank in another currency: it converts into the payout method's currency, and the payout
      # leaves from the balance in that currency. Null when the payout is paid from the requested balance directly.
      class CreateQuotePayoutsResponseConversion < Internal::Types::Model
        field :converted_amount, -> { Whop_sdk::Types::Money }, optional: false, nullable: false

        field :estimated_savings, -> { Whop_sdk::Types::Money }, optional: false, nullable: true

        field :payout_fee, -> { Whop_sdk::Types::Money }, optional: false, nullable: false
      end
    end
  end
end
