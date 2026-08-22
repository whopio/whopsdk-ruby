# frozen_string_literal: true

module Whop_sdk
  module Payouts
    module Types
      # Fee and delivery estimate for withdrawing the requested amount through this method. Null unless an amount was
      # provided, or when the estimate is unavailable.
      class PostPayoutMethodCreatedPayloadDataQuote < Internal::Types::Model
        field :amount, -> { Integer }, optional: false, nullable: false

        field :currency, -> { String }, optional: false, nullable: false

        field :exchange_rate, -> { Integer }, optional: false, nullable: false

        field :instant, -> { Whop_sdk::Payouts::Types::PostPayoutMethodCreatedPayloadDataQuoteInstant }, optional: false, nullable: true

        field :max_limit, -> { Integer }, optional: false, nullable: true

        field :min_limit, -> { Integer }, optional: false, nullable: false

        field :standard, -> { Whop_sdk::Payouts::Types::PostPayoutMethodCreatedPayloadDataQuoteStandard }, optional: false, nullable: true
      end
    end
  end
end
