# frozen_string_literal: true

module Whop_sdk
  module Webhooks
    module Types
      class CreateWebhooksRequest < Internal::Types::Model
        field :api_version_date, -> { String }, optional: true, nullable: false

        field :child_resource_events, -> { Internal::Types::Boolean }, optional: true, nullable: false

        field :enabled, -> { Internal::Types::Boolean }, optional: true, nullable: false

        field :events, -> { Internal::Types::Array[Whop_sdk::Webhooks::Types::CreateWebhooksRequestEventsItem] }, optional: true, nullable: false

        field :resource_id, -> { String }, optional: true, nullable: false

        field :url, -> { String }, optional: false, nullable: false
      end
    end
  end
end
