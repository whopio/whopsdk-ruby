# typed: strong

module Whopsdk
  module Models
    class CourseLessonInteractionListParams < Whopsdk::Internal::Type::BaseModel
      extend Whopsdk::Internal::Type::RequestParameters::Converter
      include Whopsdk::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            Whopsdk::CourseLessonInteractionListParams,
            Whopsdk::Internal::AnyHash
          )
        end

      # Returns the elements in the list that come after the specified cursor.
      sig { returns(T.nilable(String)) }
      attr_accessor :after

      # Returns the elements in the list that come before the specified cursor.
      sig { returns(T.nilable(String)) }
      attr_accessor :before

      # Whether the lesson has been completed by the user
      sig { returns(T.nilable(T::Boolean)) }
      attr_accessor :completed

      # The ID of the course to list course lesson interactions for
      sig { returns(T.nilable(String)) }
      attr_accessor :course_id

      # Returns the first _n_ elements from the list.
      sig { returns(T.nilable(Integer)) }
      attr_accessor :first

      # Returns the last _n_ elements from the list.
      sig { returns(T.nilable(Integer)) }
      attr_accessor :last

      # The ID of the lesson to list course lesson interactions for
      sig { returns(T.nilable(String)) }
      attr_accessor :lesson_id

      # The ID of the user to list course lesson interactions for
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
          request_options: Whopsdk::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # Returns the elements in the list that come after the specified cursor.
        after: nil,
        # Returns the elements in the list that come before the specified cursor.
        before: nil,
        # Whether the lesson has been completed by the user
        completed: nil,
        # The ID of the course to list course lesson interactions for
        course_id: nil,
        # Returns the first _n_ elements from the list.
        first: nil,
        # Returns the last _n_ elements from the list.
        last: nil,
        # The ID of the lesson to list course lesson interactions for
        lesson_id: nil,
        # The ID of the user to list course lesson interactions for
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
            request_options: Whopsdk::RequestOptions
          }
        )
      end
      def to_hash
      end
    end
  end
end
