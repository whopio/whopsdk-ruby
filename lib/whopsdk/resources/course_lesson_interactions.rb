# frozen_string_literal: true

module Whopsdk
  module Resources
    class CourseLessonInteractions
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

      # @overload list(request_options: {})
      #
      # @param request_options [Whopsdk::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Whopsdk::Models::CourseLessonInteractionListResponse]
      #
      # @see Whopsdk::Models::CourseLessonInteractionListParams
      def list(params = {})
        @client.request(
          method: :get,
          path: "course_lesson_interactions",
          model: Whopsdk::Models::CourseLessonInteractionListResponse,
          options: params[:request_options]
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
