# frozen_string_literal: true

module Whop_sdk
  module Types
    class ShippingAddressChangedWebhookReply < Internal::Types::Model
      field :line_items, -> { Internal::Types::Array[Whop_sdk::Types::ShippingAddressChangedWebhookReplyLineItem] }, optional: false, nullable: false

      field :shipping_options, -> { Internal::Types::Array[Whop_sdk::Types::ShippingAddressChangedWebhookReplyShippingOption] }, optional: true, nullable: false

      field :tax, -> { Whop_sdk::Types::Money }, optional: true, nullable: false
    end
  end
end
