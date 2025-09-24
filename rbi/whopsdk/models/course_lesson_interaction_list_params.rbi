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

      # Represents textual data as UTF-8 character sequences. This type is most often
      # used by GraphQL to represent free-form human-readable text.
      sig { returns(T.nilable(String)) }
      attr_accessor :after

      # Represents textual data as UTF-8 character sequences. This type is most often
      # used by GraphQL to represent free-form human-readable text.
      sig { returns(T.nilable(String)) }
      attr_accessor :before

      # Represents `true` or `false` values.
      sig { returns(T.nilable(T::Boolean)) }
      attr_accessor :completed

      # Represents a unique identifier that is Base64 obfuscated. It is often used to
      # refetch an object or as key for a cache. The ID type appears in a JSON response
      # as a String; however, it is not intended to be human-readable. When expected as
      # an input type, any string (such as `"VXNlci0xMA=="`) or integer (such as `4`)
      # input value will be accepted as an ID.
      sig { returns(T.nilable(String)) }
      attr_accessor :course_id

      # Represents non-fractional signed whole numeric values. Int can represent values
      # between -(2^31) and 2^31 - 1.
      sig { returns(T.nilable(Integer)) }
      attr_accessor :first

      # Represents non-fractional signed whole numeric values. Int can represent values
      # between -(2^31) and 2^31 - 1.
      sig { returns(T.nilable(Integer)) }
      attr_accessor :last

      # Represents a unique identifier that is Base64 obfuscated. It is often used to
      # refetch an object or as key for a cache. The ID type appears in a JSON response
      # as a String; however, it is not intended to be human-readable. When expected as
      # an input type, any string (such as `"VXNlci0xMA=="`) or integer (such as `4`)
      # input value will be accepted as an ID.
      sig { returns(T.nilable(String)) }
      attr_accessor :lesson_id

      # Represents a unique identifier that is Base64 obfuscated. It is often used to
      # refetch an object or as key for a cache. The ID type appears in a JSON response
      # as a String; however, it is not intended to be human-readable. When expected as
      # an input type, any string (such as `"VXNlci0xMA=="`) or integer (such as `4`)
      # input value will be accepted as an ID.
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
        # Represents textual data as UTF-8 character sequences. This type is most often
        # used by GraphQL to represent free-form human-readable text.
        after: nil,
        # Represents textual data as UTF-8 character sequences. This type is most often
        # used by GraphQL to represent free-form human-readable text.
        before: nil,
        # Represents `true` or `false` values.
        completed: nil,
        # Represents a unique identifier that is Base64 obfuscated. It is often used to
        # refetch an object or as key for a cache. The ID type appears in a JSON response
        # as a String; however, it is not intended to be human-readable. When expected as
        # an input type, any string (such as `"VXNlci0xMA=="`) or integer (such as `4`)
        # input value will be accepted as an ID.
        course_id: nil,
        # Represents non-fractional signed whole numeric values. Int can represent values
        # between -(2^31) and 2^31 - 1.
        first: nil,
        # Represents non-fractional signed whole numeric values. Int can represent values
        # between -(2^31) and 2^31 - 1.
        last: nil,
        # Represents a unique identifier that is Base64 obfuscated. It is often used to
        # refetch an object or as key for a cache. The ID type appears in a JSON response
        # as a String; however, it is not intended to be human-readable. When expected as
        # an input type, any string (such as `"VXNlci0xMA=="`) or integer (such as `4`)
        # input value will be accepted as an ID.
        lesson_id: nil,
        # Represents a unique identifier that is Base64 obfuscated. It is often used to
        # refetch an object or as key for a cache. The ID type appears in a JSON response
        # as a String; however, it is not intended to be human-readable. When expected as
        # an input type, any string (such as `"VXNlci0xMA=="`) or integer (such as `4`)
        # input value will be accepted as an ID.
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
