# frozen_string_literal: true

module Whop_sdk
  module Payouts
    module Types
      # Standard-delivery estimate. Null if the method does not support standard delivery, or the amount does not cover
      # the fee.
      class PostPayoutMethodCreatedPayloadDataQuoteStandard < Internal::Types::Model
        field :fee, -> { Integer }, optional: false, nullable: false

        field :total_received, -> { Integer }, optional: false, nullable: false
      end
    end
  end
end
