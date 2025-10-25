# typed: strong

module WhopSDK
  module Resources
    class CourseChapters
      # Creates a new course chapter
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
        # The ID of the course to create the chapter in
        course_id:,
        # The title of the chapter
        title: nil,
        request_options: {}
      )
      end

      # Retrieves a course chapter by ID
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
      def retrieve(id, request_options: {})
      end

      # Updates a course chapter
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
        id,
        # The title of the chapter
        title:,
        request_options: {}
      )
      end

      # Lists chapters for a course
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
        # The ID of the course
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

      # Deletes a course chapter
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
      def delete(id, request_options: {})
      end

      # @api private
      sig { params(client: WhopSDK::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end
