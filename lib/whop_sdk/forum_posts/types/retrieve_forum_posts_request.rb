# frozen_string_literal: true

module Whop_sdk
  module ForumPosts
    module Types
      class RetrieveForumPostsRequest < Internal::Types::Model
        field :id, -> { String }, optional: false, nullable: false
      end
    end
  end
end
