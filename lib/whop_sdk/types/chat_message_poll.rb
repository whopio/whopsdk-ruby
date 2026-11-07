# frozen_string_literal: true

module Whop_sdk
  module Types
    class ChatMessagePoll < Internal::Types::Model
      field :options, -> { Internal::Types::Array[Whop_sdk::Types::ChatMessagePollOption] }, optional: false, nullable: false
    end
  end
end
