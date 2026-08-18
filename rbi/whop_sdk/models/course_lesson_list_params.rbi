# typed: strong

module WhopSDK
  module Models
    class CourseLessonListParams < WhopSDK::Internal::Type::BaseModel
      extend WhopSDK::Internal::Type::RequestParameters::Converter
      include WhopSDK::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(WhopSDK::CourseLessonListParams, WhopSDK::Internal::AnyHash)
        end

      # Returns the elements in the list that come after the specified cursor.
      sig { returns(T.nilable(String)) }
      attr_reader :after

      sig { params(after: String).void }
      attr_writer :after

      # Returns the elements in the list that come before the specified cursor.
      sig { returns(T.nilable(String)) }
      attr_reader :before

      sig { params(before: String).void }
      attr_writer :before

      # The unique identifier of a chapter to return only its lessons.
      sig { returns(T.nilable(String)) }
      attr_reader :chapter_id

      sig { params(chapter_id: String).void }
      attr_writer :chapter_id

      # The unique identifier of the course to return all lessons across all chapters.
      sig { returns(T.nilable(String)) }
      attr_reader :course_id

      sig { params(course_id: String).void }
      attr_writer :course_id

      # Returns the first _n_ elements from the list.
      sig { returns(T.nilable(Integer)) }
      attr_reader :first

      sig { params(first: Integer).void }
      attr_writer :first

      # Returns the last _n_ elements from the list.
      sig { returns(T.nilable(Integer)) }
      attr_reader :last

      sig { params(last: Integer).void }
      attr_writer :last

      sig do
        params(
          after: String,
          before: String,
          chapter_id: String,
          course_id: String,
          first: Integer,
          last: Integer,
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # Returns the elements in the list that come after the specified cursor.
        after: nil,
        # Returns the elements in the list that come before the specified cursor.
        before: nil,
        # The unique identifier of a chapter to return only its lessons.
        chapter_id: nil,
        # The unique identifier of the course to return all lessons across all chapters.
        course_id: nil,
        # Returns the first _n_ elements from the list.
        first: nil,
        # Returns the last _n_ elements from the list.
        last: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            after: String,
            before: String,
            chapter_id: String,
            course_id: String,
            first: Integer,
            last: Integer,
            request_options: WhopSDK::RequestOptions
          }
        )
      end
      def to_hash
      end
    end
  end
end
