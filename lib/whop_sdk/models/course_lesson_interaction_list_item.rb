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
      #   Whether the lesson has been completed by the user
      #
      #   @return [Boolean]
      required :completed, WhopSDK::Internal::Type::Boolean

      # @!attribute created_at
      #   The datetime the lesson interaction was created.
      #
      #   @return [Time]
      required :created_at, Time

      # @!attribute lesson
      #   The lesson this interaction is for
      #
      #   @return [WhopSDK::Models::CourseLessonInteractionListItem::Lesson]
      required :lesson, -> { WhopSDK::CourseLessonInteractionListItem::Lesson }

      # @!attribute user
      #   The user who interacted with the lesson
      #
      #   @return [WhopSDK::Models::CourseLessonInteractionListItem::User]
      required :user, -> { WhopSDK::CourseLessonInteractionListItem::User }

      # @!method initialize(id:, completed:, created_at:, lesson:, user:)
      #   A lesson interaction tracking user progress in courses
      #
      #   @param id [String] The unique identifier for the lesson interaction.
      #
      #   @param completed [Boolean] Whether the lesson has been completed by the user
      #
      #   @param created_at [Time] The datetime the lesson interaction was created.
      #
      #   @param lesson [WhopSDK::Models::CourseLessonInteractionListItem::Lesson] The lesson this interaction is for
      #
      #   @param user [WhopSDK::Models::CourseLessonInteractionListItem::User] The user who interacted with the lesson

      # @see WhopSDK::Models::CourseLessonInteractionListItem#lesson
      class Lesson < WhopSDK::Internal::Type::BaseModel
        # @!attribute id
        #   The unique identifier for the lesson.
        #
        #   @return [String]
        required :id, String

        # @!attribute chapter
        #   The chapter this lesson belongs to
        #
        #   @return [WhopSDK::Models::CourseLessonInteractionListItem::Lesson::Chapter]
        required :chapter, -> { WhopSDK::CourseLessonInteractionListItem::Lesson::Chapter }

        # @!attribute title
        #   The title of the lesson
        #
        #   @return [String]
        required :title, String

        # @!method initialize(id:, chapter:, title:)
        #   The lesson this interaction is for
        #
        #   @param id [String] The unique identifier for the lesson.
        #
        #   @param chapter [WhopSDK::Models::CourseLessonInteractionListItem::Lesson::Chapter] The chapter this lesson belongs to
        #
        #   @param title [String] The title of the lesson

        # @see WhopSDK::Models::CourseLessonInteractionListItem::Lesson#chapter
        class Chapter < WhopSDK::Internal::Type::BaseModel
          # @!attribute id
          #   The unique identifier for the chapter.
          #
          #   @return [String]
          required :id, String

          # @!method initialize(id:)
          #   The chapter this lesson belongs to
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
        #   The name of the user from their Whop account.
        #
        #   @return [String, nil]
        required :name, String, nil?: true

        # @!attribute username
        #   The username of the user from their Whop account.
        #
        #   @return [String]
        required :username, String

        # @!method initialize(id:, name:, username:)
        #   The user who interacted with the lesson
        #
        #   @param id [String] The unique identifier for the user.
        #
        #   @param name [String, nil] The name of the user from their Whop account.
        #
        #   @param username [String] The username of the user from their Whop account.
      end
    end
  end
end
