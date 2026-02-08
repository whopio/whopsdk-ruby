# frozen_string_literal: true

module WhopSDK
  module Models
    # @see WhopSDK::Resources::CourseStudents#retrieve
    class CourseStudentRetrieveResponse < WhopSDK::Internal::Type::BaseModel
      # @!attribute id
      #   The unique identifier for the course student type.
      #
      #   @return [String]
      required :id, String

      # @!attribute completed_lessons_count
      #   The number of lessons the student has completed
      #
      #   @return [Integer]
      required :completed_lessons_count, Integer

      # @!attribute completion_rate
      #   The percentage of lessons completed (0-100)
      #
      #   @return [Float]
      required :completion_rate, Float

      # @!attribute course
      #   The course the student is enrolled in
      #
      #   @return [WhopSDK::Models::CourseStudentRetrieveResponse::Course]
      required :course, -> { WhopSDK::Models::CourseStudentRetrieveResponse::Course }

      # @!attribute first_interaction_at
      #   When the student first interacted with the course
      #
      #   @return [Time]
      required :first_interaction_at, Time

      # @!attribute last_interaction_at
      #   When the student last interacted with the course
      #
      #   @return [Time]
      required :last_interaction_at, Time

      # @!attribute total_lessons_count
      #   The total number of lessons the student has access to
      #
      #   @return [Integer]
      required :total_lessons_count, Integer

      # @!attribute user
      #   The user who is enrolled in the course
      #
      #   @return [WhopSDK::Models::CourseStudentRetrieveResponse::User]
      required :user, -> { WhopSDK::Models::CourseStudentRetrieveResponse::User }

      # @!method initialize(id:, completed_lessons_count:, completion_rate:, course:, first_interaction_at:, last_interaction_at:, total_lessons_count:, user:)
      #   A course student (enrollment of a student in a course)
      #
      #   @param id [String] The unique identifier for the course student type.
      #
      #   @param completed_lessons_count [Integer] The number of lessons the student has completed
      #
      #   @param completion_rate [Float] The percentage of lessons completed (0-100)
      #
      #   @param course [WhopSDK::Models::CourseStudentRetrieveResponse::Course] The course the student is enrolled in
      #
      #   @param first_interaction_at [Time] When the student first interacted with the course
      #
      #   @param last_interaction_at [Time] When the student last interacted with the course
      #
      #   @param total_lessons_count [Integer] The total number of lessons the student has access to
      #
      #   @param user [WhopSDK::Models::CourseStudentRetrieveResponse::User] The user who is enrolled in the course

      # @see WhopSDK::Models::CourseStudentRetrieveResponse#course
      class Course < WhopSDK::Internal::Type::BaseModel
        # @!attribute id
        #   The unique identifier for the course.
        #
        #   @return [String]
        required :id, String

        # @!attribute experience
        #   The experience that the course belongs to
        #
        #   @return [WhopSDK::Models::CourseStudentRetrieveResponse::Course::Experience]
        required :experience, -> { WhopSDK::Models::CourseStudentRetrieveResponse::Course::Experience }

        # @!attribute title
        #   The title of the course
        #
        #   @return [String, nil]
        required :title, String, nil?: true

        # @!method initialize(id:, experience:, title:)
        #   The course the student is enrolled in
        #
        #   @param id [String] The unique identifier for the course.
        #
        #   @param experience [WhopSDK::Models::CourseStudentRetrieveResponse::Course::Experience] The experience that the course belongs to
        #
        #   @param title [String, nil] The title of the course

        # @see WhopSDK::Models::CourseStudentRetrieveResponse::Course#experience
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

      # @see WhopSDK::Models::CourseStudentRetrieveResponse#user
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
        #   The user who is enrolled in the course
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
