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

      # Some parameter documentations has been truncated, see
      # {Whopsdk::Models::CourseLessonInteractionListParams} for more details.
      #
      # @overload list(after: nil, before: nil, completed: nil, course_id: nil, first: nil, last: nil, lesson_id: nil, user_id: nil, request_options: {})
      #
      # @param after [String, nil] Represents textual data as UTF-8 character sequences. This type is most often us
      #
      # @param before [String, nil] Represents textual data as UTF-8 character sequences. This type is most often us
      #
      # @param completed [Boolean, nil] Represents `true` or `false` values.
      #
      # @param course_id [String, nil] Represents a unique identifier that is Base64 obfuscated. It is often used to re
      #
      # @param first [Integer, nil] Represents non-fractional signed whole numeric values. Int can represent values
      #
      # @param last [Integer, nil] Represents non-fractional signed whole numeric values. Int can represent values
      #
      # @param lesson_id [String, nil] Represents a unique identifier that is Base64 obfuscated. It is often used to re
      #
      # @param user_id [String, nil] Represents a unique identifier that is Base64 obfuscated. It is often used to re
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
