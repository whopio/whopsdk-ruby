# frozen_string_literal: true

module Whop_sdk
  module Webhooks
    module Types
      # The connection type for WebhookLog.
      class DeliveriesWebhookResponse < Internal::Types::Model
        field :data, -> { Internal::Types::Array[Whop_sdk::Webhooks::Types::DeliveriesWebhookResponseDataItem] }, optional: false, nullable: false

        field :page_info, -> { Whop_sdk::Webhooks::Types::DeliveriesWebhookResponsePageInfo }, optional: false, nullable: false
      end
    end
  end
end
