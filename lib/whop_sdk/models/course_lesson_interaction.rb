# frozen_string_literal: true

module WhopSDK
  module Models
    class CourseLessonInteraction < WhopSDK::Internal::Type::BaseModel
      # @!attribute id
      #   The ID of the lesson interaction
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
      #   When the interaction was created
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
      #   @param id [String] The ID of the lesson interaction
      #
      #   @param completed [Boolean] Whether the lesson has been completed by the user
      #
      #   @param course [WhopSDK::Models::CourseLessonInteraction::Course] The course for this lesson interaction
      #
      #   @param created_at [Time] When the interaction was created
      #
      #   @param lesson [WhopSDK::Models::CourseLessonInteraction::Lesson] The lesson this interaction is for
      #
      #   @param user [WhopSDK::Models::CourseLessonInteraction::User] The user who interacted with the lesson

      # @see WhopSDK::Models::CourseLessonInteraction#course
      class Course < WhopSDK::Internal::Type::BaseModel
        # @!attribute id
        #   The ID of the course. Looks like cors_XXX
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
        #   @param id [String] The ID of the course. Looks like cors_XXX
        #
        #   @param experience [WhopSDK::Models::CourseLessonInteraction::Course::Experience] The experience that the course belongs to
        #
        #   @param title [String, nil] The title of the course

        # @see WhopSDK::Models::CourseLessonInteraction::Course#experience
        class Experience < WhopSDK::Internal::Type::BaseModel
          # @!attribute id
          #   The unique ID representing this experience
          #
          #   @return [String]
          required :id, String

          # @!method initialize(id:)
          #   The experience that the course belongs to
          #
          #   @param id [String] The unique ID representing this experience
        end
      end

      # @see WhopSDK::Models::CourseLessonInteraction#lesson
      class Lesson < WhopSDK::Internal::Type::BaseModel
        # @!attribute id
        #   The ID of the lesson
        #
        #   @return [String]
        required :id, String

        # @!attribute title
        #   The title of the lesson
        #
        #   @return [String]
        required :title, String

        # @!method initialize(id:, title:)
        #   The lesson this interaction is for
        #
        #   @param id [String] The ID of the lesson
        #
        #   @param title [String] The title of the lesson
      end

      # @see WhopSDK::Models::CourseLessonInteraction#user
      class User < WhopSDK::Internal::Type::BaseModel
        # @!attribute id
        #   The internal ID of the user.
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
        #   @param id [String] The internal ID of the user.
        #
        #   @param name [String, nil] The name of the user from their Whop account.
        #
        #   @param username [String] The username of the user from their Whop account.
      end
    end
  end
end
