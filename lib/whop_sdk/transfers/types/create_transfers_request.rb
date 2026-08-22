# frozen_string_literal: true

module Whop_sdk
  module Transfers
    module Types
      class CreateTransfersRequest < Internal::Types::Model
        field :amount, -> { Integer }, optional: false, nullable: false

        field :currency, -> { String }, optional: true, nullable: false

        field :destination_id, -> { String }, optional: true, nullable: false

        field :expires_at, -> { String }, optional: true, nullable: false

        field :idempotence_key, -> { String }, optional: true, nullable: false

        field :metadata, -> { Internal::Types::Hash[String, Object] }, optional: true, nullable: false

        field :notes, -> { String }, optional: true, nullable: false

        field :origin_id, -> { String }, optional: false, nullable: false

        field :redeemable_count, -> { Integer }, optional: true, nullable: false

        field :type, -> { Whop_sdk::Transfers::Types::CreateTransfersRequestType }, optional: true, nullable: false
      end
    end
  end
end
