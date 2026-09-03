# frozen_string_literal: true

module Whop_sdk
  module Types
    # A physical shipment associated with a payment, including carrier details and tracking information.
    class ShipmentLegacy < Internal::Types::Model
      field :created_at, -> { String }, optional: false, nullable: false

      field :delivery_estimate, -> { String }, optional: false, nullable: true

      field :id, -> { String }, optional: false, nullable: false

      field :payment, -> { Whop_sdk::Types::ShipmentLegacyPayment }, optional: false, nullable: true

      field :service, -> { String }, optional: false, nullable: true

      field :status, -> { Whop_sdk::Types::ShipmentStatuses }, optional: false, nullable: false

      field :substatus, -> { Whop_sdk::Types::ShipmentSubstatuses }, optional: false, nullable: true

      field :tracking_code, -> { String }, optional: false, nullable: false

      field :updated_at, -> { String }, optional: false, nullable: false
    end
  end
end
