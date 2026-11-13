# frozen_string_literal: true

module Whop_sdk
  module Types
    class ShippingAddressChangedWebhookReplyShippingOption < Internal::Types::Model
      field :amount, -> { Whop_sdk::Types::Money }, optional: false, nullable: false

      field :description, -> { String }, optional: false, nullable: false

      field :external_identifier, -> { String }, optional: false, nullable: false
    end
  end
end
