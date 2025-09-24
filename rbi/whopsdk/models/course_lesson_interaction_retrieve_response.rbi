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

      sig { returns(String) }
      attr_accessor :id

      sig { returns(T::Boolean) }
      attr_accessor :completed

      sig { returns(Integer) }
      attr_accessor :created_at

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
      def self.new(id:, completed:, created_at:, lesson:, user:)
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

        sig { returns(String) }
        attr_accessor :id

        sig { returns(String) }
        attr_accessor :title

        sig { params(id: String, title: String).returns(T.attached_class) }
        def self.new(id:, title:)
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

        sig { returns(String) }
        attr_accessor :id

        sig { returns(T.nilable(String)) }
        attr_accessor :name

        sig { returns(String) }
        attr_accessor :username

        sig do
          params(id: String, name: T.nilable(String), username: String).returns(
            T.attached_class
          )
        end
        def self.new(id:, name:, username:)
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
