# typed: strong

module WhopSDK
  module Resources
    # Course lessons
    class CourseLessons
      # Create a new lesson within a course chapter. Lessons can contain video, text, or
      # assessment content.
      #
      # Required permissions:
      #
      # - `courses:update`
      sig do
        params(
          chapter_id: String,
          lesson_type: WhopSDK::LessonTypes::OrSymbol,
          content: T.nilable(String),
          days_from_course_start_until_unlock: T.nilable(Integer),
          embed_id: T.nilable(String),
          embed_type: T.nilable(WhopSDK::EmbedType::OrSymbol),
          thumbnail:
            T.nilable(WhopSDK::CourseLessonCreateParams::Thumbnail::OrHash),
          title: T.nilable(String),
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(WhopSDK::Lesson)
      end
      def create(
        # The unique identifier of the chapter to create the lesson in (e.g.,
        # "chap_XXXXX").
        chapter_id:,
        # The content type of the lesson, such as video, text, quiz, or knowledge check.
        lesson_type:,
        # The Markdown content body of the lesson.
        content: nil,
        # The number of days after a student starts the course before this lesson becomes
        # accessible.
        days_from_course_start_until_unlock: nil,
        # The external video identifier for embedded content (e.g., a YouTube video ID or
        # Loom share ID).
        embed_id: nil,
        # The type of embed for a lesson
        embed_type: nil,
        # The thumbnail image for the lesson in PNG, JPEG, or GIF format.
        thumbnail: nil,
        # The display title of the lesson (e.g., "Getting Started with APIs").
        title: nil,
        request_options: {}
      )
      end

      # Retrieves the details of an existing course lesson.
      #
      # Required permissions:
      #
      # - `courses:read`
      sig do
        params(
          id: String,
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(WhopSDK::Lesson)
      end
      def retrieve(
        # The unique identifier of the lesson to retrieve.
        id,
        request_options: {}
      )
      end

      # Update a lesson's content, type, visibility, assessment questions, or media
      # attachments.
      #
      # Required permissions:
      #
      # - `courses:update`
      sig do
        params(
          id: String,
          assessment_completion_requirement:
            T.nilable(
              WhopSDK::CourseLessonUpdateParams::AssessmentCompletionRequirement::OrHash
            ),
          assessment_questions:
            T.nilable(
              T::Array[
                WhopSDK::CourseLessonUpdateParams::AssessmentQuestion::OrHash
              ]
            ),
          attachments:
            T.nilable(
              T::Array[WhopSDK::CourseLessonUpdateParams::Attachment::OrHash]
            ),
          content: T.nilable(String),
          days_from_course_start_until_unlock: T.nilable(Integer),
          embed_id: T.nilable(String),
          embed_type: T.nilable(WhopSDK::EmbedType::OrSymbol),
          lesson_type: T.nilable(WhopSDK::LessonTypes::OrSymbol),
          main_pdf:
            T.nilable(WhopSDK::CourseLessonUpdateParams::MainPdf::OrHash),
          max_attempts: T.nilable(Integer),
          mux_asset_id: T.nilable(String),
          thumbnail:
            T.nilable(WhopSDK::CourseLessonUpdateParams::Thumbnail::OrHash),
          title: T.nilable(String),
          visibility: T.nilable(WhopSDK::LessonVisibilities::OrSymbol),
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(WhopSDK::Lesson)
      end
      def update(
        # The unique identifier of the lesson to update (e.g., "les_XXXXX").
        id,
        # The passing criteria for quiz or knowledge check lessons, such as minimum grade
        # or correct answers.
        assessment_completion_requirement: nil,
        # The full list of assessment questions for quiz or knowledge check lessons.
        # Replaces all existing questions.
        assessment_questions: nil,
        # File attachments for the lesson such as PDFs or documents. Replaces all existing
        # attachments.
        attachments: nil,
        # The Markdown content body of the lesson.
        content: nil,
        # The number of days after a student starts the course before this lesson becomes
        # accessible.
        days_from_course_start_until_unlock: nil,
        # The external video identifier for embedded content (e.g., a YouTube video ID or
        # Loom share ID).
        embed_id: nil,
        # The type of embed for a lesson
        embed_type: nil,
        # The available types for a lesson
        lesson_type: nil,
        # The primary PDF document attached to this lesson for student reference.
        main_pdf: nil,
        # The maximum number of attempts a student is allowed for assessment lessons.
        max_attempts: nil,
        # The identifier of a Mux video asset to attach to this lesson (e.g.,
        # "mux_XXXXX").
        mux_asset_id: nil,
        # The thumbnail image for the lesson in PNG, JPEG, or GIF format.
        thumbnail: nil,
        # The display title of the lesson (e.g., "Getting Started with APIs").
        title: nil,
        # The available visibilities for a lesson. Determines how / whether a lesson is
        # visible to users.
        visibility: nil,
        request_options: {}
      )
      end

      # Returns a paginated list of lessons within a course or chapter, ordered by
      # position.
      #
      # Required permissions:
      #
      # - `courses:read`
      sig do
        params(
          after: T.nilable(String),
          before: T.nilable(String),
          chapter_id: T.nilable(String),
          course_id: T.nilable(String),
          first: T.nilable(Integer),
          last: T.nilable(Integer),
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(
          WhopSDK::Internal::CursorPage[
            WhopSDK::Models::CourseLessonListResponse
          ]
        )
      end
      def list(
        # Returns the elements in the list that come after the specified cursor.
        after: nil,
        # Returns the elements in the list that come before the specified cursor.
        before: nil,
        # The unique identifier of a chapter to return only its lessons.
        chapter_id: nil,
        # The unique identifier of the course to return all lessons across all chapters.
        course_id: nil,
        # Returns the first _n_ elements from the list.
        first: nil,
        # Returns the last _n_ elements from the list.
        last: nil,
        request_options: {}
      )
      end

      # Permanently delete a lesson and remove it from its chapter.
      #
      # Required permissions:
      #
      # - `courses:update`
      sig do
        params(
          id: String,
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(T::Boolean)
      end
      def delete(
        # The unique identifier of the lesson to delete (e.g., "les_XXXXX").
        id,
        request_options: {}
      )
      end

      # Mark a lesson as completed for the current user after they finish the content.
      sig do
        params(
          lesson_id: String,
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(T::Boolean)
      end
      def mark_as_completed(
        # The unique identifier of the lesson to mark as completed (e.g., "les_XXXXX").
        lesson_id,
        request_options: {}
      )
      end

      # Record that the current user has started viewing a lesson, creating progress
      # tracking records.
      sig do
        params(
          lesson_id: String,
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(T::Boolean)
      end
      def start(
        # The unique identifier of the lesson the user is starting (e.g., "les_XXXXX").
        lesson_id,
        request_options: {}
      )
      end

      # Submit answers for a quiz or knowledge check lesson and receive a graded result.
      sig do
        params(
          lesson_id: String,
          answers:
            T::Array[
              WhopSDK::CourseLessonSubmitAssessmentParams::Answer::OrHash
            ],
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(WhopSDK::Models::CourseLessonSubmitAssessmentResponse)
      end
      def submit_assessment(
        # The unique identifier of the quiz or knowledge check lesson to submit answers
        # for (e.g., "les_XXXXX").
        lesson_id,
        # The list of answers to submit for each assessment question.
        answers:,
        request_options: {}
      )
      end

      # @api private
      sig { params(client: WhopSDK::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end
