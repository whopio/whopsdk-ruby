# typed: strong

module WhopSDK
  module Resources
    class CourseChapters
      # Create a new chapter within a course to organize lessons into sections.
      #
      # Required permissions:
      #
      # - `courses:update`
      sig do
        params(
          course_id: String,
          title: T.nilable(String),
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(WhopSDK::CourseChapter)
      end
      def create(
        # The unique identifier of the course to create the chapter in (e.g.,
        # "course_XXXXX").
        course_id:,
        # The display title of the chapter (e.g., "Module 1: Introduction").
        title: nil,
        request_options: {}
      )
      end

      # Retrieves the details of an existing course chapter.
      #
      # Required permissions:
      #
      # - `courses:read`
      sig do
        params(
          id: String,
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(WhopSDK::CourseChapter)
      end
      def retrieve(
        # The unique identifier of the chapter to retrieve.
        id,
        request_options: {}
      )
      end

      # Update a chapter's title within a course.
      #
      # Required permissions:
      #
      # - `courses:update`
      sig do
        params(
          id: String,
          title: String,
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(WhopSDK::CourseChapter)
      end
      def update(
        # The unique identifier of the chapter to update (e.g., "chap_XXXXX").
        id,
        # The new display title of the chapter (e.g., "Module 1: Introduction").
        title:,
        request_options: {}
      )
      end

      # Returns a paginated list of chapters within a course, ordered by position.
      #
      # Required permissions:
      #
      # - `courses:read`
      sig do
        params(
          course_id: String,
          after: T.nilable(String),
          before: T.nilable(String),
          first: T.nilable(Integer),
          last: T.nilable(Integer),
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(
          WhopSDK::Internal::CursorPage[
            WhopSDK::Models::CourseChapterListResponse
          ]
        )
      end
      def list(
        # The unique identifier of the course to list chapters for.
        course_id:,
        # Returns the elements in the list that come after the specified cursor.
        after: nil,
        # Returns the elements in the list that come before the specified cursor.
        before: nil,
        # Returns the first _n_ elements from the list.
        first: nil,
        # Returns the last _n_ elements from the list.
        last: nil,
        request_options: {}
      )
      end

      # Permanently delete a chapter and all of its lessons from a course.
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
        # The unique identifier of the chapter to delete (e.g., "chap_XXXXX").
        id,
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
