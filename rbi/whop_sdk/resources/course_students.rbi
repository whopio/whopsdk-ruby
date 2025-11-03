# typed: strong

module WhopSDK
  module Resources
    class CourseStudents
      # Retrieves a course student by interaction ID
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
        # The ID of the course student interaction
        id,
        request_options: {}
      )
      end

      # Lists students for a course
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
        # The ID of the course
        course_id:,
        # Returns the elements in the list that come after the specified cursor.
        after: nil,
        # Returns the elements in the list that come before the specified cursor.
        before: nil,
        # Returns the first _n_ elements from the list.
        first: nil,
        # Filter students by name - returns students whose names match the keyword
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
