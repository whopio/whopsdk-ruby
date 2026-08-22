# frozen_string_literal: true

module Whop_sdk
  module Types
    class Webhook < Internal::Types::Model
      field :api_version, -> { Whop_sdk::Types::WebhookAPIVersion }, optional: false, nullable: false

      field :api_version_date, -> { String }, optional: false, nullable: true

      field :child_resource_events, -> { Internal::Types::Boolean }, optional: false, nullable: false

      field :consecutive_failures, -> { Integer }, optional: false, nullable: false

      field :created_at, -> { String }, optional: false, nullable: false

      field :disabled_at, -> { String }, optional: false, nullable: true

      field :disabled_reason, -> { Whop_sdk::Types::WebhookDisabledReason }, optional: false, nullable: true

      field :enabled, -> { Internal::Types::Boolean }, optional: false, nullable: false

      field :events, -> { Internal::Types::Array[Whop_sdk::Types::WebhookEventsItem] }, optional: false, nullable: false

      field :failing_since, -> { String }, optional: false, nullable: true

      field :id, -> { String }, optional: false, nullable: false

      field :last_failure_at, -> { String }, optional: false, nullable: true

      field :resource_id, -> { String }, optional: false, nullable: false

      field :testable_events, -> { Internal::Types::Array[Whop_sdk::Types::WebhookTestableEventsItem] }, optional: false, nullable: false

      field :url, -> { String }, optional: false, nullable: false

      field :webhook_secret, -> { String }, optional: false, nullable: true
    end
  end
end
