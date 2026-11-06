# frozen_string_literal: true

module Whop_sdk
  module Types
    class ShippingAddressChangedWebhookReplyLineItem < Internal::Types::Model
      field :amount, -> { Whop_sdk::Types::Money }, optional: false, nullable: false

      field :id, -> { String }, optional: false, nullable: false
    end
  end
end
