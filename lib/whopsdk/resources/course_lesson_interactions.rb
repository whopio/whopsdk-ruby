# frozen_string_literal: true

module Whopsdk
  module Resources
    class CourseLessonInteractions
      # Retrieves a course lesson interaction by ID
      #
      # Required permissions:
      #
      # - `course_lesson_interaction:read`
      # - `courses:read`
      #
      # @overload retrieve(id, request_options: {})
      #
      # @param id [String]
      # @param request_options [Whopsdk::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Whopsdk::Models::CourseLessonInteraction]
      #
      # @see Whopsdk::Models::CourseLessonInteractionRetrieveParams
      def retrieve(id, params = {})
        @client.request(
          method: :get,
          path: ["course_lesson_interactions/%1$s", id],
          model: Whopsdk::CourseLessonInteraction,
          options: params[:request_options]
        )
      end

      # Lists course lesson interactions
      #
      # Required permissions:
      #
      # - `course_lesson_interaction:read`
      # - `courses:read`
      #
      # @overload list(after: nil, before: nil, completed: nil, course_id: nil, first: nil, last: nil, lesson_id: nil, user_id: nil, request_options: {})
      #
      # @param after [String, nil] Returns the elements in the list that come after the specified cursor.
      #
      # @param before [String, nil] Returns the elements in the list that come before the specified cursor.
      #
      # @param completed [Boolean, nil] Whether the lesson has been completed by the user
      #
      # @param course_id [String, nil] The ID of the course to list course lesson interactions for
      #
      # @param first [Integer, nil] Returns the first _n_ elements from the list.
      #
      # @param last [Integer, nil] Returns the last _n_ elements from the list.
      #
      # @param lesson_id [String, nil] The ID of the lesson to list course lesson interactions for
      #
      # @param user_id [String, nil] The ID of the user to list course lesson interactions for
      #
      # @param request_options [Whopsdk::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Whopsdk::Internal::CursorPage<Whopsdk::Models::CourseLessonInteractionListItem, nil>]
      #
      # @see Whopsdk::Models::CourseLessonInteractionListParams
      def list(params = {})
        parsed, options = Whopsdk::CourseLessonInteractionListParams.dump_request(params)
        @client.request(
          method: :get,
          path: "course_lesson_interactions",
          query: parsed,
          page: Whopsdk::Internal::CursorPage,
          model: Whopsdk::CourseLessonInteractionListItem,
          options: options
        )
      end

      # @api private
      #
      # @param client [Whopsdk::Client]
      def initialize(client:)
        @client = client
      end
    end
  end
end
