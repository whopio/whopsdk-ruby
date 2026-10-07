# frozen_string_literal: true

module Whop_sdk
  module Payouts
    module Types
      # The recipient of a third-party payout method. Present only for recipient payout methods.
      class PostPayoutMethodCreatedPayloadDataRecipient < Internal::Types::Model
        field :country, -> { String }, optional: false, nullable: false

        field :first_name, -> { String }, optional: false, nullable: false

        field :last_name, -> { String }, optional: false, nullable: false
      end
    end
  end
end
