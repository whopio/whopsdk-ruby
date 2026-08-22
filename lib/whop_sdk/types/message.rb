# frozen_string_literal: true

module Whop_sdk
  module Types
    # A message sent within an experience chat, direct message, or group chat.
    class Message < Internal::Types::Model
      field :content, -> { String }, optional: false, nullable: true

      field :created_at, -> { String }, optional: false, nullable: false

      field :id, -> { String }, optional: false, nullable: false

      field :is_edited, -> { Internal::Types::Boolean }, optional: false, nullable: false

      field :is_pinned, -> { Internal::Types::Boolean }, optional: false, nullable: false

      field :mentions, -> { Internal::Types::Array[String] }, optional: false, nullable: false

      field :mentions_everyone, -> { Internal::Types::Boolean }, optional: false, nullable: false

      field :message_type, -> { Whop_sdk::Types::DmsPostTypes }, optional: false, nullable: false

      field :poll, -> { Whop_sdk::Types::MessagePoll }, optional: false, nullable: true

      field :poll_votes, -> { Internal::Types::Array[Whop_sdk::Types::MessagePollVotesItem] }, optional: false, nullable: false

      field :reaction_counts, -> { Internal::Types::Array[Whop_sdk::Types::MessageReactionCountsItem] }, optional: false, nullable: false

      field :replying_to_message_id, -> { String }, optional: false, nullable: true

      field :updated_at, -> { String }, optional: false, nullable: false

      field :user, -> { Whop_sdk::Types::MessageUser }, optional: false, nullable: false

      field :view_count, -> { Integer }, optional: false, nullable: true
    end
  end
end
