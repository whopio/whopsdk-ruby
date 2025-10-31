# frozen_string_literal: true

module WhopSDK
  module Models
    # @see WhopSDK::Resources::CourseLessons#update
    class CourseLessonUpdateParams < WhopSDK::Internal::Type::BaseModel
      extend WhopSDK::Internal::Type::RequestParameters::Converter
      include WhopSDK::Internal::Type::RequestParameters

      # @!attribute assessment_completion_requirement
      #   Completion requirements for quiz/knowledge check lessons
      #
      #   @return [WhopSDK::Models::CourseLessonUpdateParams::AssessmentCompletionRequirement, nil]
      optional :assessment_completion_requirement,
               -> { WhopSDK::CourseLessonUpdateParams::AssessmentCompletionRequirement },
               nil?: true

      # @!attribute assessment_questions
      #   Assessment questions for quiz/knowledge check lessons. Replaces all existing
      #   questions.
      #
      #   @return [Array<WhopSDK::Models::CourseLessonUpdateParams::AssessmentQuestion>, nil]
      optional :assessment_questions,
               -> { WhopSDK::Internal::Type::ArrayOf[WhopSDK::CourseLessonUpdateParams::AssessmentQuestion] },
               nil?: true

      # @!attribute attachments
      #   General attachments for the lesson (PDFs, files, etc). Replaces all existing
      #   attachments.
      #
      #   @return [Array<WhopSDK::Models::CourseLessonUpdateParams::Attachment>, nil]
      optional :attachments,
               -> { WhopSDK::Internal::Type::ArrayOf[WhopSDK::CourseLessonUpdateParams::Attachment] },
               nil?: true

      # @!attribute content
      #   The content of the lesson
      #
      #   @return [String, nil]
      optional :content, String, nil?: true

      # @!attribute days_from_course_start_until_unlock
      #   Days from course start until unlock
      #
      #   @return [Integer, nil]
      optional :days_from_course_start_until_unlock, Integer, nil?: true

      # @!attribute lesson_type
      #   The available types for a lesson
      #
      #   @return [Symbol, WhopSDK::Models::LessonTypes, nil]
      optional :lesson_type, enum: -> { WhopSDK::LessonTypes }, nil?: true

      # @!attribute main_pdf
      #   The main PDF file for this lesson
      #
      #   @return [WhopSDK::Models::CourseLessonUpdateParams::MainPdf, nil]
      optional :main_pdf, -> { WhopSDK::CourseLessonUpdateParams::MainPdf }

      # @!attribute max_attempts
      #   Maximum number of attempts allowed for assessments
      #
      #   @return [Integer, nil]
      optional :max_attempts, Integer, nil?: true

      # @!attribute mux_asset_id
      #   The ID of the Mux asset to attach to this lesson for video lessons
      #
      #   @return [String, nil]
      optional :mux_asset_id, String, nil?: true

      # @!attribute title
      #   The title of the lesson
      #
      #   @return [String, nil]
      optional :title, String, nil?: true

      # @!attribute visibility
      #   The available visibilities for a lesson. Determines how / whether a lesson is
      #   visible to users.
      #
      #   @return [Symbol, WhopSDK::Models::LessonVisibilities, nil]
      optional :visibility, enum: -> { WhopSDK::LessonVisibilities }, nil?: true

      # @!method initialize(assessment_completion_requirement: nil, assessment_questions: nil, attachments: nil, content: nil, days_from_course_start_until_unlock: nil, lesson_type: nil, main_pdf: nil, max_attempts: nil, mux_asset_id: nil, title: nil, visibility: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {WhopSDK::Models::CourseLessonUpdateParams} for more details.
      #
      #   @param assessment_completion_requirement [WhopSDK::Models::CourseLessonUpdateParams::AssessmentCompletionRequirement, nil] Completion requirements for quiz/knowledge check lessons
      #
      #   @param assessment_questions [Array<WhopSDK::Models::CourseLessonUpdateParams::AssessmentQuestion>, nil] Assessment questions for quiz/knowledge check lessons. Replaces all existing que
      #
      #   @param attachments [Array<WhopSDK::Models::CourseLessonUpdateParams::Attachment>, nil] General attachments for the lesson (PDFs, files, etc). Replaces all existing att
      #
      #   @param content [String, nil] The content of the lesson
      #
      #   @param days_from_course_start_until_unlock [Integer, nil] Days from course start until unlock
      #
      #   @param lesson_type [Symbol, WhopSDK::Models::LessonTypes, nil] The available types for a lesson
      #
      #   @param main_pdf [WhopSDK::Models::CourseLessonUpdateParams::MainPdf] The main PDF file for this lesson
      #
      #   @param max_attempts [Integer, nil] Maximum number of attempts allowed for assessments
      #
      #   @param mux_asset_id [String, nil] The ID of the Mux asset to attach to this lesson for video lessons
      #
      #   @param title [String, nil] The title of the lesson
      #
      #   @param visibility [Symbol, WhopSDK::Models::LessonVisibilities, nil] The available visibilities for a lesson. Determines how / whether a lesson is vi
      #
      #   @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}]

      class AssessmentCompletionRequirement < WhopSDK::Internal::Type::BaseModel
        # @!attribute minimum_grade_percent
        #   The minimum grade percentage required to pass (0-100). Cannot be set together
        #   with minimum_questions_correct.
        #
        #   @return [Float, nil]
        optional :minimum_grade_percent, Float, nil?: true

        # @!attribute minimum_questions_correct
        #   The minimum number of questions that must be answered correctly. Cannot be set
        #   together with minimum_grade_percent.
        #
        #   @return [Integer, nil]
        optional :minimum_questions_correct, Integer, nil?: true

        # @!method initialize(minimum_grade_percent: nil, minimum_questions_correct: nil)
        #   Some parameter documentations has been truncated, see
        #   {WhopSDK::Models::CourseLessonUpdateParams::AssessmentCompletionRequirement} for
        #   more details.
        #
        #   Completion requirements for quiz/knowledge check lessons
        #
        #   @param minimum_grade_percent [Float, nil] The minimum grade percentage required to pass (0-100). Cannot be set together wi
        #
        #   @param minimum_questions_correct [Integer, nil] The minimum number of questions that must be answered correctly. Cannot be set t
      end

      class AssessmentQuestion < WhopSDK::Internal::Type::BaseModel
        # @!attribute correct_answer
        #   The correct answer for the question. Used for short answer questions
        #
        #   @return [String]
        required :correct_answer, String

        # @!attribute question_text
        #   The text of the question
        #
        #   @return [String]
        required :question_text, String

        # @!attribute question_type
        #   The type of the question
        #
        #   @return [Symbol, WhopSDK::Models::AssessmentQuestionTypes]
        required :question_type, enum: -> { WhopSDK::AssessmentQuestionTypes }

        # @!attribute id
        #   The ID of an existing question. If provided, the question will be updated. If
        #   not provided, a new question will be created.
        #
        #   @return [String, nil]
        optional :id, String, nil?: true

        # @!attribute image
        #   Optional image attachment for the question
        #
        #   @return [WhopSDK::Models::CourseLessonUpdateParams::AssessmentQuestion::Image, nil]
        optional :image, -> { WhopSDK::CourseLessonUpdateParams::AssessmentQuestion::Image }

        # @!attribute options
        #   The answer options for multiple choice/select questions
        #
        #   @return [Array<WhopSDK::Models::CourseLessonUpdateParams::AssessmentQuestion::Option>, nil]
        optional :options,
                 -> {
                   WhopSDK::Internal::Type::ArrayOf[WhopSDK::CourseLessonUpdateParams::AssessmentQuestion::Option]
                 },
                 nil?: true

        # @!method initialize(correct_answer:, question_text:, question_type:, id: nil, image: nil, options: nil)
        #   Some parameter documentations has been truncated, see
        #   {WhopSDK::Models::CourseLessonUpdateParams::AssessmentQuestion} for more
        #   details.
        #
        #   Input for creating or updating an assessment question
        #
        #   @param correct_answer [String] The correct answer for the question. Used for short answer questions
        #
        #   @param question_text [String] The text of the question
        #
        #   @param question_type [Symbol, WhopSDK::Models::AssessmentQuestionTypes] The type of the question
        #
        #   @param id [String, nil] The ID of an existing question. If provided, the question will be updated. If no
        #
        #   @param image [WhopSDK::Models::CourseLessonUpdateParams::AssessmentQuestion::Image] Optional image attachment for the question
        #
        #   @param options [Array<WhopSDK::Models::CourseLessonUpdateParams::AssessmentQuestion::Option>, nil] The answer options for multiple choice/select questions

        # @see WhopSDK::Models::CourseLessonUpdateParams::AssessmentQuestion#image
        class Image < WhopSDK::Internal::Type::BaseModel
          # @!attribute id
          #   The ID of an existing attachment object. Use this when updating a resource and
          #   keeping a subset of the attachments. Don't use this unless you know what you're
          #   doing.
          #
          #   @return [String, nil]
          optional :id, String, nil?: true

          # @!attribute direct_upload_id
          #   This ID should be used the first time you upload an attachment. It is the ID of
          #   the direct upload that was created when uploading the file to S3 via the
          #   mediaDirectUpload mutation.
          #
          #   @return [String, nil]
          optional :direct_upload_id, String, nil?: true

          # @!method initialize(id: nil, direct_upload_id: nil)
          #   Some parameter documentations has been truncated, see
          #   {WhopSDK::Models::CourseLessonUpdateParams::AssessmentQuestion::Image} for more
          #   details.
          #
          #   Optional image attachment for the question
          #
          #   @param id [String, nil] The ID of an existing attachment object. Use this when updating a resource and k
          #
          #   @param direct_upload_id [String, nil] This ID should be used the first time you upload an attachment. It is the ID of
        end

        class Option < WhopSDK::Internal::Type::BaseModel
          # @!attribute is_correct
          #   Whether this option is a correct answer
          #
          #   @return [Boolean]
          required :is_correct, WhopSDK::Internal::Type::Boolean

          # @!attribute option_text
          #   The text of the answer option
          #
          #   @return [String]
          required :option_text, String

          # @!attribute id
          #   The ID of an existing option. If provided, the option will be updated. If not
          #   provided, a new option will be created.
          #
          #   @return [String, nil]
          optional :id, String, nil?: true

          # @!method initialize(is_correct:, option_text:, id: nil)
          #   Some parameter documentations has been truncated, see
          #   {WhopSDK::Models::CourseLessonUpdateParams::AssessmentQuestion::Option} for more
          #   details.
          #
          #   Input for creating or updating an assessment question option
          #
          #   @param is_correct [Boolean] Whether this option is a correct answer
          #
          #   @param option_text [String] The text of the answer option
          #
          #   @param id [String, nil] The ID of an existing option. If provided, the option will be updated. If not pr
        end
      end

      class Attachment < WhopSDK::Internal::Type::BaseModel
        # @!attribute id
        #   The ID of an existing attachment object. Use this when updating a resource and
        #   keeping a subset of the attachments. Don't use this unless you know what you're
        #   doing.
        #
        #   @return [String, nil]
        optional :id, String, nil?: true

        # @!attribute direct_upload_id
        #   This ID should be used the first time you upload an attachment. It is the ID of
        #   the direct upload that was created when uploading the file to S3 via the
        #   mediaDirectUpload mutation.
        #
        #   @return [String, nil]
        optional :direct_upload_id, String, nil?: true

        # @!method initialize(id: nil, direct_upload_id: nil)
        #   Some parameter documentations has been truncated, see
        #   {WhopSDK::Models::CourseLessonUpdateParams::Attachment} for more details.
        #
        #   Input for an attachment
        #
        #   @param id [String, nil] The ID of an existing attachment object. Use this when updating a resource and k
        #
        #   @param direct_upload_id [String, nil] This ID should be used the first time you upload an attachment. It is the ID of
      end

      class MainPdf < WhopSDK::Internal::Type::BaseModel
        # @!attribute id
        #   The ID of an existing attachment object. Use this when updating a resource and
        #   keeping a subset of the attachments. Don't use this unless you know what you're
        #   doing.
        #
        #   @return [String, nil]
        optional :id, String, nil?: true

        # @!attribute direct_upload_id
        #   This ID should be used the first time you upload an attachment. It is the ID of
        #   the direct upload that was created when uploading the file to S3 via the
        #   mediaDirectUpload mutation.
        #
        #   @return [String, nil]
        optional :direct_upload_id, String, nil?: true

        # @!method initialize(id: nil, direct_upload_id: nil)
        #   Some parameter documentations has been truncated, see
        #   {WhopSDK::Models::CourseLessonUpdateParams::MainPdf} for more details.
        #
        #   The main PDF file for this lesson
        #
        #   @param id [String, nil] The ID of an existing attachment object. Use this when updating a resource and k
        #
        #   @param direct_upload_id [String, nil] This ID should be used the first time you upload an attachment. It is the ID of
      end
    end
  end
end
