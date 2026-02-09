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
      #   Whether the lesson has been completed by the user
      #
      #   @return [Boolean]
      required :completed, WhopSDK::Internal::Type::Boolean

      # @!attribute course
      #   The course for this lesson interaction
      #
      #   @return [WhopSDK::Models::CourseLessonInteraction::Course]
      required :course, -> { WhopSDK::CourseLessonInteraction::Course }

      # @!attribute created_at
      #   The datetime the lesson interaction was created.
      #
      #   @return [Time]
      required :created_at, Time

      # @!attribute lesson
      #   The lesson this interaction is for
      #
      #   @return [WhopSDK::Models::CourseLessonInteraction::Lesson]
      required :lesson, -> { WhopSDK::CourseLessonInteraction::Lesson }

      # @!attribute user
      #   The user who interacted with the lesson
      #
      #   @return [WhopSDK::Models::CourseLessonInteraction::User]
      required :user, -> { WhopSDK::CourseLessonInteraction::User }

      # @!method initialize(id:, completed:, course:, created_at:, lesson:, user:)
      #   A lesson interaction tracking user progress in courses
      #
      #   @param id [String] The unique identifier for the lesson interaction.
      #
      #   @param completed [Boolean] Whether the lesson has been completed by the user
      #
      #   @param course [WhopSDK::Models::CourseLessonInteraction::Course] The course for this lesson interaction
      #
      #   @param created_at [Time] The datetime the lesson interaction was created.
      #
      #   @param lesson [WhopSDK::Models::CourseLessonInteraction::Lesson] The lesson this interaction is for
      #
      #   @param user [WhopSDK::Models::CourseLessonInteraction::User] The user who interacted with the lesson

      # @see WhopSDK::Models::CourseLessonInteraction#course
      class Course < WhopSDK::Internal::Type::BaseModel
        # @!attribute id
        #   The unique identifier for the course.
        #
        #   @return [String]
        required :id, String

        # @!attribute experience
        #   The experience that the course belongs to
        #
        #   @return [WhopSDK::Models::CourseLessonInteraction::Course::Experience]
        required :experience, -> { WhopSDK::CourseLessonInteraction::Course::Experience }

        # @!attribute title
        #   The title of the course
        #
        #   @return [String, nil]
        required :title, String, nil?: true

        # @!method initialize(id:, experience:, title:)
        #   The course for this lesson interaction
        #
        #   @param id [String] The unique identifier for the course.
        #
        #   @param experience [WhopSDK::Models::CourseLessonInteraction::Course::Experience] The experience that the course belongs to
        #
        #   @param title [String, nil] The title of the course

        # @see WhopSDK::Models::CourseLessonInteraction::Course#experience
        class Experience < WhopSDK::Internal::Type::BaseModel
          # @!attribute id
          #   The unique identifier for the experience.
          #
          #   @return [String]
          required :id, String

          # @!method initialize(id:)
          #   The experience that the course belongs to
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
        #   The chapter this lesson belongs to
        #
        #   @return [WhopSDK::Models::CourseLessonInteraction::Lesson::Chapter]
        required :chapter, -> { WhopSDK::CourseLessonInteraction::Lesson::Chapter }

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
        #   @param chapter [WhopSDK::Models::CourseLessonInteraction::Lesson::Chapter] The chapter this lesson belongs to
        #
        #   @param title [String] The title of the lesson

        # @see WhopSDK::Models::CourseLessonInteraction::Lesson#chapter
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
        #   The user who interacted with the lesson
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
