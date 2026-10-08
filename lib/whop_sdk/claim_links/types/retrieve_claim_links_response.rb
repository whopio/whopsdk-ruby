# frozen_string_literal: true

module Whop_sdk
  module ClaimLinks
    module Types
      # A shareable link anyone holding its code can open to claim the funds.
      class RetrieveClaimLinksResponse < Internal::Types::Model
        field :amount, -> { String }, optional: false, nullable: false

        field :claim_url, -> { String }, optional: false, nullable: true

        field :claimable, -> { Internal::Types::Boolean }, optional: false, nullable: false

        field :code, -> { String }, optional: false, nullable: true

        field :created_at, -> { String }, optional: false, nullable: false

        field :currency, -> { String }, optional: false, nullable: false

        field :expires_at, -> { String }, optional: false, nullable: true

        field :id, -> { String }, optional: false, nullable: false

        field :object, -> { Whop_sdk::ClaimLinks::Types::RetrieveClaimLinksResponseObject }, optional: false, nullable: false

        field :redeemable_count, -> { Integer }, optional: false, nullable: false

        field :redeemed_count, -> { Integer }, optional: false, nullable: false

        field :remaining_claims, -> { Integer }, optional: false, nullable: false

        field :sender, -> { Whop_sdk::ClaimLinks::Types::RetrieveClaimLinksResponseSender }, optional: false, nullable: false

        field :source, -> { Whop_sdk::ClaimLinks::Types::RetrieveClaimLinksResponseSource }, optional: false, nullable: false

        field :status, -> { Whop_sdk::ClaimLinks::Types::RetrieveClaimLinksResponseStatus }, optional: false, nullable: false
      end
    end
  end
end
