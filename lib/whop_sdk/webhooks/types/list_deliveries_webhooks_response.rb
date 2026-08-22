# frozen_string_literal: true

module Whop_sdk
  module Webhooks
    module Types
      class ListDeliveriesWebhooksResponse < Internal::Types::Model
        field :data, -> { Internal::Types::Array[Whop_sdk::Types::WebhookDelivery] }, optional: false, nullable: false

        field :page_info, -> { Whop_sdk::Webhooks::Types::ListDeliveriesWebhooksResponsePageInfo }, optional: false, nullable: false
      end
    end
  end
end
