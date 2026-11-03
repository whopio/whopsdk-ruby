# frozen_string_literal: true

module Whop_sdk
  module Events
    module Types
      class PostEventsCreatedPayloadData < Internal::Types::Model
        field :events, -> { Internal::Types::Array[Whop_sdk::Events::Types::PostEventsCreatedPayloadDataEventsItem] }, optional: false, nullable: false

        field :id, -> { String }, optional: false, nullable: false
      end
    end
  end
end
