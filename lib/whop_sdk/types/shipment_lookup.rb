# frozen_string_literal: true

module Whop_sdk
  module Types
    class ShipmentLookup < Internal::Types::Model
      field :payment_id, -> { String }, optional: false, nullable: false

      field :shipment, -> { Whop_sdk::Types::Shipment }, optional: false, nullable: true
    end
  end
end
