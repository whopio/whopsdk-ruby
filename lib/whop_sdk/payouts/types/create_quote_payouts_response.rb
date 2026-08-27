# frozen_string_literal: true

module Whop_sdk
  module Payouts
    module Types
      class CreateQuotePayoutsResponse < Internal::Types::Model
        field :amount, -> { Whop_sdk::Types::Money }, optional: false, nullable: false

        field :destination_amount, -> { Whop_sdk::Types::Money }, optional: false, nullable: false

        field :exchange_rate, -> { Integer }, optional: false, nullable: false

        field :expires_at, -> { String }, optional: false, nullable: false

        field :fee, -> { Whop_sdk::Types::Money }, optional: false, nullable: false

        field :id, -> { String }, optional: false, nullable: false

        field :net_amount, -> { Whop_sdk::Types::Money }, optional: false, nullable: false

        field :object, -> { Whop_sdk::Payouts::Types::CreateQuotePayoutsResponseObject }, optional: false, nullable: false

        field :quote_token, -> { String }, optional: false, nullable: false
      end
    end
  end
end
