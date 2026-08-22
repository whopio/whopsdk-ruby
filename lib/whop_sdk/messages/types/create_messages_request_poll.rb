# frozen_string_literal: true

module Whop_sdk
  module Messages
    module Types
      # A poll to attach to this message, allowing recipients to vote on options.
      class CreateMessagesRequestPoll < Internal::Types::Model
        field :options, -> { Internal::Types::Array[Whop_sdk::Messages::Types::CreateMessagesRequestPollOptionsItem] }, optional: false, nullable: false
      end
    end
  end
end
