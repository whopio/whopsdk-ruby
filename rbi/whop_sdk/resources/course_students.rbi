# typed: strong

module WhopSDK
  module Resources
    class CourseStudents
      # Retrieves the details of an existing course student.
      #
      # Required permissions:
      #
      # - `courses:read`
      # - `course_analytics:read`
      sig do
        params(
          id: String,
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(WhopSDK::Models::CourseStudentRetrieveResponse)
      end
      def retrieve(
        # The unique identifier of the course student record to retrieve.
        id,
        request_options: {}
      )
      end

      # Returns a paginated list of students enrolled in a course, with optional name
      # filtering.
      #
      # Required permissions:
      #
      # - `courses:read`
      # - `course_analytics:read`
      sig do
        params(
          course_id: String,
          after: T.nilable(String),
          before: T.nilable(String),
          first: T.nilable(Integer),
          keyword: T.nilable(String),
          last: T.nilable(Integer),
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(
          WhopSDK::Internal::CursorPage[
            WhopSDK::Models::CourseStudentListResponse
          ]
        )
      end
      def list(
        # The unique identifier of the course to list enrolled students for.
        course_id:,
        # Returns the elements in the list that come after the specified cursor.
        after: nil,
        # Returns the elements in the list that come before the specified cursor.
        before: nil,
        # Returns the first _n_ elements from the list.
        first: nil,
        # A search term to filter students by name or username.
        keyword: nil,
        # Returns the last _n_ elements from the list.
        last: nil,
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
