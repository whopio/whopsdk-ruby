# frozen_string_literal: true

module Whop_sdk
  module Types
    class ShippingAddressChangedWebhookLineItem < Internal::Types::Model
      field :amount, -> { Whop_sdk::Types::Money }, optional: false, nullable: false

      field :id, -> { String }, optional: false, nullable: false

      field :quantity, -> { Integer }, optional: false, nullable: false

      field :variant_id, -> { String }, optional: false, nullable: true
    end
  end
end
