# frozen_string_literal: true

module WhopSDK
  module Models
    # @see WhopSDK::Resources::CourseLessons#submit_assessment
    class CourseLessonSubmitAssessmentResponse < WhopSDK::Internal::Type::BaseModel
      # @!attribute id
      #   The ID of the assessment result
      #
      #   @return [String]
      required :id, String

      # @!attribute created_at
      #   When the assessment was taken
      #
      #   @return [Time]
      required :created_at, Time

      # @!attribute lesson
      #   The lesson this assessment result is for
      #
      #   @return [WhopSDK::Models::CourseLessonSubmitAssessmentResponse::Lesson]
      required :lesson, -> { WhopSDK::Models::CourseLessonSubmitAssessmentResponse::Lesson }

      # @!attribute result_correct
      #   The number of correct answers
      #
      #   @return [Integer]
      required :result_correct, Integer

      # @!attribute result_grade
      #   The grade achieved on the assessment
      #
      #   @return [Float]
      required :result_grade, Float

      # @!attribute result_graded_questions
      #   Array of graded questions with details
      #
      #   @return [Hash{Symbol=>Object}]
      required :result_graded_questions, WhopSDK::Internal::Type::HashOf[WhopSDK::Internal::Type::Unknown]

      # @!attribute result_passing_grade
      #   Whether the user achieved a passing grade
      #
      #   @return [Boolean]
      required :result_passing_grade, WhopSDK::Internal::Type::Boolean

      # @!attribute result_question_count
      #   The total number of questions in the assessment
      #
      #   @return [Integer]
      required :result_question_count, Integer

      # @!attribute score_percent
      #   The percentage score achieved on the assessment
      #
      #   @return [Float]
      required :score_percent, Float

      # @!attribute updated_at
      #   When the assessment result was last updated
      #
      #   @return [Time]
      required :updated_at, Time

      # @!attribute user
      #   The user who took the assessment
      #
      #   @return [WhopSDK::Models::CourseLessonSubmitAssessmentResponse::User]
      required :user, -> { WhopSDK::Models::CourseLessonSubmitAssessmentResponse::User }

      # @!method initialize(id:, created_at:, lesson:, result_correct:, result_grade:, result_graded_questions:, result_passing_grade:, result_question_count:, score_percent:, updated_at:, user:)
      #   The result of a user's assessment attempt
      #
      #   @param id [String] The ID of the assessment result
      #
      #   @param created_at [Time] When the assessment was taken
      #
      #   @param lesson [WhopSDK::Models::CourseLessonSubmitAssessmentResponse::Lesson] The lesson this assessment result is for
      #
      #   @param result_correct [Integer] The number of correct answers
      #
      #   @param result_grade [Float] The grade achieved on the assessment
      #
      #   @param result_graded_questions [Hash{Symbol=>Object}] Array of graded questions with details
      #
      #   @param result_passing_grade [Boolean] Whether the user achieved a passing grade
      #
      #   @param result_question_count [Integer] The total number of questions in the assessment
      #
      #   @param score_percent [Float] The percentage score achieved on the assessment
      #
      #   @param updated_at [Time] When the assessment result was last updated
      #
      #   @param user [WhopSDK::Models::CourseLessonSubmitAssessmentResponse::User] The user who took the assessment

      # @see WhopSDK::Models::CourseLessonSubmitAssessmentResponse#lesson
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
        #   The lesson this assessment result is for
        #
        #   @param id [String] The ID of the lesson
        #
        #   @param title [String] The title of the lesson
      end

      # @see WhopSDK::Models::CourseLessonSubmitAssessmentResponse#user
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
        #   The user who took the assessment
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
