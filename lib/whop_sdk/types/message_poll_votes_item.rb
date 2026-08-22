# frozen_string_literal: true

module Whop_sdk
  module Types
    # Represents a reaction count for a feed post
    class MessagePollVotesItem < Internal::Types::Model
      field :count, -> { Integer }, optional: false, nullable: false

      field :option_id, -> { String }, optional: false, nullable: true
    end
  end
end
