# frozen_string_literal: true

module Whop_sdk
  module Payouts
    module Types
      # Estimated arrival times before an amount-specific quote is requested. Null when the method is not currently
      # eligible.
      class PostPayoutMethodCreatedPayloadDataEstimatedArrival < Internal::Types::Model
        field :instant, -> { String }, optional: false, nullable: true

        field :standard, -> { String }, optional: false, nullable: true
      end
    end
  end
end
