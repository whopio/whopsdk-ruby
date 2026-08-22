# frozen_string_literal: true

module Whop_sdk
  module Transfers
    module Types
      # Returned for a claim_link: a shareable URL anyone can open to claim the funds.
      class CreateTransfersResponseClaimLink < Internal::Types::Model
        field :amount, -> { String }, optional: false, nullable: false

        field :claim_url, -> { String }, optional: false, nullable: false

        field :currency, -> { String }, optional: false, nullable: false

        field :expires_at, -> { String }, optional: false, nullable: true

        field :id, -> { String }, optional: false, nullable: false

        field :redeemable_count, -> { Integer }, optional: false, nullable: false

        field :source, -> { Whop_sdk::Transfers::Types::CreateTransfersResponseClaimLinkSource }, optional: false, nullable: false

        field :status, -> { Whop_sdk::Transfers::Types::CreateTransfersResponseClaimLinkStatus }, optional: false, nullable: false
      end
    end
  end
end
