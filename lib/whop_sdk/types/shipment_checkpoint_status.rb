# frozen_string_literal: true

module Whop_sdk
  module Types
    module ShipmentCheckpointStatus
      extend Whop_sdk::Internal::Types::Enum

      UNKNOWN = "unknown"
      PRE_TRANSIT = "pre_transit"
      IN_TRANSIT = "in_transit"
      OUT_FOR_DELIVERY = "out_for_delivery"
      DELIVERED = "delivered"
      AVAILABLE_FOR_PICKUP = "available_for_pickup"
      RETURN_TO_SENDER = "return_to_sender"
      FAILURE = "failure"
      CANCELLED = "cancelled"
      ERROR = "error"
    end
  end
end
