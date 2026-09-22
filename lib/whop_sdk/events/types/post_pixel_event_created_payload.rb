# frozen_string_literal: true

module Whop_sdk
  module Events
    module Types
      class PostPixelEventCreatedPayload < Internal::Types::Model
        field :account_id, -> { String }, optional: true, nullable: false

        field :api_version, -> { Whop_sdk::Events::Types::PostPixelEventCreatedPayloadAPIVersion }, optional: false, nullable: false

        field :api_version_date, -> { String }, optional: false, nullable: true

        field :data, -> { Whop_sdk::Events::Types::PostPixelEventCreatedPayloadData }, optional: false, nullable: false

        field :id, -> { String }, optional: false, nullable: false

        field :previous_attributes, -> { Internal::Types::Hash[String, Object] }, optional: true, nullable: false

        field :timestamp, -> { String }, optional: false, nullable: false

        field :type, -> { Whop_sdk::Events::Types::PostPixelEventCreatedPayloadType }, optional: false, nullable: false
      end
    end
  end
end
