# frozen_string_literal: true

module Whop_sdk
  module Payouts
    module Types
      # An optional payout method to connect for estimated savings. The quote still uses the requested saved method.
      class CreateQuotePayoutsResponseRecommendedMethod < Internal::Types::Model
        field :country, -> { String }, optional: false, nullable: false

        field :destination_currency, -> { String }, optional: false, nullable: false

        field :estimated_arrival, -> { String }, optional: false, nullable: true

        field :estimated_fee, -> { Whop_sdk::Types::Money }, optional: false, nullable: false

        field :estimated_savings, -> { Whop_sdk::Types::Money }, optional: false, nullable: false

        field :name, -> { String }, optional: false, nullable: false

        field :supported_payout_method_id, -> { String }, optional: false, nullable: false
      end
    end
  end
end
