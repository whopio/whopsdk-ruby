# frozen_string_literal: true

module Whop_sdk
  module Types
    class ChatMessagePollOption < Internal::Types::Model
      field :id, -> { String }, optional: false, nullable: false

      field :own_vote_id, -> { String }, optional: false, nullable: true

      field :text, -> { String }, optional: false, nullable: false

      field :vote_count, -> { Integer }, optional: false, nullable: false
    end
  end
end
