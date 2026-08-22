# frozen_string_literal: true

module Whop_sdk
  module Cards
    module Types
      # Sensitive card details. Present only on `GET /cards/:id` for active cards; `null` when the card is inactive or
      # details cannot be retrieved.
      class PostCardFrozenPayloadDataSecrets < Internal::Types::Model
        field :card_number, -> { String }, optional: false, nullable: false

        field :cvc, -> { String }, optional: false, nullable: false

        field :name_on_card, -> { String }, optional: false, nullable: true

        field :pin, -> { String }, optional: false, nullable: true
      end
    end
  end
end
