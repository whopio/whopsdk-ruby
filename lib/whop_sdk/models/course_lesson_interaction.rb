# frozen_string_literal: true

module WhopSDK
  module Models
    class CourseLessonInteraction < WhopSDK::Internal::Type::BaseModel
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

      # @!attribute course
      #   The course that contains the tracked lesson.
      #
      #   @return [WhopSDK::Models::CourseLessonInteraction::Course]
      required :course, -> { WhopSDK::CourseLessonInteraction::Course }

      # @!attribute created_at
      #   The datetime the lesson interaction was created.
      #
      #   @return [Time]
      required :created_at, Time

      # @!attribute lesson
      #   The lesson that this progress record belongs to.
      #
      #   @return [WhopSDK::Models::CourseLessonInteraction::Lesson]
      required :lesson, -> { WhopSDK::CourseLessonInteraction::Lesson }

      # @!attribute user
      #   The user whose progress is being tracked.
      #
      #   @return [WhopSDK::Models::CourseLessonInteraction::User]
      required :user, -> { WhopSDK::CourseLessonInteraction::User }

      # @!method initialize(id:, completed:, course:, created_at:, lesson:, user:)
      #   A record of a user's progress on a specific lesson, tracking whether they have
      #   completed it.
      #
      #   @param id [String] The unique identifier for the lesson interaction.
      #
      #   @param completed [Boolean] Whether the user has finished this lesson.
      #
      #   @param course [WhopSDK::Models::CourseLessonInteraction::Course] The course that contains the tracked lesson.
      #
      #   @param created_at [Time] The datetime the lesson interaction was created.
      #
      #   @param lesson [WhopSDK::Models::CourseLessonInteraction::Lesson] The lesson that this progress record belongs to.
      #
      #   @param user [WhopSDK::Models::CourseLessonInteraction::User] The user whose progress is being tracked.

      # @see WhopSDK::Models::CourseLessonInteraction#course
      class Course < WhopSDK::Internal::Type::BaseModel
        # @!attribute id
        #   The unique identifier for the course.
        #
        #   @return [String]
        required :id, String

        # @!attribute experience
        #   The parent experience that this course belongs to.
        #
        #   @return [WhopSDK::Models::CourseLessonInteraction::Course::Experience]
        required :experience, -> { WhopSDK::CourseLessonInteraction::Course::Experience }

        # @!attribute title
        #   The display name of the course shown to students. Null if no title has been set.
        #
        #   @return [String, nil]
        required :title, String, nil?: true

        # @!method initialize(id:, experience:, title:)
        #   Some parameter documentations has been truncated, see
        #   {WhopSDK::Models::CourseLessonInteraction::Course} for more details.
        #
        #   The course that contains the tracked lesson.
        #
        #   @param id [String] The unique identifier for the course.
        #
        #   @param experience [WhopSDK::Models::CourseLessonInteraction::Course::Experience] The parent experience that this course belongs to.
        #
        #   @param title [String, nil] The display name of the course shown to students. Null if no title has been set.

        # @see WhopSDK::Models::CourseLessonInteraction::Course#experience
        class Experience < WhopSDK::Internal::Type::BaseModel
          # @!attribute id
          #   The unique identifier for the experience.
          #
          #   @return [String]
          required :id, String

          # @!method initialize(id:)
          #   The parent experience that this course belongs to.
          #
          #   @param id [String] The unique identifier for the experience.
        end
      end

      # @see WhopSDK::Models::CourseLessonInteraction#lesson
      class Lesson < WhopSDK::Internal::Type::BaseModel
        # @!attribute id
        #   The unique identifier for the lesson.
        #
        #   @return [String]
        required :id, String

        # @!attribute chapter
        #   The parent chapter that contains this lesson.
        #
        #   @return [WhopSDK::Models::CourseLessonInteraction::Lesson::Chapter]
        required :chapter, -> { WhopSDK::CourseLessonInteraction::Lesson::Chapter }

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
        #   @param chapter [WhopSDK::Models::CourseLessonInteraction::Lesson::Chapter] The parent chapter that contains this lesson.
        #
        #   @param title [String] The display name of the lesson shown to students. Maximum 120 characters.

        # @see WhopSDK::Models::CourseLessonInteraction::Lesson#chapter
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

      # @see WhopSDK::Models::CourseLessonInteraction#user
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
