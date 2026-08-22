# frozen_string_literal: true

module Whop_sdk
  module Types
    class Shipment < Internal::Types::Model
      field :account_id, -> { String }, optional: false, nullable: false

      field :carrier, -> { String }, optional: false, nullable: true

      field :checkpoints, -> { Internal::Types::Array[Whop_sdk::Types::ShipmentCheckpoint] }, optional: false, nullable: false

      field :created_at, -> { String }, optional: false, nullable: false

      field :id, -> { String }, optional: false, nullable: false

      field :payment_id, -> { String }, optional: false, nullable: false

      field :status, -> { Whop_sdk::Types::ShipmentStatus }, optional: false, nullable: false

      field :tracking_number, -> { String }, optional: false, nullable: false

      field :tracking_url, -> { String }, optional: false, nullable: false

      field :updated_at, -> { String }, optional: false, nullable: false
    end
  end
end
