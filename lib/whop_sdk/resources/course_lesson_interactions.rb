# frozen_string_literal: true

module WhopSDK
  module Resources
    # Course lesson interactions
    class CourseLessonInteractions
      # Retrieves the details of an existing course lesson interaction.
      #
      # Required permissions:
      #
      # - `courses:read`
      # - `course_analytics:read`
      #
      # @overload retrieve(id, request_options: {})
      #
      # @param id [String] The unique identifier of the lesson interaction to retrieve.
      #
      # @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [WhopSDK::Models::CourseLessonInteraction]
      #
      # @see WhopSDK::Models::CourseLessonInteractionRetrieveParams
      def retrieve(id, params = {})
        @client.request(
          method: :get,
          path: ["course_lesson_interactions/%1$s", id],
          model: WhopSDK::CourseLessonInteraction,
          options: params[:request_options]
        )
      end

      # Returns a paginated list of lesson interactions, filtered by lesson, course,
      # user, or completion status.
      #
      # Required permissions:
      #
      # - `courses:read`
      # - `course_analytics:read`
      #
      # @overload list(after: nil, before: nil, completed: nil, course_id: nil, first: nil, last: nil, lesson_id: nil, user_id: nil, request_options: {})
      #
      # @param after [String, nil] Returns the elements in the list that come after the specified cursor.
      #
      # @param before [String, nil] Returns the elements in the list that come before the specified cursor.
      #
      # @param completed [Boolean, nil] Whether to filter for completed or in-progress lesson interactions.
      #
      # @param course_id [String, nil] The unique identifier of the course to filter interactions for.
      #
      # @param first [Integer, nil] Returns the first _n_ elements from the list.
      #
      # @param last [Integer, nil] Returns the last _n_ elements from the list.
      #
      # @param lesson_id [String, nil] The unique identifier of the lesson to filter interactions for.
      #
      # @param user_id [String, nil] The unique identifier of the user to filter lesson interactions for.
      #
      # @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [WhopSDK::Internal::CursorPage<WhopSDK::Models::CourseLessonInteractionListItem>]
      #
      # @see WhopSDK::Models::CourseLessonInteractionListParams
      def list(params = {})
        parsed, options = WhopSDK::CourseLessonInteractionListParams.dump_request(params)
        query = WhopSDK::Internal::Util.encode_query_params(parsed)
        @client.request(
          method: :get,
          path: "course_lesson_interactions",
          query: query,
          page: WhopSDK::Internal::CursorPage,
          model: WhopSDK::CourseLessonInteractionListItem,
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
