# frozen_string_literal: true

module Whop_sdk
  module Forums
    module Types
      class UpdateForumsRequest < Internal::Types::Model
        field :id, -> { String }, optional: false, nullable: false

        field :banned_words, -> { Internal::Types::Array[String] }, optional: true, nullable: false

        field :banner_image, -> { Whop_sdk::Forums::Types::UpdateForumsRequestBannerImage }, optional: true, nullable: false

        field :email_notification_preference, -> { Whop_sdk::Types::ForumEmailNotificationPreferences }, optional: true, nullable: false

        field :who_can_comment, -> { Whop_sdk::Types::ForumWhoCanCommentTypes }, optional: true, nullable: false

        field :who_can_post, -> { Whop_sdk::Types::ForumWhoCanPostTypes }, optional: true, nullable: false
      end
    end
  end
end
