# typed: strong

module Whopsdk
  module Models
    class CourseLessonInteractionRetrieveResponse < Whopsdk::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Whopsdk::Models::CourseLessonInteractionRetrieveResponse,
            Whopsdk::Internal::AnyHash
          )
        end

      # Represents a unique identifier that is Base64 obfuscated. It is often used to
      # refetch an object or as key for a cache. The ID type appears in a JSON response
      # as a String; however, it is not intended to be human-readable. When expected as
      # an input type, any string (such as `"VXNlci0xMA=="`) or integer (such as `4`)
      # input value will be accepted as an ID.
      sig { returns(String) }
      attr_accessor :id

      # Represents `true` or `false` values.
      sig { returns(T::Boolean) }
      attr_accessor :completed

      # A valid timestamp in seconds, transported as an integer
      sig { returns(Integer) }
      attr_accessor :created_at

      # A lesson from the courses app
      sig do
        returns(
          Whopsdk::Models::CourseLessonInteractionRetrieveResponse::Lesson
        )
      end
      attr_reader :lesson

      sig do
        params(
          lesson:
            Whopsdk::Models::CourseLessonInteractionRetrieveResponse::Lesson::OrHash
        ).void
      end
      attr_writer :lesson

      # An object representing a (sanitized) user of the site.
      sig do
        returns(Whopsdk::Models::CourseLessonInteractionRetrieveResponse::User)
      end
      attr_reader :user

      sig do
        params(
          user:
            Whopsdk::Models::CourseLessonInteractionRetrieveResponse::User::OrHash
        ).void
      end
      attr_writer :user

      # A lesson interaction tracking user progress in courses
      sig do
        params(
          id: String,
          completed: T::Boolean,
          created_at: Integer,
          lesson:
            Whopsdk::Models::CourseLessonInteractionRetrieveResponse::Lesson::OrHash,
          user:
            Whopsdk::Models::CourseLessonInteractionRetrieveResponse::User::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # Represents a unique identifier that is Base64 obfuscated. It is often used to
        # refetch an object or as key for a cache. The ID type appears in a JSON response
        # as a String; however, it is not intended to be human-readable. When expected as
        # an input type, any string (such as `"VXNlci0xMA=="`) or integer (such as `4`)
        # input value will be accepted as an ID.
        id:,
        # Represents `true` or `false` values.
        completed:,
        # A valid timestamp in seconds, transported as an integer
        created_at:,
        # A lesson from the courses app
        lesson:,
        # An object representing a (sanitized) user of the site.
        user:
      )
      end

      sig do
        override.returns(
          {
            id: String,
            completed: T::Boolean,
            created_at: Integer,
            lesson:
              Whopsdk::Models::CourseLessonInteractionRetrieveResponse::Lesson,
            user: Whopsdk::Models::CourseLessonInteractionRetrieveResponse::User
          }
        )
      end
      def to_hash
      end

      class Lesson < Whopsdk::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Whopsdk::Models::CourseLessonInteractionRetrieveResponse::Lesson,
              Whopsdk::Internal::AnyHash
            )
          end

        # Represents a unique identifier that is Base64 obfuscated. It is often used to
        # refetch an object or as key for a cache. The ID type appears in a JSON response
        # as a String; however, it is not intended to be human-readable. When expected as
        # an input type, any string (such as `"VXNlci0xMA=="`) or integer (such as `4`)
        # input value will be accepted as an ID.
        sig { returns(String) }
        attr_accessor :id

        # Represents textual data as UTF-8 character sequences. This type is most often
        # used by GraphQL to represent free-form human-readable text.
        sig { returns(String) }
        attr_accessor :title

        # A lesson from the courses app
        sig { params(id: String, title: String).returns(T.attached_class) }
        def self.new(
          # Represents a unique identifier that is Base64 obfuscated. It is often used to
          # refetch an object or as key for a cache. The ID type appears in a JSON response
          # as a String; however, it is not intended to be human-readable. When expected as
          # an input type, any string (such as `"VXNlci0xMA=="`) or integer (such as `4`)
          # input value will be accepted as an ID.
          id:,
          # Represents textual data as UTF-8 character sequences. This type is most often
          # used by GraphQL to represent free-form human-readable text.
          title:
        )
        end

        sig { override.returns({ id: String, title: String }) }
        def to_hash
        end
      end

      class User < Whopsdk::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Whopsdk::Models::CourseLessonInteractionRetrieveResponse::User,
              Whopsdk::Internal::AnyHash
            )
          end

        # Represents a unique identifier that is Base64 obfuscated. It is often used to
        # refetch an object or as key for a cache. The ID type appears in a JSON response
        # as a String; however, it is not intended to be human-readable. When expected as
        # an input type, any string (such as `"VXNlci0xMA=="`) or integer (such as `4`)
        # input value will be accepted as an ID.
        sig { returns(String) }
        attr_accessor :id

        # Represents textual data as UTF-8 character sequences. This type is most often
        # used by GraphQL to represent free-form human-readable text.
        sig { returns(T.nilable(String)) }
        attr_accessor :name

        # Represents textual data as UTF-8 character sequences. This type is most often
        # used by GraphQL to represent free-form human-readable text.
        sig { returns(String) }
        attr_accessor :username

        # An object representing a (sanitized) user of the site.
        sig do
          params(id: String, name: T.nilable(String), username: String).returns(
            T.attached_class
          )
        end
        def self.new(
          # Represents a unique identifier that is Base64 obfuscated. It is often used to
          # refetch an object or as key for a cache. The ID type appears in a JSON response
          # as a String; however, it is not intended to be human-readable. When expected as
          # an input type, any string (such as `"VXNlci0xMA=="`) or integer (such as `4`)
          # input value will be accepted as an ID.
          id:,
          # Represents textual data as UTF-8 character sequences. This type is most often
          # used by GraphQL to represent free-form human-readable text.
          name:,
          # Represents textual data as UTF-8 character sequences. This type is most often
          # used by GraphQL to represent free-form human-readable text.
          username:
        )
        end

        sig do
          override.returns(
            { id: String, name: T.nilable(String), username: String }
          )
        end
        def to_hash
        end
      end
    end
  end
end
