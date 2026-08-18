# typed: strong

module WhopSDK
  module Models
    class CourseLessonInteractionListParams < WhopSDK::Internal::Type::BaseModel
      extend WhopSDK::Internal::Type::RequestParameters::Converter
      include WhopSDK::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            WhopSDK::CourseLessonInteractionListParams,
            WhopSDK::Internal::AnyHash
          )
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

      # Whether to filter for completed or in-progress lesson interactions.
      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :completed

      sig { params(completed: T::Boolean).void }
      attr_writer :completed

      # The unique identifier of the course to filter interactions for.
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

      # The unique identifier of the lesson to filter interactions for.
      sig { returns(T.nilable(String)) }
      attr_reader :lesson_id

      sig { params(lesson_id: String).void }
      attr_writer :lesson_id

      # The unique identifier of the user to filter lesson interactions for.
      sig { returns(T.nilable(String)) }
      attr_reader :user_id

      sig { params(user_id: String).void }
      attr_writer :user_id

      sig do
        params(
          after: String,
          before: String,
          completed: T::Boolean,
          course_id: String,
          first: Integer,
          last: Integer,
          lesson_id: String,
          user_id: String,
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
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

      sig do
        override.returns(
          {
            after: String,
            before: String,
            completed: T::Boolean,
            course_id: String,
            first: Integer,
            last: Integer,
            lesson_id: String,
            user_id: String,
            request_options: WhopSDK::RequestOptions
          }
        )
      end
      def to_hash
      end
    end
  end
end
