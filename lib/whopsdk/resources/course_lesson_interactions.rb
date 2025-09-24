# frozen_string_literal: true

module Whopsdk
  module Resources
    class CourseLessonInteractions
      # Retrieves a course lesson interaction by ID
      #
      # @overload retrieve(id, request_options: {})
      #
      # @param id [String]
      # @param request_options [Whopsdk::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Whopsdk::Models::CourseLessonInteractionRetrieveResponse]
      #
      # @see Whopsdk::Models::CourseLessonInteractionRetrieveParams
      def retrieve(id, params = {})
        @client.request(
          method: :get,
          path: ["course_lesson_interactions/%1$s", id],
          model: Whopsdk::Models::CourseLessonInteractionRetrieveResponse,
          options: params[:request_options]
        )
      end

      # Lists course lesson interactions
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
      # @return [Whopsdk::Models::CourseLessonInteractionListResponse]
      #
      # @see Whopsdk::Models::CourseLessonInteractionListParams
      def list(params = {})
        parsed, options = Whopsdk::CourseLessonInteractionListParams.dump_request(params)
        @client.request(
          method: :get,
          path: "course_lesson_interactions",
          query: parsed,
          model: Whopsdk::Models::CourseLessonInteractionListResponse,
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
