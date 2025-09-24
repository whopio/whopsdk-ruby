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

      sig { returns(T.nilable(String)) }
      attr_accessor :after

      sig { returns(T.nilable(String)) }
      attr_accessor :before

      sig { returns(T.nilable(T::Boolean)) }
      attr_accessor :completed

      sig { returns(T.nilable(String)) }
      attr_accessor :course_id

      sig { returns(T.nilable(Integer)) }
      attr_accessor :first

      sig { returns(T.nilable(Integer)) }
      attr_accessor :last

      sig { returns(T.nilable(String)) }
      attr_accessor :lesson_id

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
