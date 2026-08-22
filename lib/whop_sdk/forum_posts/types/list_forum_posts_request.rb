# frozen_string_literal: true

module Whop_sdk
  module ForumPosts
    module Types
      class ListForumPostsRequest < Internal::Types::Model
        field :after, -> { String }, optional: true, nullable: false

        field :before, -> { String }, optional: true, nullable: false

        field :first, -> { Integer }, optional: true, nullable: false

        field :last, -> { Integer }, optional: true, nullable: false

        field :experience_id, -> { String }, optional: false, nullable: false

        field :include_bounty_anchors, -> { Internal::Types::Boolean }, optional: true, nullable: false

        field :parent_id, -> { String }, optional: true, nullable: false

        field :pinned, -> { Internal::Types::Boolean }, optional: true, nullable: false
      end
    end
  end
end
