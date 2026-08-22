# frozen_string_literal: true

module Whop_sdk
  module Cards
    module Types
      class PostCardFrozenPayloadData < Internal::Types::Model
        field :billing, -> { Whop_sdk::Cards::Types::PostCardFrozenPayloadDataBilling }, optional: false, nullable: true

        field :canceled_at, -> { String }, optional: false, nullable: true

        field :created_at, -> { String }, optional: false, nullable: true

        field :expiration_month, -> { String }, optional: false, nullable: true

        field :expiration_year, -> { String }, optional: false, nullable: true

        field :id, -> { String }, optional: false, nullable: false

        field :last4, -> { String }, optional: false, nullable: true

        field :limit, -> { Whop_sdk::Cards::Types::PostCardFrozenPayloadDataLimit }, optional: false, nullable: true

        field :name, -> { String }, optional: false, nullable: true

        field :object, -> { Whop_sdk::Cards::Types::PostCardFrozenPayloadDataObject }, optional: false, nullable: false

        field :secrets, -> { Whop_sdk::Cards::Types::PostCardFrozenPayloadDataSecrets }, optional: true, nullable: false

        field :spent_last_month, -> { Integer }, optional: false, nullable: true

        field :status, -> { Whop_sdk::Cards::Types::PostCardFrozenPayloadDataStatus }, optional: false, nullable: true

        field :type, -> { Whop_sdk::Cards::Types::PostCardFrozenPayloadDataType }, optional: false, nullable: true

        field :user_id, -> { String }, optional: false, nullable: true
      end
    end
  end
end
