# frozen_string_literal: true

module Whop_sdk
  module Payouts
    module Types
      # Configured fee terms for this payout method. Null when the method is not currently eligible. An amount-specific
      # quote remains authoritative.
      class PostPayoutMethodCreatedPayloadDataFeeStructure < Internal::Types::Model
        field :currency, -> { String }, optional: false, nullable: false

        field :fixed_amount, -> { Integer }, optional: false, nullable: false

        field :percentage, -> { Integer }, optional: false, nullable: false
      end
    end
  end
end
