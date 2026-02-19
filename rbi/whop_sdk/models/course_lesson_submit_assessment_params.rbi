# typed: strong

module WhopSDK
  module Models
    class CourseLessonSubmitAssessmentParams < WhopSDK::Internal::Type::BaseModel
      extend WhopSDK::Internal::Type::RequestParameters::Converter
      include WhopSDK::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            WhopSDK::CourseLessonSubmitAssessmentParams,
            WhopSDK::Internal::AnyHash
          )
        end

      # The list of answers to submit for each assessment question.
      sig do
        returns(T::Array[WhopSDK::CourseLessonSubmitAssessmentParams::Answer])
      end
      attr_accessor :answers

      sig do
        params(
          answers:
            T::Array[
              WhopSDK::CourseLessonSubmitAssessmentParams::Answer::OrHash
            ],
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # The list of answers to submit for each assessment question.
        answers:,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            answers:
              T::Array[WhopSDK::CourseLessonSubmitAssessmentParams::Answer],
            request_options: WhopSDK::RequestOptions
          }
        )
      end
      def to_hash
      end

      class Answer < WhopSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              WhopSDK::CourseLessonSubmitAssessmentParams::Answer,
              WhopSDK::Internal::AnyHash
            )
          end

        # The ID of the question being answered
        sig { returns(String) }
        attr_accessor :question_id

        # The text answer provided by the user (for short answer questions)
        sig { returns(T.nilable(String)) }
        attr_accessor :answer_text

        # The IDs of the selected options (for multiple choice/select questions)
        sig { returns(T.nilable(T::Array[String])) }
        attr_accessor :selected_option_ids

        # Input for a single question's answer in an assessment submission
        sig do
          params(
            question_id: String,
            answer_text: T.nilable(String),
            selected_option_ids: T.nilable(T::Array[String])
          ).returns(T.attached_class)
        end
        def self.new(
          # The ID of the question being answered
          question_id:,
          # The text answer provided by the user (for short answer questions)
          answer_text: nil,
          # The IDs of the selected options (for multiple choice/select questions)
          selected_option_ids: nil
        )
        end

        sig do
          override.returns(
            {
              question_id: String,
              answer_text: T.nilable(String),
              selected_option_ids: T.nilable(T::Array[String])
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
