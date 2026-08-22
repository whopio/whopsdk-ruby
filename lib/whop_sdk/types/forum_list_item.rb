# frozen_string_literal: true

module Whop_sdk
  module Types
    # A discussion forum where members can create posts, comment, and react, belonging to an experience.
    class ForumListItem < Internal::Types::Model
      field :email_notification_preference, -> { Whop_sdk::Types::ForumEmailNotificationPreferences }, optional: false, nullable: false

      field :experience, -> { Whop_sdk::Types::ForumListItemExperience }, optional: false, nullable: false

      field :id, -> { String }, optional: false, nullable: false

      field :who_can_comment, -> { Whop_sdk::Types::ForumWhoCanCommentTypes }, optional: false, nullable: false

      field :who_can_post, -> { Whop_sdk::Types::ForumWhoCanPostTypes }, optional: false, nullable: false
    end
  end
end
