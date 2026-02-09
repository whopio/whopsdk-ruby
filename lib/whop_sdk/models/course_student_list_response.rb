# frozen_string_literal: true

module WhopSDK
  module Models
    # @see WhopSDK::Resources::CourseStudents#list
    class CourseStudentListResponse < WhopSDK::Internal::Type::BaseModel
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
      #   @return [WhopSDK::Models::CourseStudentListResponse::User]
      required :user, -> { WhopSDK::Models::CourseStudentListResponse::User }

      # @!method initialize(id:, completed_lessons_count:, completion_rate:, first_interaction_at:, last_interaction_at:, total_lessons_count:, user:)
      #   A course student (enrollment of a student in a course)
      #
      #   @param id [String] The unique identifier for the course student type.
      #
      #   @param completed_lessons_count [Integer] The number of lessons the student has completed
      #
      #   @param completion_rate [Float] The percentage of lessons completed (0-100)
      #
      #   @param first_interaction_at [Time] When the student first interacted with the course
      #
      #   @param last_interaction_at [Time] When the student last interacted with the course
      #
      #   @param total_lessons_count [Integer] The total number of lessons the student has access to
      #
      #   @param user [WhopSDK::Models::CourseStudentListResponse::User] The user who is enrolled in the course

      # @see WhopSDK::Models::CourseStudentListResponse#user
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
