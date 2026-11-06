# frozen_string_literal: true

module Whop_sdk
  module Types
    class ShippingAddressChangedWebhookData < Internal::Types::Model
      field :amount, -> { Whop_sdk::Types::Money }, optional: false, nullable: false

      field :checkout_session_id, -> { String }, optional: false, nullable: true

      field :line_items, -> { Internal::Types::Array[Whop_sdk::Types::ShippingAddressChangedWebhookLineItem] }, optional: false, nullable: false

      field :payment_id, -> { String }, optional: false, nullable: true

      field :shipping_address, -> { Whop_sdk::Types::ShippingAddressChangedWebhookAddress }, optional: false, nullable: false
    end
  end
end
