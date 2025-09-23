# typed: strong

module Whopsdk
  module Resources
    class CourseLessonInteractions
      sig do
        params(
          id: String,
          request_options: Whopsdk::RequestOptions::OrHash
        ).returns(Whopsdk::Models::CourseLessonInteractionRetrieveResponse)
      end
      def retrieve(id, request_options: {})
      end

      sig do
        params(request_options: Whopsdk::RequestOptions::OrHash).returns(
          Whopsdk::Models::CourseLessonInteractionListResponse
        )
      end
      def list(request_options: {})
      end

      # @api private
      sig { params(client: Whopsdk::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end
