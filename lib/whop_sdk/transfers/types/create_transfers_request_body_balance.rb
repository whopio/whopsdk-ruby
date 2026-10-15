# frozen_string_literal: true

module Whop_sdk
  module Transfers
    module Types
      # Moves credit between two Whop balances and returns a `transfer`. The transfer can come back `processing` and
      # reach `succeeded` or `failed` asynchronously, usually within seconds.
      class CreateTransfersRequestBodyBalance < Internal::Types::Model
        field :amount, -> { Integer }, optional: false, nullable: false

        field :currency, -> { String }, optional: false, nullable: false

        field :destination_id, -> { String }, optional: false, nullable: false

        field :feed_id, -> { String }, optional: true, nullable: false

        field :feed_type, -> { Whop_sdk::Transfers::Types::CreateTransfersRequestBodyBalanceFeedType }, optional: true, nullable: false

        field :idempotence_key, -> { String }, optional: true, nullable: false

        field :metadata, -> { Internal::Types::Hash[String, Object] }, optional: true, nullable: false

        field :notes, -> { String }, optional: true, nullable: false

        field :origin_id, -> { String }, optional: false, nullable: false
      end
    end
  end
end
