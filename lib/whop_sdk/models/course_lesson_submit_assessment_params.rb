# frozen_string_literal: true

module WhopSDK
  module Models
    # @see WhopSDK::Resources::CourseLessons#submit_assessment
    class CourseLessonSubmitAssessmentParams < WhopSDK::Internal::Type::BaseModel
      extend WhopSDK::Internal::Type::RequestParameters::Converter
      include WhopSDK::Internal::Type::RequestParameters

      # @!attribute answers
      #   The list of answers to submit for each assessment question.
      #
      #   @return [Array<WhopSDK::Models::CourseLessonSubmitAssessmentParams::Answer>]
      required :answers,
               -> { WhopSDK::Internal::Type::ArrayOf[WhopSDK::CourseLessonSubmitAssessmentParams::Answer] }

      # @!method initialize(answers:, request_options: {})
      #   @param answers [Array<WhopSDK::Models::CourseLessonSubmitAssessmentParams::Answer>] The list of answers to submit for each assessment question.
      #
      #   @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}]

      class Answer < WhopSDK::Internal::Type::BaseModel
        # @!attribute question_id
        #   The ID of the question being answered
        #
        #   @return [String]
        required :question_id, String

        # @!attribute answer_text
        #   The text answer provided by the user (for short answer questions)
        #
        #   @return [String, nil]
        optional :answer_text, String, nil?: true

        # @!attribute selected_option_ids
        #   The IDs of the selected options (for multiple choice/select questions)
        #
        #   @return [Array<String>, nil]
        optional :selected_option_ids, WhopSDK::Internal::Type::ArrayOf[String], nil?: true

        # @!method initialize(question_id:, answer_text: nil, selected_option_ids: nil)
        #   Input for a single question's answer in an assessment submission
        #
        #   @param question_id [String] The ID of the question being answered
        #
        #   @param answer_text [String, nil] The text answer provided by the user (for short answer questions)
        #
        #   @param selected_option_ids [Array<String>, nil] The IDs of the selected options (for multiple choice/select questions)
      end
    end
  end
end
