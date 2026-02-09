# frozen_string_literal: true

module WhopSDK
  module Models
    class Forum < WhopSDK::Internal::Type::BaseModel
      # @!attribute id
      #   The unique identifier for the entity
      #
      #   @return [String]
      required :id, String

      # @!attribute email_notification_preference
      #   The email notification preference for this forum
      #
      #   @return [Symbol, WhopSDK::Models::EmailNotificationPreferences]
      required :email_notification_preference, enum: -> { WhopSDK::EmailNotificationPreferences }

      # @!attribute experience
      #   The experience for this forum
      #
      #   @return [WhopSDK::Models::Forum::Experience]
      required :experience, -> { WhopSDK::Forum::Experience }

      # @!attribute who_can_comment
      #   Who can comment on this forum
      #
      #   @return [Symbol, WhopSDK::Models::WhoCanCommentTypes]
      required :who_can_comment, enum: -> { WhopSDK::WhoCanCommentTypes }

      # @!attribute who_can_post
      #   Who can post on this forum
      #
      #   @return [Symbol, WhopSDK::Models::WhoCanPostTypes]
      required :who_can_post, enum: -> { WhopSDK::WhoCanPostTypes }

      # @!method initialize(id:, email_notification_preference:, experience:, who_can_comment:, who_can_post:)
      #   Represents a forum feed
      #
      #   @param id [String] The unique identifier for the entity
      #
      #   @param email_notification_preference [Symbol, WhopSDK::Models::EmailNotificationPreferences] The email notification preference for this forum
      #
      #   @param experience [WhopSDK::Models::Forum::Experience] The experience for this forum
      #
      #   @param who_can_comment [Symbol, WhopSDK::Models::WhoCanCommentTypes] Who can comment on this forum
      #
      #   @param who_can_post [Symbol, WhopSDK::Models::WhoCanPostTypes] Who can post on this forum

      # @see WhopSDK::Models::Forum#experience
      class Experience < WhopSDK::Internal::Type::BaseModel
        # @!attribute id
        #   The unique identifier for the experience.
        #
        #   @return [String]
        required :id, String

        # @!attribute name
        #   The written name of the description.
        #
        #   @return [String]
        required :name, String

        # @!method initialize(id:, name:)
        #   The experience for this forum
        #
        #   @param id [String] The unique identifier for the experience.
        #
        #   @param name [String] The written name of the description.
      end
    end
  end
end
