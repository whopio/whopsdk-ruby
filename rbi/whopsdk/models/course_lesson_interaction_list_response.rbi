# typed: strong

module Whopsdk
  module Models
    class CourseLessonInteractionListResponse < Whopsdk::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Whopsdk::Models::CourseLessonInteractionListResponse,
            Whopsdk::Internal::AnyHash
          )
        end

      # A list of nodes.
      sig do
        returns(
          T.nilable(
            T::Array[
              T.nilable(
                Whopsdk::Models::CourseLessonInteractionListResponse::Data
              )
            ]
          )
        )
      end
      attr_accessor :data

      # Information to aid in pagination.
      sig { returns(Whopsdk::PageInfo) }
      attr_reader :page_info

      sig { params(page_info: Whopsdk::PageInfo::OrHash).void }
      attr_writer :page_info

      # The connection type for LessonInteraction.
      sig do
        params(
          data:
            T.nilable(
              T::Array[
                T.nilable(
                  Whopsdk::Models::CourseLessonInteractionListResponse::Data::OrHash
                )
              ]
            ),
          page_info: Whopsdk::PageInfo::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # A list of nodes.
        data:,
        # Information to aid in pagination.
        page_info:
      )
      end

      sig do
        override.returns(
          {
            data:
              T.nilable(
                T::Array[
                  T.nilable(
                    Whopsdk::Models::CourseLessonInteractionListResponse::Data
                  )
                ]
              ),
            page_info: Whopsdk::PageInfo
          }
        )
      end
      def to_hash
      end

      class Data < Whopsdk::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Whopsdk::Models::CourseLessonInteractionListResponse::Data,
              Whopsdk::Internal::AnyHash
            )
          end

        # The ID of the lesson interaction
        sig { returns(String) }
        attr_accessor :id

        # Whether the lesson has been completed by the user
        sig { returns(T::Boolean) }
        attr_accessor :completed

        # When the interaction was created
        sig { returns(Integer) }
        attr_accessor :created_at

        # The lesson this interaction is for
        sig do
          returns(
            Whopsdk::Models::CourseLessonInteractionListResponse::Data::Lesson
          )
        end
        attr_reader :lesson

        sig do
          params(
            lesson:
              Whopsdk::Models::CourseLessonInteractionListResponse::Data::Lesson::OrHash
          ).void
        end
        attr_writer :lesson

        # The user who interacted with the lesson
        sig do
          returns(
            Whopsdk::Models::CourseLessonInteractionListResponse::Data::User
          )
        end
        attr_reader :user

        sig do
          params(
            user:
              Whopsdk::Models::CourseLessonInteractionListResponse::Data::User::OrHash
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
              Whopsdk::Models::CourseLessonInteractionListResponse::Data::Lesson::OrHash,
            user:
              Whopsdk::Models::CourseLessonInteractionListResponse::Data::User::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          # The ID of the lesson interaction
          id:,
          # Whether the lesson has been completed by the user
          completed:,
          # When the interaction was created
          created_at:,
          # The lesson this interaction is for
          lesson:,
          # The user who interacted with the lesson
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
                Whopsdk::Models::CourseLessonInteractionListResponse::Data::Lesson,
              user:
                Whopsdk::Models::CourseLessonInteractionListResponse::Data::User
            }
          )
        end
        def to_hash
        end

        class Lesson < Whopsdk::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Whopsdk::Models::CourseLessonInteractionListResponse::Data::Lesson,
                Whopsdk::Internal::AnyHash
              )
            end

          # The ID of the lesson
          sig { returns(String) }
          attr_accessor :id

          # The title of the lesson
          sig { returns(String) }
          attr_accessor :title

          # The lesson this interaction is for
          sig { params(id: String, title: String).returns(T.attached_class) }
          def self.new(
            # The ID of the lesson
            id:,
            # The title of the lesson
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
                Whopsdk::Models::CourseLessonInteractionListResponse::Data::User,
                Whopsdk::Internal::AnyHash
              )
            end

          # The internal ID of the user.
          sig { returns(String) }
          attr_accessor :id

          # The name of the user from their Whop account.
          sig { returns(T.nilable(String)) }
          attr_accessor :name

          # The username of the user from their Whop account.
          sig { returns(String) }
          attr_accessor :username

          # The user who interacted with the lesson
          sig do
            params(
              id: String,
              name: T.nilable(String),
              username: String
            ).returns(T.attached_class)
          end
          def self.new(
            # The internal ID of the user.
            id:,
            # The name of the user from their Whop account.
            name:,
            # The username of the user from their Whop account.
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
end
