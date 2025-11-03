# typed: strong

module WhopSDK
  module Resources
    class CourseLessonInteractions
      # Retrieves a course lesson interaction by ID
      #
      # Required permissions:
      #
      # - `courses:read`
      # - `course_analytics:read`
      sig do
        params(
          id: String,
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(WhopSDK::CourseLessonInteraction)
      end
      def retrieve(
        # The ID of the course lesson interaction
        id,
        request_options: {}
      )
      end

      # Lists course lesson interactions
      #
      # Required permissions:
      #
      # - `courses:read`
      # - `course_analytics:read`
      sig do
        params(
          after: T.nilable(String),
          before: T.nilable(String),
          completed: T.nilable(T::Boolean),
          course_id: T.nilable(String),
          first: T.nilable(Integer),
          last: T.nilable(Integer),
          lesson_id: T.nilable(String),
          user_id: T.nilable(String),
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(
          WhopSDK::Internal::CursorPage[
            WhopSDK::CourseLessonInteractionListItem
          ]
        )
      end
      def list(
        # Returns the elements in the list that come after the specified cursor.
        after: nil,
        # Returns the elements in the list that come before the specified cursor.
        before: nil,
        # Whether the lesson has been completed by the user
        completed: nil,
        # The ID of the course to list course lesson interactions for
        course_id: nil,
        # Returns the first _n_ elements from the list.
        first: nil,
        # Returns the last _n_ elements from the list.
        last: nil,
        # The ID of the lesson to list course lesson interactions for
        lesson_id: nil,
        # The ID of the user to list course lesson interactions for
        user_id: nil,
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
