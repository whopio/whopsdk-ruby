# frozen_string_literal: true

module Whop_sdk
  module ForumPosts
    module Types
      # A poll to attach to this post, allowing members to vote on options.
      class CreateForumPostsRequestPoll < Internal::Types::Model
        field :options, -> { Internal::Types::Array[Whop_sdk::ForumPosts::Types::CreateForumPostsRequestPollOptionsItem] }, optional: false, nullable: false
      end
    end
  end
end
