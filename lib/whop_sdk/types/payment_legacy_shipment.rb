# frozen_string_literal: true

module Whop_sdk
  module Types
    # The shipment attached to this payment.
    class PaymentLegacyShipment < Internal::Types::Model
      field :carrier, -> { String }, optional: false, nullable: true

      field :id, -> { String }, optional: false, nullable: false

      field :status, -> { Whop_sdk::Types::ShipmentStatuses }, optional: false, nullable: false

      field :tracking_number, -> { String }, optional: false, nullable: false

      field :tracking_url, -> { String }, optional: false, nullable: false
    end
  end
end
