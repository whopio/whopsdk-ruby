# frozen_string_literal: true

module WhopSDK
  module Models
    class CourseLessonInteractionListItem < WhopSDK::Internal::Type::BaseModel
      # @!attribute id
      #   The unique identifier for the lesson interaction.
      #
      #   @return [String]
      required :id, String

      # @!attribute completed
      #   Whether the user has finished this lesson.
      #
      #   @return [Boolean]
      required :completed, WhopSDK::Internal::Type::Boolean

      # @!attribute created_at
      #   The datetime the lesson interaction was created.
      #
      #   @return [Time]
      required :created_at, Time

      # @!attribute lesson
      #   The lesson that this progress record belongs to.
      #
      #   @return [WhopSDK::Models::CourseLessonInteractionListItem::Lesson]
      required :lesson, -> { WhopSDK::CourseLessonInteractionListItem::Lesson }

      # @!attribute user
      #   The user whose progress is being tracked.
      #
      #   @return [WhopSDK::Models::CourseLessonInteractionListItem::User]
      required :user, -> { WhopSDK::CourseLessonInteractionListItem::User }

      # @!method initialize(id:, completed:, created_at:, lesson:, user:)
      #   A record of a user's progress on a specific lesson, tracking whether they have
      #   completed it.
      #
      #   @param id [String] The unique identifier for the lesson interaction.
      #
      #   @param completed [Boolean] Whether the user has finished this lesson.
      #
      #   @param created_at [Time] The datetime the lesson interaction was created.
      #
      #   @param lesson [WhopSDK::Models::CourseLessonInteractionListItem::Lesson] The lesson that this progress record belongs to.
      #
      #   @param user [WhopSDK::Models::CourseLessonInteractionListItem::User] The user whose progress is being tracked.

      # @see WhopSDK::Models::CourseLessonInteractionListItem#lesson
      class Lesson < WhopSDK::Internal::Type::BaseModel
        # @!attribute id
        #   The unique identifier for the lesson.
        #
        #   @return [String]
        required :id, String

        # @!attribute chapter
        #   The parent chapter that contains this lesson.
        #
        #   @return [WhopSDK::Models::CourseLessonInteractionListItem::Lesson::Chapter]
        required :chapter, -> { WhopSDK::CourseLessonInteractionListItem::Lesson::Chapter }

        # @!attribute title
        #   The display name of the lesson shown to students. Maximum 120 characters.
        #
        #   @return [String]
        required :title, String

        # @!method initialize(id:, chapter:, title:)
        #   The lesson that this progress record belongs to.
        #
        #   @param id [String] The unique identifier for the lesson.
        #
        #   @param chapter [WhopSDK::Models::CourseLessonInteractionListItem::Lesson::Chapter] The parent chapter that contains this lesson.
        #
        #   @param title [String] The display name of the lesson shown to students. Maximum 120 characters.

        # @see WhopSDK::Models::CourseLessonInteractionListItem::Lesson#chapter
        class Chapter < WhopSDK::Internal::Type::BaseModel
          # @!attribute id
          #   The unique identifier for the chapter.
          #
          #   @return [String]
          required :id, String

          # @!method initialize(id:)
          #   The parent chapter that contains this lesson.
          #
          #   @param id [String] The unique identifier for the chapter.
        end
      end

      # @see WhopSDK::Models::CourseLessonInteractionListItem#user
      class User < WhopSDK::Internal::Type::BaseModel
        # @!attribute id
        #   The unique identifier for the user.
        #
        #   @return [String]
        required :id, String

        # @!attribute name
        #   The user's display name shown on their public profile.
        #
        #   @return [String, nil]
        required :name, String, nil?: true

        # @!attribute username
        #   The user's unique username shown on their public profile.
        #
        #   @return [String]
        required :username, String

        # @!method initialize(id:, name:, username:)
        #   The user whose progress is being tracked.
        #
        #   @param id [String] The unique identifier for the user.
        #
        #   @param name [String, nil] The user's display name shown on their public profile.
        #
        #   @param username [String] The user's unique username shown on their public profile.
      end
    end
  end
end
