# frozen_string_literal: true

module Whop_sdk
  module Types
    # A single reaction left by a user on a feed post, such as a like or emoji.
    class ReactionListItem < Internal::Types::Model
      field :emoji, -> { String }, optional: false, nullable: true

      field :id, -> { String }, optional: false, nullable: false

      field :resource_id, -> { String }, optional: false, nullable: false

      field :user, -> { Whop_sdk::Types::ReactionListItemUser }, optional: false, nullable: false
    end
  end
end
