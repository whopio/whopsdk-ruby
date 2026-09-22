# frozen_string_literal: true

module Whop_sdk
  module Events
    module Types
      class PostPixelEventCreatedPayloadDataRelatedPayment < Internal::Types::Model
        field :card_brand, -> { String }, optional: true, nullable: false

        field :card_last4, -> { String }, optional: true, nullable: false

        field :id, -> { String }, optional: true, nullable: false

        field :line_items, -> { Internal::Types::Array[Whop_sdk::Types::ReceiptLineItem] }, optional: true, nullable: false

        field :provider, -> { String }, optional: true, nullable: false
      end
    end
  end
end
