# frozen_string_literal: true

module Whop_sdk
  module Webhooks
    module Types
      class UpdateWebhooksRequest < Internal::Types::Model
        field :id, -> { String }, optional: false, nullable: false

        field :api_version_date, -> { String }, optional: true, nullable: false

        field :child_resource_events, -> { Internal::Types::Boolean }, optional: true, nullable: false

        field :enabled, -> { Internal::Types::Boolean }, optional: true, nullable: false

        field :events, -> { Internal::Types::Array[Whop_sdk::Webhooks::Types::UpdateWebhooksRequestEventsItem] }, optional: true, nullable: false

        field :url, -> { String }, optional: true, nullable: false
      end
    end
  end
end
