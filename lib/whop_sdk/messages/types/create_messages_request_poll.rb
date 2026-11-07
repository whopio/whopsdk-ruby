# frozen_string_literal: true

module Whop_sdk
  module Messages
    module Types
      class CreateMessagesRequestPoll < Internal::Types::Model
        field :options, -> { Internal::Types::Array[Whop_sdk::Messages::Types::CreateMessagesRequestPollOptionsItem] }, optional: false, nullable: false
      end
    end
  end
end
