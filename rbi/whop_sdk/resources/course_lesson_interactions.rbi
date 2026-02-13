# typed: strong

module WhopSDK
  module Resources
    class CourseLessonInteractions
      # Retrieves the details of an existing course lesson interaction.
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
        # The unique identifier of the lesson interaction to retrieve.
        id,
        request_options: {}
      )
      end

      # Returns a paginated list of lesson interactions, filtered by lesson, course,
      # user, or completion status.
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
        # Whether to filter for completed or in-progress lesson interactions.
        completed: nil,
        # The unique identifier of the course to filter interactions for.
        course_id: nil,
        # Returns the first _n_ elements from the list.
        first: nil,
        # Returns the last _n_ elements from the list.
        last: nil,
        # The unique identifier of the lesson to filter interactions for.
        lesson_id: nil,
        # The unique identifier of the user to filter lesson interactions for.
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
