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
      attr_accessor :after

      # Returns the elements in the list that come before the specified cursor.
      sig { returns(T.nilable(String)) }
      attr_accessor :before

      # Whether to filter for completed or in-progress lesson interactions.
      sig { returns(T.nilable(T::Boolean)) }
      attr_accessor :completed

      # The unique identifier of the course to filter interactions for.
      sig { returns(T.nilable(String)) }
      attr_accessor :course_id

      # Returns the first _n_ elements from the list.
      sig { returns(T.nilable(Integer)) }
      attr_accessor :first

      # Returns the last _n_ elements from the list.
      sig { returns(T.nilable(Integer)) }
      attr_accessor :last

      # The unique identifier of the lesson to filter interactions for.
      sig { returns(T.nilable(String)) }
      attr_accessor :lesson_id

      # The unique identifier of the user to filter lesson interactions for.
      sig { returns(T.nilable(String)) }
      attr_accessor :user_id

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
            after: T.nilable(String),
            before: T.nilable(String),
            completed: T.nilable(T::Boolean),
            course_id: T.nilable(String),
            first: T.nilable(Integer),
            last: T.nilable(Integer),
            lesson_id: T.nilable(String),
            user_id: T.nilable(String),
            request_options: WhopSDK::RequestOptions
          }
        )
      end
      def to_hash
      end
    end
  end
end
