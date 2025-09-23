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

      sig do
        returns(Whopsdk::Models::CourseLessonInteractionListResponse::PageInfo)
      end
      attr_reader :page_info

      sig do
        params(
          page_info:
            Whopsdk::Models::CourseLessonInteractionListResponse::PageInfo::OrHash
        ).void
      end
      attr_writer :page_info

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
          page_info:
            Whopsdk::Models::CourseLessonInteractionListResponse::PageInfo::OrHash
        ).returns(T.attached_class)
      end
      def self.new(data:, page_info:)
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
            page_info:
              Whopsdk::Models::CourseLessonInteractionListResponse::PageInfo
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

        sig { returns(String) }
        attr_accessor :id

        sig { returns(T::Boolean) }
        attr_accessor :completed

        sig { returns(Integer) }
        attr_accessor :created_at

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
        def self.new(id:, completed:, created_at:, lesson:, user:)
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
                Whopsdk::Models::CourseLessonInteractionListResponse::Data::User,
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
            params(
              id: String,
              name: T.nilable(String),
              username: String
            ).returns(T.attached_class)
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

      class PageInfo < Whopsdk::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Whopsdk::Models::CourseLessonInteractionListResponse::PageInfo,
              Whopsdk::Internal::AnyHash
            )
          end

        sig { returns(T.nilable(String)) }
        attr_accessor :end_cursor

        sig { returns(T::Boolean) }
        attr_accessor :has_next_page

        sig { returns(T::Boolean) }
        attr_accessor :has_previous_page

        sig { returns(T.nilable(String)) }
        attr_accessor :start_cursor

        sig do
          params(
            end_cursor: T.nilable(String),
            has_next_page: T::Boolean,
            has_previous_page: T::Boolean,
            start_cursor: T.nilable(String)
          ).returns(T.attached_class)
        end
        def self.new(
          end_cursor:,
          has_next_page:,
          has_previous_page:,
          start_cursor:
        )
        end

        sig do
          override.returns(
            {
              end_cursor: T.nilable(String),
              has_next_page: T::Boolean,
              has_previous_page: T::Boolean,
              start_cursor: T.nilable(String)
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
