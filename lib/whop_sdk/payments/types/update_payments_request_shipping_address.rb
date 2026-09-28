# frozen_string_literal: true

module Whop_sdk
  module Payments
    module Types
      # The complete new shipping address. It replaces the current address as a whole and is never merged with it, so
      # send every field the address should have, including the ones that are not changing. Any field you leave out is
      # cleared: sending only `city` leaves an address with nothing but a city. Pass null to remove the address, or omit
      # `shipping_address` to leave it unchanged. It cannot change once a shipment exists for the payment.
      class UpdatePaymentsRequestShippingAddress < Internal::Types::Model
        field :city, -> { String }, optional: true, nullable: false

        field :country, -> { String }, optional: true, nullable: false

        field :line1, -> { String }, optional: true, nullable: false

        field :line2, -> { String }, optional: true, nullable: false

        field :name, -> { String }, optional: true, nullable: false

        field :postal_code, -> { String }, optional: true, nullable: false

        field :state, -> { String }, optional: true, nullable: false
      end
    end
  end
end
