# frozen_string_literal: true

module Whop_sdk
  module Webhooks
    module Types
      class ListDeliveriesWebhooksRequest < Internal::Types::Model
        field :id, -> { String }, optional: false, nullable: false

        field :first, -> { Integer }, optional: true, nullable: false

        field :after, -> { String }, optional: true, nullable: false

        field :sent_after, -> { String }, optional: true, nullable: false

        field :sent_before, -> { String }, optional: true, nullable: false

        field :events, -> { Whop_sdk::Webhooks::Types::ListDeliveriesWebhooksRequestEventsItem }, optional: true, nullable: false

        field :status, -> { Whop_sdk::Webhooks::Types::ListDeliveriesWebhooksRequestStatus }, optional: true, nullable: false

        field :resource_id, -> { String }, optional: true, nullable: false
      end
    end
  end
end
