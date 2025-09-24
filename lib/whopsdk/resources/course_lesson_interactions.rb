# frozen_string_literal: true

module Whopsdk
  module Resources
    class CourseLessonInteractions
      # @overload retrieve(path_id, query_id:, request_options: {})
      #
      # @param path_id [String]
      # @param query_id [String]
      # @param request_options [Whopsdk::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Whopsdk::Models::CourseLessonInteractionRetrieveResponse]
      #
      # @see Whopsdk::Models::CourseLessonInteractionRetrieveParams
      def retrieve(path_id, params)
        parsed, options = Whopsdk::CourseLessonInteractionRetrieveParams.dump_request(params)
        @client.request(
          method: :get,
          path: ["course_lesson_interactions/%1$s", path_id],
          query: parsed.transform_keys(query_id: "id"),
          model: Whopsdk::Models::CourseLessonInteractionRetrieveResponse,
          options: options
        )
      end

      # @overload list(after: nil, before: nil, completed: nil, course_id: nil, first: nil, last: nil, lesson_id: nil, user_id: nil, request_options: {})
      #
      # @param after [String, nil]
      # @param before [String, nil]
      # @param completed [Boolean, nil]
      # @param course_id [String, nil]
      # @param first [Integer, nil]
      # @param last [Integer, nil]
      # @param lesson_id [String, nil]
      # @param user_id [String, nil]
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
