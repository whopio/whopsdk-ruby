# frozen_string_literal: true

module Whop_sdk
  module Types
    # The payment associated with this shipment. Null if the payment has been deleted or is inaccessible.
    class ShipmentLegacyPayment < Internal::Types::Model
      field :id, -> { String }, optional: false, nullable: false
    end
  end
end
