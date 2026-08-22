# frozen_string_literal: true

module Whop_sdk
  module Payouts
    module Types
      # Instant-delivery estimate. Null if the method does not support instant delivery, instant delivery is unavailable
      # for the account, or the amount does not cover the fee.
      class PostPayoutMethodCreatedPayloadDataQuoteInstant < Internal::Types::Model
        field :fee, -> { Integer }, optional: false, nullable: false

        field :total_received, -> { Integer }, optional: false, nullable: false
      end
    end
  end
end
