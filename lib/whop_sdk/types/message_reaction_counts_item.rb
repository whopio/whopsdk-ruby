# frozen_string_literal: true

module Whop_sdk
  module Types
    # Represents a reaction count for a feed post
    class MessageReactionCountsItem < Internal::Types::Model
      field :count, -> { Integer }, optional: false, nullable: false

      field :emoji, -> { String }, optional: false, nullable: true
    end
  end
end
