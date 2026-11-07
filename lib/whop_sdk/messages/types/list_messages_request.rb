# frozen_string_literal: true

module Whop_sdk
  module Messages
    module Types
      class ListMessagesRequest < Internal::Types::Model
        field :channel_id, -> { String }, optional: false, nullable: false

        field :replying_to_message_id, -> { String }, optional: true, nullable: false

        field :pinned, -> { Internal::Types::Boolean }, optional: true, nullable: false

        field :include_deleted, -> { Internal::Types::Boolean }, optional: true, nullable: false

        field :created_after, -> { String }, optional: true, nullable: false

        field :created_before, -> { String }, optional: true, nullable: false

        field :updated_after, -> { String }, optional: true, nullable: false

        field :before_message_id, -> { String }, optional: true, nullable: false

        field :after_message_id, -> { String }, optional: true, nullable: false

        field :around_message_id, -> { String }, optional: true, nullable: false

        field :around_timestamp, -> { String }, optional: true, nullable: false

        field :order, -> { Whop_sdk::Messages::Types::ListMessagesRequestOrder }, optional: true, nullable: false

        field :direction, -> { Whop_sdk::Messages::Types::ListMessagesRequestDirection }, optional: true, nullable: false

        field :first, -> { Integer }, optional: true, nullable: false

        field :after, -> { String }, optional: true, nullable: false

        field :last, -> { Integer }, optional: true, nullable: false

        field :before, -> { String }, optional: true, nullable: false
      end
    end
  end
end
