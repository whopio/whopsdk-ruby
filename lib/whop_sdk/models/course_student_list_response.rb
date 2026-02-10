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
      #   The total number of lessons this student has marked as completed in the course.
      #
      #   @return [Integer]
      required :completed_lessons_count, Integer

      # @!attribute completion_rate
      #   The percentage of available lessons the student has completed, as a value from 0
      #   to 100 rounded to two decimal places.
      #
      #   @return [Float]
      required :completion_rate, Float

      # @!attribute first_interaction_at
      #   The timestamp when the student first interacted with this course, as a Unix
      #   timestamp.
      #
      #   @return [Time]
      required :first_interaction_at, Time

      # @!attribute last_interaction_at
      #   The timestamp when the student most recently interacted with this course, as a
      #   Unix timestamp.
      #
      #   @return [Time]
      required :last_interaction_at, Time

      # @!attribute total_lessons_count
      #   The total number of visible lessons available to this student in the course.
      #
      #   @return [Integer]
      required :total_lessons_count, Integer

      # @!attribute user
      #   The user profile of the enrolled student.
      #
      #   @return [WhopSDK::Models::CourseStudentListResponse::User]
      required :user, -> { WhopSDK::Models::CourseStudentListResponse::User }

      # @!method initialize(id:, completed_lessons_count:, completion_rate:, first_interaction_at:, last_interaction_at:, total_lessons_count:, user:)
      #   Some parameter documentations has been truncated, see
      #   {WhopSDK::Models::CourseStudentListResponse} for more details.
      #
      #   An enrollment record for a student in a course, including progress and
      #   completion metrics.
      #
      #   @param id [String] The unique identifier for the course student type.
      #
      #   @param completed_lessons_count [Integer] The total number of lessons this student has marked as completed in the course.
      #
      #   @param completion_rate [Float] The percentage of available lessons the student has completed, as a value from 0
      #
      #   @param first_interaction_at [Time] The timestamp when the student first interacted with this course, as a Unix time
      #
      #   @param last_interaction_at [Time] The timestamp when the student most recently interacted with this course, as a U
      #
      #   @param total_lessons_count [Integer] The total number of visible lessons available to this student in the course.
      #
      #   @param user [WhopSDK::Models::CourseStudentListResponse::User] The user profile of the enrolled student.

      # @see WhopSDK::Models::CourseStudentListResponse#user
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
        #   The user profile of the enrolled student.
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
