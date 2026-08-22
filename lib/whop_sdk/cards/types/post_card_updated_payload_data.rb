# frozen_string_literal: true

module Whop_sdk
  module Cards
    module Types
      class PostCardUpdatedPayloadData < Internal::Types::Model
        field :billing, -> { Whop_sdk::Cards::Types::PostCardUpdatedPayloadDataBilling }, optional: false, nullable: true

        field :canceled_at, -> { String }, optional: false, nullable: true

        field :created_at, -> { String }, optional: false, nullable: true

        field :expiration_month, -> { String }, optional: false, nullable: true

        field :expiration_year, -> { String }, optional: false, nullable: true

        field :id, -> { String }, optional: false, nullable: false

        field :last4, -> { String }, optional: false, nullable: true

        field :limit, -> { Whop_sdk::Cards::Types::PostCardUpdatedPayloadDataLimit }, optional: false, nullable: true

        field :name, -> { String }, optional: false, nullable: true

        field :object, -> { Whop_sdk::Cards::Types::PostCardUpdatedPayloadDataObject }, optional: false, nullable: false

        field :secrets, -> { Whop_sdk::Cards::Types::PostCardUpdatedPayloadDataSecrets }, optional: true, nullable: false

        field :spent_last_month, -> { Integer }, optional: false, nullable: true

        field :status, -> { Whop_sdk::Cards::Types::PostCardUpdatedPayloadDataStatus }, optional: false, nullable: true

        field :type, -> { Whop_sdk::Cards::Types::PostCardUpdatedPayloadDataType }, optional: false, nullable: true

        field :user_id, -> { String }, optional: false, nullable: true
      end
    end
  end
end
