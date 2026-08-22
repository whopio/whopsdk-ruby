# frozen_string_literal: true

module Whop_sdk
  module ForumPosts
    module Types
      # Input type for a single poll option
      class CreateForumPostsRequestPollOptionsItem < Internal::Types::Model
        field :id, -> { String }, optional: false, nullable: false

        field :text, -> { String }, optional: false, nullable: false
      end
    end
  end
end
