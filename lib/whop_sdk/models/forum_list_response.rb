# frozen_string_literal: true

module WhopSDK
  module Models
    # @see WhopSDK::Resources::Forums#list
    class ForumListResponse < WhopSDK::Internal::Type::BaseModel
      # @!attribute id
      #   The unique identifier for the entity
      #
      #   @return [String]
      required :id, String

      # @!attribute email_notification_preference
      #   The email notification setting that controls which posts trigger email alerts.
      #   One of: all_admin_posts, only_weekly_summary, none.
      #
      #   @return [Symbol, WhopSDK::Models::EmailNotificationPreferences]
      required :email_notification_preference, enum: -> { WhopSDK::EmailNotificationPreferences }

      # @!attribute experience
      #   The parent experience that this forum belongs to.
      #
      #   @return [WhopSDK::Models::ForumListResponse::Experience]
      required :experience, -> { WhopSDK::Models::ForumListResponse::Experience }

      # @!attribute who_can_comment
      #   The permission level controlling who can comment on posts. One of: everyone,
      #   admins.
      #
      #   @return [Symbol, WhopSDK::Models::WhoCanCommentTypes]
      required :who_can_comment, enum: -> { WhopSDK::WhoCanCommentTypes }

      # @!attribute who_can_post
      #   The permission level controlling who can create new posts. One of: everyone,
      #   admins.
      #
      #   @return [Symbol, WhopSDK::Models::WhoCanPostTypes]
      required :who_can_post, enum: -> { WhopSDK::WhoCanPostTypes }

      # @!method initialize(id:, email_notification_preference:, experience:, who_can_comment:, who_can_post:)
      #   Some parameter documentations has been truncated, see
      #   {WhopSDK::Models::ForumListResponse} for more details.
      #
      #   A discussion forum where members can create posts, comment, and react, belonging
      #   to an experience.
      #
      #   @param id [String] The unique identifier for the entity
      #
      #   @param email_notification_preference [Symbol, WhopSDK::Models::EmailNotificationPreferences] The email notification setting that controls which posts trigger email alerts. O
      #
      #   @param experience [WhopSDK::Models::ForumListResponse::Experience] The parent experience that this forum belongs to.
      #
      #   @param who_can_comment [Symbol, WhopSDK::Models::WhoCanCommentTypes] The permission level controlling who can comment on posts. One of: everyone, adm
      #
      #   @param who_can_post [Symbol, WhopSDK::Models::WhoCanPostTypes] The permission level controlling who can create new posts. One of: everyone, adm

      # @see WhopSDK::Models::ForumListResponse#experience
      class Experience < WhopSDK::Internal::Type::BaseModel
        # @!attribute id
        #   The unique identifier for the experience.
        #
        #   @return [String]
        required :id, String

        # @!attribute name
        #   The display name of this experience shown to users in the product navigation.
        #   Maximum 255 characters.
        #
        #   @return [String]
        required :name, String

        # @!method initialize(id:, name:)
        #   Some parameter documentations has been truncated, see
        #   {WhopSDK::Models::ForumListResponse::Experience} for more details.
        #
        #   The parent experience that this forum belongs to.
        #
        #   @param id [String] The unique identifier for the experience.
        #
        #   @param name [String] The display name of this experience shown to users in the product navigation. Ma
      end
    end
  end
end
