# frozen_string_literal: true

module Whop_sdk
  module Cards
    module Types
      class RetrieveCardsResponse < Internal::Types::Model
        field :billing, -> { Whop_sdk::Cards::Types::RetrieveCardsResponseBilling }, optional: false, nullable: true

        field :canceled_at, -> { String }, optional: false, nullable: true

        field :created_at, -> { String }, optional: false, nullable: true

        field :expiration_month, -> { String }, optional: false, nullable: true

        field :expiration_year, -> { String }, optional: false, nullable: true

        field :id, -> { String }, optional: false, nullable: false

        field :last4, -> { String }, optional: false, nullable: true

        field :limit, -> { Whop_sdk::Cards::Types::RetrieveCardsResponseLimit }, optional: false, nullable: true

        field :name, -> { String }, optional: false, nullable: true

        field :object, -> { Whop_sdk::Cards::Types::RetrieveCardsResponseObject }, optional: false, nullable: false

        field :secrets, -> { Whop_sdk::Cards::Types::RetrieveCardsResponseSecrets }, optional: true, nullable: false

        field :spent_last_month, -> { Integer }, optional: false, nullable: true

        field :status, -> { Whop_sdk::Cards::Types::RetrieveCardsResponseStatus }, optional: false, nullable: true

        field :type, -> { Whop_sdk::Cards::Types::RetrieveCardsResponseType }, optional: false, nullable: true

        field :user_id, -> { String }, optional: false, nullable: true
      end
    end
  end
end
