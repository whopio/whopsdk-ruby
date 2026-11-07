# frozen_string_literal: true

module Whop_sdk
  module Types
    class ChatMessagePollOption < Internal::Types::Model
      field :id, -> { String }, optional: false, nullable: false

      field :text, -> { String }, optional: false, nullable: false

      field :vote_count, -> { Integer }, optional: false, nullable: false

      field :voted, -> { Internal::Types::Boolean }, optional: false, nullable: false
    end
  end
end
