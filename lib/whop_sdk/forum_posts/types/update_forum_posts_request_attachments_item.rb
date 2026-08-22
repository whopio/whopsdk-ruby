# frozen_string_literal: true

module Whop_sdk
  module ForumPosts
    module Types
      # Input for an attachment
      class UpdateForumPostsRequestAttachmentsItem < Internal::Types::Model
        field :id, -> { String }, optional: false, nullable: false
      end
    end
  end
end
