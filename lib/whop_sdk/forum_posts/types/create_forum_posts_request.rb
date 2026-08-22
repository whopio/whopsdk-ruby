# frozen_string_literal: true

module Whop_sdk
  module ForumPosts
    module Types
      class CreateForumPostsRequest < Internal::Types::Model
        field :attachments, -> { Internal::Types::Array[Whop_sdk::ForumPosts::Types::CreateForumPostsRequestAttachmentsItem] }, optional: true, nullable: false

        field :company_id, -> { String }, optional: true, nullable: false

        field :content, -> { String }, optional: true, nullable: false

        field :experience_id, -> { String }, optional: false, nullable: false

        field :is_mention, -> { Internal::Types::Boolean }, optional: true, nullable: false

        field :parent_id, -> { String }, optional: true, nullable: false

        field :paywall_amount, -> { Integer }, optional: true, nullable: false

        field :paywall_currency, -> { Whop_sdk::Types::Currencies }, optional: true, nullable: false

        field :pinned, -> { Internal::Types::Boolean }, optional: true, nullable: false

        field :poll, -> { Whop_sdk::ForumPosts::Types::CreateForumPostsRequestPoll }, optional: true, nullable: false

        field :rich_content, -> { String }, optional: true, nullable: false

        field :title, -> { String }, optional: true, nullable: false

        field :visibility, -> { Whop_sdk::Types::ForumPostVisibilityTypes }, optional: true, nullable: false
      end
    end
  end
end
