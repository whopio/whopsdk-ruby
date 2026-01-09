# typed: strong

module WhopSDK
  module Resources
    class CourseLessons
      # Creates a new course lesson
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
        # The ID of the chapter to create the lesson in
        chapter_id:,
        # The type of the lesson
        lesson_type:,
        # The content of the lesson
        content: nil,
        # Days from course start until unlock
        days_from_course_start_until_unlock: nil,
        # ID for the embed (YouTube video ID or Loom share ID)
        embed_id: nil,
        # The type of embed for a lesson
        embed_type: nil,
        # The thumbnail for the lesson in png, jpeg, or gif format
        thumbnail: nil,
        # The title of the lesson
        title: nil,
        request_options: {}
      )
      end

      # Retrieves a course lesson by ID
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
        # The ID of the lesson
        id,
        request_options: {}
      )
      end

      # Updates a course lesson
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
        # The ID of the lesson to update
        id,
        # Completion requirements for quiz/knowledge check lessons
        assessment_completion_requirement: nil,
        # Assessment questions for quiz/knowledge check lessons. Replaces all existing
        # questions.
        assessment_questions: nil,
        # General attachments for the lesson (PDFs, files, etc). Replaces all existing
        # attachments.
        attachments: nil,
        # The content of the lesson
        content: nil,
        # Days from course start until unlock
        days_from_course_start_until_unlock: nil,
        # ID for the embed (YouTube video ID or Loom share ID)
        embed_id: nil,
        # The type of embed for a lesson
        embed_type: nil,
        # The available types for a lesson
        lesson_type: nil,
        # The main PDF file for this lesson
        main_pdf: nil,
        # Maximum number of attempts allowed for assessments
        max_attempts: nil,
        # The ID of the Mux asset to attach to this lesson for video lessons
        mux_asset_id: nil,
        # The thumbnail for the lesson in png, jpeg, or gif format
        thumbnail: nil,
        # The title of the lesson
        title: nil,
        # The available visibilities for a lesson. Determines how / whether a lesson is
        # visible to users.
        visibility: nil,
        request_options: {}
      )
      end

      # Lists lessons for a course or chapter
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
        # The ID of the chapter (returns lessons only for this chapter)
        chapter_id: nil,
        # The ID of the course (returns all lessons across all chapters)
        course_id: nil,
        # Returns the first _n_ elements from the list.
        first: nil,
        # Returns the last _n_ elements from the list.
        last: nil,
        request_options: {}
      )
      end

      # Deletes a course lesson
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
        # The ID of the lesson to delete
        id,
        request_options: {}
      )
      end

      # Marks a course lesson as completed
      sig do
        params(
          lesson_id: String,
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(T::Boolean)
      end
      def mark_as_completed(
        # The ID of the lesson to mark as completed
        lesson_id,
        request_options: {}
      )
      end

      # Starts a course lesson
      sig do
        params(
          lesson_id: String,
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(T::Boolean)
      end
      def start(
        # The ID of the lesson being started
        lesson_id,
        request_options: {}
      )
      end

      # Submits answers for a course assessment
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
        # The ID of the lesson (quiz or knowledge check) to submit answers for
        lesson_id,
        # The answers to the assessment questions
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
