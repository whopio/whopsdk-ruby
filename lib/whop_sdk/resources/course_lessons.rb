# frozen_string_literal: true

module WhopSDK
  module Resources
    # Course lessons
    class CourseLessons
      # Some parameter documentations has been truncated, see
      # {WhopSDK::Models::CourseLessonCreateParams} for more details.
      #
      # Create a new lesson within a course chapter. Lessons can contain video, text, or
      # assessment content.
      #
      # Required permissions:
      #
      # - `courses:update`
      #
      # @overload create(chapter_id:, lesson_type:, content: nil, days_from_course_start_until_unlock: nil, embed_id: nil, embed_type: nil, thumbnail: nil, title: nil, request_options: {})
      #
      # @param chapter_id [String] The unique identifier of the chapter to create the lesson in (e.g., "chap_XXXXX"
      #
      # @param lesson_type [Symbol, WhopSDK::Models::LessonTypes] The content type of the lesson, such as video, text, quiz, or knowledge check.
      #
      # @param content [String, nil] The Markdown content body of the lesson.
      #
      # @param days_from_course_start_until_unlock [Integer, nil] The number of days after a student starts the course before this lesson becomes
      #
      # @param embed_id [String, nil] The external video identifier for embedded content (e.g., a YouTube video ID or
      #
      # @param embed_type [Symbol, WhopSDK::Models::EmbedType, nil] The type of embed for a lesson
      #
      # @param thumbnail [WhopSDK::Models::CourseLessonCreateParams::Thumbnail, nil] The thumbnail image for the lesson in PNG, JPEG, or GIF format.
      #
      # @param title [String, nil] The display title of the lesson (e.g., "Getting Started with APIs").
      #
      # @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [WhopSDK::Models::Lesson]
      #
      # @see WhopSDK::Models::CourseLessonCreateParams
      def create(params)
        parsed, options = WhopSDK::CourseLessonCreateParams.dump_request(params)
        @client.request(
          method: :post,
          path: "course_lessons",
          body: parsed,
          model: WhopSDK::Lesson,
          options: options
        )
      end

      # Retrieves the details of an existing course lesson.
      #
      # Required permissions:
      #
      # - `courses:read`
      #
      # @overload retrieve(id, request_options: {})
      #
      # @param id [String] The unique identifier of the lesson to retrieve.
      #
      # @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [WhopSDK::Models::Lesson]
      #
      # @see WhopSDK::Models::CourseLessonRetrieveParams
      def retrieve(id, params = {})
        @client.request(
          method: :get,
          path: ["course_lessons/%1$s", id],
          model: WhopSDK::Lesson,
          options: params[:request_options]
        )
      end

      # Some parameter documentations has been truncated, see
      # {WhopSDK::Models::CourseLessonUpdateParams} for more details.
      #
      # Update a lesson's content, type, visibility, assessment questions, or media
      # attachments.
      #
      # Required permissions:
      #
      # - `courses:update`
      #
      # @overload update(id, assessment_completion_requirement: nil, assessment_questions: nil, attachments: nil, content: nil, days_from_course_start_until_unlock: nil, embed_id: nil, embed_type: nil, lesson_type: nil, main_pdf: nil, max_attempts: nil, mux_asset_id: nil, thumbnail: nil, title: nil, visibility: nil, request_options: {})
      #
      # @param id [String] The unique identifier of the lesson to update (e.g., "les_XXXXX").
      #
      # @param assessment_completion_requirement [WhopSDK::Models::CourseLessonUpdateParams::AssessmentCompletionRequirement, nil] The passing criteria for quiz or knowledge check lessons, such as minimum grade
      #
      # @param assessment_questions [Array<WhopSDK::Models::CourseLessonUpdateParams::AssessmentQuestion>, nil] The full list of assessment questions for quiz or knowledge check lessons. Repla
      #
      # @param attachments [Array<WhopSDK::Models::CourseLessonUpdateParams::Attachment>, nil] File attachments for the lesson such as PDFs or documents. Replaces all existing
      #
      # @param content [String, nil] The Markdown content body of the lesson.
      #
      # @param days_from_course_start_until_unlock [Integer, nil] The number of days after a student starts the course before this lesson becomes
      #
      # @param embed_id [String, nil] The external video identifier for embedded content (e.g., a YouTube video ID or
      #
      # @param embed_type [Symbol, WhopSDK::Models::EmbedType, nil] The type of embed for a lesson
      #
      # @param lesson_type [Symbol, WhopSDK::Models::LessonTypes, nil] The available types for a lesson
      #
      # @param main_pdf [WhopSDK::Models::CourseLessonUpdateParams::MainPdf, nil] The primary PDF document attached to this lesson for student reference.
      #
      # @param max_attempts [Integer, nil] The maximum number of attempts a student is allowed for assessment lessons.
      #
      # @param mux_asset_id [String, nil] The identifier of a Mux video asset to attach to this lesson (e.g., "mux_XXXXX")
      #
      # @param thumbnail [WhopSDK::Models::CourseLessonUpdateParams::Thumbnail, nil] The thumbnail image for the lesson in PNG, JPEG, or GIF format.
      #
      # @param title [String, nil] The display title of the lesson (e.g., "Getting Started with APIs").
      #
      # @param visibility [Symbol, WhopSDK::Models::LessonVisibilities, nil] The available visibilities for a lesson. Determines how / whether a lesson is vi
      #
      # @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [WhopSDK::Models::Lesson]
      #
      # @see WhopSDK::Models::CourseLessonUpdateParams
      def update(id, params = {})
        parsed, options = WhopSDK::CourseLessonUpdateParams.dump_request(params)
        @client.request(
          method: :patch,
          path: ["course_lessons/%1$s", id],
          body: parsed,
          model: WhopSDK::Lesson,
          options: options
        )
      end

      # Returns a paginated list of lessons within a course or chapter, ordered by
      # position.
      #
      # Required permissions:
      #
      # - `courses:read`
      #
      # @overload list(after: nil, before: nil, chapter_id: nil, course_id: nil, first: nil, last: nil, request_options: {})
      #
      # @param after [String, nil] Returns the elements in the list that come after the specified cursor.
      #
      # @param before [String, nil] Returns the elements in the list that come before the specified cursor.
      #
      # @param chapter_id [String, nil] The unique identifier of a chapter to return only its lessons.
      #
      # @param course_id [String, nil] The unique identifier of the course to return all lessons across all chapters.
      #
      # @param first [Integer, nil] Returns the first _n_ elements from the list.
      #
      # @param last [Integer, nil] Returns the last _n_ elements from the list.
      #
      # @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [WhopSDK::Internal::CursorPage<WhopSDK::Models::CourseLessonListResponse>]
      #
      # @see WhopSDK::Models::CourseLessonListParams
      def list(params = {})
        parsed, options = WhopSDK::CourseLessonListParams.dump_request(params)
        query = WhopSDK::Internal::Util.encode_query_params(parsed)
        @client.request(
          method: :get,
          path: "course_lessons",
          query: query,
          page: WhopSDK::Internal::CursorPage,
          model: WhopSDK::Models::CourseLessonListResponse,
          options: options
        )
      end

      # Permanently delete a lesson and remove it from its chapter.
      #
      # Required permissions:
      #
      # - `courses:update`
      #
      # @overload delete(id, request_options: {})
      #
      # @param id [String] The unique identifier of the lesson to delete (e.g., "les_XXXXX").
      #
      # @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Boolean]
      #
      # @see WhopSDK::Models::CourseLessonDeleteParams
      def delete(id, params = {})
        @client.request(
          method: :delete,
          path: ["course_lessons/%1$s", id],
          model: WhopSDK::Internal::Type::Boolean,
          options: params[:request_options]
        )
      end

      # Mark a lesson as completed for the current user after they finish the content.
      #
      # @overload mark_as_completed(lesson_id, request_options: {})
      #
      # @param lesson_id [String] The unique identifier of the lesson to mark as completed (e.g., "les_XXXXX").
      #
      # @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Boolean]
      #
      # @see WhopSDK::Models::CourseLessonMarkAsCompletedParams
      def mark_as_completed(lesson_id, params = {})
        @client.request(
          method: :post,
          path: ["course_lessons/%1$s/mark_as_completed", lesson_id],
          model: WhopSDK::Internal::Type::Boolean,
          options: params[:request_options]
        )
      end

      # Record that the current user has started viewing a lesson, creating progress
      # tracking records.
      #
      # @overload start(lesson_id, request_options: {})
      #
      # @param lesson_id [String] The unique identifier of the lesson the user is starting (e.g., "les_XXXXX").
      #
      # @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Boolean]
      #
      # @see WhopSDK::Models::CourseLessonStartParams
      def start(lesson_id, params = {})
        @client.request(
          method: :post,
          path: ["course_lessons/%1$s/start", lesson_id],
          model: WhopSDK::Internal::Type::Boolean,
          options: params[:request_options]
        )
      end

      # Some parameter documentations has been truncated, see
      # {WhopSDK::Models::CourseLessonSubmitAssessmentParams} for more details.
      #
      # Submit answers for a quiz or knowledge check lesson and receive a graded result.
      #
      # @overload submit_assessment(lesson_id, answers:, request_options: {})
      #
      # @param lesson_id [String] The unique identifier of the quiz or knowledge check lesson to submit answers fo
      #
      # @param answers [Array<WhopSDK::Models::CourseLessonSubmitAssessmentParams::Answer>] The list of answers to submit for each assessment question.
      #
      # @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [WhopSDK::Models::CourseLessonSubmitAssessmentResponse]
      #
      # @see WhopSDK::Models::CourseLessonSubmitAssessmentParams
      def submit_assessment(lesson_id, params)
        parsed, options = WhopSDK::CourseLessonSubmitAssessmentParams.dump_request(params)
        @client.request(
          method: :post,
          path: ["course_lessons/%1$s/submit_assessment", lesson_id],
          body: parsed,
          model: WhopSDK::Models::CourseLessonSubmitAssessmentResponse,
          options: options
        )
      end

      # @api private
      #
      # @param client [WhopSDK::Client]
      def initialize(client:)
        @client = client
      end
    end
  end
end
