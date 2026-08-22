# frozen_string_literal: true

module Whop_sdk
  module Types
    class ShipmentCheckpoint < Internal::Types::Model
      field :location, -> { String }, optional: false, nullable: true

      field :message, -> { String }, optional: false, nullable: true

      field :status, -> { Whop_sdk::Types::ShipmentCheckpointStatus }, optional: false, nullable: false

      field :timestamp, -> { String }, optional: false, nullable: true
    end
  end
end
