# frozen_string_literal: true

module Whop_sdk
  module Transfers
    module Types
      # Funds a shareable link anyone with the URL can redeem and returns a `claim_link`.
      class CreateTransfersRequestBodyClaimLink < Internal::Types::Model
        field :amount, -> { Integer }, optional: false, nullable: false

        field :expires_at, -> { String }, optional: true, nullable: false

        field :origin_id, -> { String }, optional: false, nullable: false

        field :redeemable_count, -> { Integer }, optional: true, nullable: false
      end
    end
  end
end
