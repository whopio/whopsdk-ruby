# frozen_string_literal: true

module WhopSDK
  module Resources
    class CourseLessons
      # Creates a new course lesson
      #
      # Required permissions:
      #
      # - `courses:update`
      #
      # @overload create(chapter_id:, lesson_type:, content: nil, days_from_course_start_until_unlock: nil, title: nil, request_options: {})
      #
      # @param chapter_id [String] The ID of the chapter to create the lesson in
      #
      # @param lesson_type [Symbol, WhopSDK::Models::LessonTypes] The type of the lesson
      #
      # @param content [String, nil] The content of the lesson
      #
      # @param days_from_course_start_until_unlock [Integer, nil] Days from course start until unlock
      #
      # @param title [String, nil] The title of the lesson
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

      # Retrieves a course lesson by ID
      #
      # Required permissions:
      #
      # - `courses:read`
      #
      # @overload retrieve(id, request_options: {})
      #
      # @param id [String]
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
      # Updates a course lesson
      #
      # Required permissions:
      #
      # - `courses:update`
      #
      # @overload update(id, assessment_questions: nil, attachments: nil, content: nil, days_from_course_start_until_unlock: nil, lesson_type: nil, main_pdf: nil, mux_asset_id: nil, title: nil, visibility: nil, request_options: {})
      #
      # @param id [String]
      #
      # @param assessment_questions [Array<WhopSDK::Models::CourseLessonUpdateParams::AssessmentQuestion>, nil] Assessment questions for quiz/knowledge check lessons. Replaces all existing que
      #
      # @param attachments [Array<WhopSDK::Models::CourseLessonUpdateParams::Attachment>, nil] General attachments for the lesson (PDFs, files, etc). Replaces all existing att
      #
      # @param content [String, nil] The content of the lesson
      #
      # @param days_from_course_start_until_unlock [Integer, nil] Days from course start until unlock
      #
      # @param lesson_type [Symbol, WhopSDK::Models::LessonTypes, nil] The available types for a lesson
      #
      # @param main_pdf [WhopSDK::Models::CourseLessonUpdateParams::MainPdf, nil] The main PDF file for this lesson
      #
      # @param mux_asset_id [String, nil] The ID of the Mux asset to attach to this lesson for video lessons
      #
      # @param title [String, nil] The title of the lesson
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

      # Lists lessons for a course or chapter
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
      # @param chapter_id [String, nil] The ID of the chapter (returns lessons only for this chapter)
      #
      # @param course_id [String, nil] The ID of the course (returns all lessons across all chapters)
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
        @client.request(
          method: :get,
          path: "course_lessons",
          query: parsed,
          page: WhopSDK::Internal::CursorPage,
          model: WhopSDK::Models::CourseLessonListResponse,
          options: options
        )
      end

      # Deletes a course lesson
      #
      # Required permissions:
      #
      # - `courses:update`
      #
      # @overload delete(id, request_options: {})
      #
      # @param id [String]
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

      # @api private
      #
      # @param client [WhopSDK::Client]
      def initialize(client:)
        @client = client
      end
    end
  end
end
