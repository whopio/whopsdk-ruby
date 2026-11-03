# frozen_string_literal: true

module Whop_sdk
  module Events
    module Types
      class PostEventsCreatedPayload < Internal::Types::Model
        field :account_id, -> { String }, optional: true, nullable: false

        field :api_version, -> { Whop_sdk::Events::Types::PostEventsCreatedPayloadAPIVersion }, optional: false, nullable: false

        field :api_version_date, -> { String }, optional: false, nullable: true

        field :data, -> { Whop_sdk::Events::Types::PostEventsCreatedPayloadData }, optional: false, nullable: false

        field :id, -> { String }, optional: false, nullable: false

        field :previous_attributes, -> { Internal::Types::Hash[String, Object] }, optional: true, nullable: false

        field :timestamp, -> { String }, optional: false, nullable: false

        field :type, -> { Whop_sdk::Events::Types::PostEventsCreatedPayloadType }, optional: false, nullable: false
      end
    end
  end
end
