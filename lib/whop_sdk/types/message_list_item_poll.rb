# frozen_string_literal: true

module Whop_sdk
  module Types
    # A poll attached to this message. Null if the message does not contain a poll.
    class MessageListItemPoll < Internal::Types::Model
      field :options, -> { Internal::Types::Array[Whop_sdk::Types::MessageListItemPollOptionsItem] }, optional: false, nullable: true
    end
  end
end
