# frozen_string_literal: true

module Whop_sdk
  module Types
    class CheckoutSessionQuote < Internal::Types::Model
      field :base_amount, -> { Integer }, optional: false, nullable: false

      field :base_currency, -> { String }, optional: false, nullable: false

      field :breakdown, -> { Whop_sdk::Types::CheckoutSessionBreakdown }, optional: false, nullable: false

      field :currency, -> { String }, optional: false, nullable: false

      field :exchange_rate, -> { Integer }, optional: false, nullable: true

      field :expires_at, -> { String }, optional: false, nullable: false

      field :quoted_at, -> { String }, optional: false, nullable: false

      field :trial_skipped, -> { Internal::Types::Boolean }, optional: false, nullable: false
    end
  end
end
