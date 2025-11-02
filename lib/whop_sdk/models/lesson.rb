# frozen_string_literal: true

module WhopSDK
  module Models
    # @see WhopSDK::Resources::CourseLessons#create
    class Lesson < WhopSDK::Internal::Type::BaseModel
      # @!attribute id
      #   The ID of the lesson
      #
      #   @return [String]
      required :id, String

      # @!attribute assessment_questions
      #   Assessment questions for quiz/knowledge check lessons
      #
      #   @return [Array<WhopSDK::Models::Lesson::AssessmentQuestion>]
      required :assessment_questions,
               -> { WhopSDK::Internal::Type::ArrayOf[WhopSDK::Lesson::AssessmentQuestion] }

      # @!attribute attachments
      #   The attached files in this lesson as a flat array
      #
      #   @return [Array<WhopSDK::Models::Lesson::Attachment>]
      required :attachments, -> { WhopSDK::Internal::Type::ArrayOf[WhopSDK::Lesson::Attachment] }

      # @!attribute content
      #   The content of the lesson
      #
      #   @return [String, nil]
      required :content, String, nil?: true

      # @!attribute days_from_course_start_until_unlock
      #   Number of days from course start until the lesson is unlocked
      #
      #   @return [Integer, nil]
      required :days_from_course_start_until_unlock, Integer, nil?: true

      # @!attribute lesson_type
      #   The type of the lesson (text, video, pdf, multi, quiz, knowledge_check)
      #
      #   @return [Symbol, WhopSDK::Models::LessonTypes]
      required :lesson_type, enum: -> { WhopSDK::LessonTypes }

      # @!attribute main_pdf
      #   The main PDF file for this lesson
      #
      #   @return [WhopSDK::Models::Lesson::MainPdf, nil]
      required :main_pdf, -> { WhopSDK::Lesson::MainPdf }, nil?: true

      # @!attribute order
      #   The order of the lesson within its chapter
      #
      #   @return [Integer]
      required :order, Integer

      # @!attribute title
      #   The title of the lesson
      #
      #   @return [String]
      required :title, String

      # @!attribute video_asset
      #   The associated Mux asset for video lessons
      #
      #   @return [WhopSDK::Models::Lesson::VideoAsset, nil]
      required :video_asset, -> { WhopSDK::Lesson::VideoAsset }, nil?: true

      # @!attribute visibility
      #   The visibility of the lesson. Determines how / whether this lesson is visible to
      #   users.
      #
      #   @return [Symbol, WhopSDK::Models::LessonVisibilities]
      required :visibility, enum: -> { WhopSDK::LessonVisibilities }

      # @!method initialize(id:, assessment_questions:, attachments:, content:, days_from_course_start_until_unlock:, lesson_type:, main_pdf:, order:, title:, video_asset:, visibility:)
      #   Some parameter documentations has been truncated, see {WhopSDK::Models::Lesson}
      #   for more details.
      #
      #   A lesson from the courses app
      #
      #   @param id [String] The ID of the lesson
      #
      #   @param assessment_questions [Array<WhopSDK::Models::Lesson::AssessmentQuestion>] Assessment questions for quiz/knowledge check lessons
      #
      #   @param attachments [Array<WhopSDK::Models::Lesson::Attachment>] The attached files in this lesson as a flat array
      #
      #   @param content [String, nil] The content of the lesson
      #
      #   @param days_from_course_start_until_unlock [Integer, nil] Number of days from course start until the lesson is unlocked
      #
      #   @param lesson_type [Symbol, WhopSDK::Models::LessonTypes] The type of the lesson (text, video, pdf, multi, quiz, knowledge_check)
      #
      #   @param main_pdf [WhopSDK::Models::Lesson::MainPdf, nil] The main PDF file for this lesson
      #
      #   @param order [Integer] The order of the lesson within its chapter
      #
      #   @param title [String] The title of the lesson
      #
      #   @param video_asset [WhopSDK::Models::Lesson::VideoAsset, nil] The associated Mux asset for video lessons
      #
      #   @param visibility [Symbol, WhopSDK::Models::LessonVisibilities] The visibility of the lesson. Determines how / whether this lesson is visible to

      class AssessmentQuestion < WhopSDK::Internal::Type::BaseModel
        # @!attribute id
        #   The ID of the assessment question
        #
        #   @return [String]
        required :id, String

        # @!attribute correct_answer
        #   The correct answer for the question. Used for short answer questions. Only
        #   visible to admins (users with courses:update permission)
        #
        #   @return [String, nil]
        required :correct_answer, String, nil?: true

        # @!attribute created_at
        #   When the question was created
        #
        #   @return [Time]
        required :created_at, Time

        # @!attribute image
        #   Optional image attachment for the question
        #
        #   @return [WhopSDK::Models::Lesson::AssessmentQuestion::Image, nil]
        required :image, -> { WhopSDK::Lesson::AssessmentQuestion::Image }, nil?: true

        # @!attribute options
        #   The answer options for multiple choice/select questions
        #
        #   @return [Array<WhopSDK::Models::Lesson::AssessmentQuestion::Option>]
        required :options, -> { WhopSDK::Internal::Type::ArrayOf[WhopSDK::Lesson::AssessmentQuestion::Option] }

        # @!attribute order
        #   The order of the question within its lesson
        #
        #   @return [Integer]
        required :order, Integer

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

        # @!method initialize(id:, correct_answer:, created_at:, image:, options:, order:, question_text:, question_type:)
        #   Some parameter documentations has been truncated, see
        #   {WhopSDK::Models::Lesson::AssessmentQuestion} for more details.
        #
        #   An assessment question in a course quiz or knowledge check
        #
        #   @param id [String] The ID of the assessment question
        #
        #   @param correct_answer [String, nil] The correct answer for the question. Used for short answer questions. Only visib
        #
        #   @param created_at [Time] When the question was created
        #
        #   @param image [WhopSDK::Models::Lesson::AssessmentQuestion::Image, nil] Optional image attachment for the question
        #
        #   @param options [Array<WhopSDK::Models::Lesson::AssessmentQuestion::Option>] The answer options for multiple choice/select questions
        #
        #   @param order [Integer] The order of the question within its lesson
        #
        #   @param question_text [String] The text of the question
        #
        #   @param question_type [Symbol, WhopSDK::Models::AssessmentQuestionTypes] The type of the question

        # @see WhopSDK::Models::Lesson::AssessmentQuestion#image
        class Image < WhopSDK::Internal::Type::BaseModel
          # @!attribute id
          #   The ID of the attachment
          #
          #   @return [String]
          required :id, String

          # @!attribute content_type
          #   The attachment's content type (e.g., image/jpg, video/mp4)
          #
          #   @return [String, nil]
          required :content_type, String, nil?: true

          # @!attribute filename
          #   The name of the file
          #
          #   @return [String, nil]
          required :filename, String, nil?: true

          # @!attribute url
          #   This is the URL you use to render optimized attachments on the client. This
          #   should be used for apps.
          #
          #   @return [String, nil]
          required :url, String, nil?: true

          # @!method initialize(id:, content_type:, filename:, url:)
          #   Some parameter documentations has been truncated, see
          #   {WhopSDK::Models::Lesson::AssessmentQuestion::Image} for more details.
          #
          #   Optional image attachment for the question
          #
          #   @param id [String] The ID of the attachment
          #
          #   @param content_type [String, nil] The attachment's content type (e.g., image/jpg, video/mp4)
          #
          #   @param filename [String, nil] The name of the file
          #
          #   @param url [String, nil] This is the URL you use to render optimized attachments on the client. This shou
        end

        class Option < WhopSDK::Internal::Type::BaseModel
          # @!attribute id
          #   The ID of the assessment question option
          #
          #   @return [String]
          required :id, String

          # @!attribute is_correct
          #   Whether this option is a correct answer. Only visible to admins (users with
          #   courses:update permission)
          #
          #   @return [Boolean, nil]
          required :is_correct, WhopSDK::Internal::Type::Boolean, nil?: true

          # @!attribute option_text
          #   The text of the answer option
          #
          #   @return [String]
          required :option_text, String

          # @!attribute order
          #   The order of this option within the question
          #
          #   @return [Integer]
          required :order, Integer

          # @!method initialize(id:, is_correct:, option_text:, order:)
          #   Some parameter documentations has been truncated, see
          #   {WhopSDK::Models::Lesson::AssessmentQuestion::Option} for more details.
          #
          #   An answer option for a multiple choice or multiple select assessment question
          #
          #   @param id [String] The ID of the assessment question option
          #
          #   @param is_correct [Boolean, nil] Whether this option is a correct answer. Only visible to admins (users with cour
          #
          #   @param option_text [String] The text of the answer option
          #
          #   @param order [Integer] The order of this option within the question
        end
      end

      class Attachment < WhopSDK::Internal::Type::BaseModel
        # @!attribute id
        #   The ID of the attachment
        #
        #   @return [String]
        required :id, String

        # @!attribute content_type
        #   The attachment's content type (e.g., image/jpg, video/mp4)
        #
        #   @return [String, nil]
        required :content_type, String, nil?: true

        # @!attribute filename
        #   The name of the file
        #
        #   @return [String, nil]
        required :filename, String, nil?: true

        # @!attribute url
        #   This is the URL you use to render optimized attachments on the client. This
        #   should be used for apps.
        #
        #   @return [String, nil]
        required :url, String, nil?: true

        # @!method initialize(id:, content_type:, filename:, url:)
        #   Some parameter documentations has been truncated, see
        #   {WhopSDK::Models::Lesson::Attachment} for more details.
        #
        #   Represents an image attachment
        #
        #   @param id [String] The ID of the attachment
        #
        #   @param content_type [String, nil] The attachment's content type (e.g., image/jpg, video/mp4)
        #
        #   @param filename [String, nil] The name of the file
        #
        #   @param url [String, nil] This is the URL you use to render optimized attachments on the client. This shou
      end

      # @see WhopSDK::Models::Lesson#main_pdf
      class MainPdf < WhopSDK::Internal::Type::BaseModel
        # @!attribute id
        #   The ID of the attachment
        #
        #   @return [String]
        required :id, String

        # @!attribute content_type
        #   The attachment's content type (e.g., image/jpg, video/mp4)
        #
        #   @return [String, nil]
        required :content_type, String, nil?: true

        # @!attribute filename
        #   The name of the file
        #
        #   @return [String, nil]
        required :filename, String, nil?: true

        # @!attribute url
        #   This is the URL you use to render optimized attachments on the client. This
        #   should be used for apps.
        #
        #   @return [String, nil]
        required :url, String, nil?: true

        # @!method initialize(id:, content_type:, filename:, url:)
        #   Some parameter documentations has been truncated, see
        #   {WhopSDK::Models::Lesson::MainPdf} for more details.
        #
        #   The main PDF file for this lesson
        #
        #   @param id [String] The ID of the attachment
        #
        #   @param content_type [String, nil] The attachment's content type (e.g., image/jpg, video/mp4)
        #
        #   @param filename [String, nil] The name of the file
        #
        #   @param url [String, nil] This is the URL you use to render optimized attachments on the client. This shou
      end

      # @see WhopSDK::Models::Lesson#video_asset
      class VideoAsset < WhopSDK::Internal::Type::BaseModel
        # @!attribute id
        #   The ID of the Mux asset
        #
        #   @return [String]
        required :id, String

        # @!attribute asset_id
        #   The Mux-provided ID of the asset
        #
        #   @return [String, nil]
        required :asset_id, String, nil?: true

        # @!attribute playback_id
        #   The public playback ID of the Mux asset
        #
        #   @return [String, nil]
        required :playback_id, String, nil?: true

        # @!method initialize(id:, asset_id:, playback_id:)
        #   The associated Mux asset for video lessons
        #
        #   @param id [String] The ID of the Mux asset
        #
        #   @param asset_id [String, nil] The Mux-provided ID of the asset
        #
        #   @param playback_id [String, nil] The public playback ID of the Mux asset
      end
    end
  end
end
