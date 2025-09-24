# typed: strong

module Whopsdk
  module Resources
    class CourseLessonInteractions
      sig do
        params(
          path_id: String,
          query_id: String,
          request_options: Whopsdk::RequestOptions::OrHash
        ).returns(Whopsdk::Models::CourseLessonInteractionRetrieveResponse)
      end
      def retrieve(path_id, query_id:, request_options: {})
      end

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
          request_options: Whopsdk::RequestOptions::OrHash
        ).returns(Whopsdk::Models::CourseLessonInteractionListResponse)
      end
      def list(
        after: nil,
        before: nil,
        completed: nil,
        course_id: nil,
        first: nil,
        last: nil,
        lesson_id: nil,
        user_id: nil,
        request_options: {}
      )
      end

      # @api private
      sig { params(client: Whopsdk::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end
