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

      # Information about pagination in a connection.
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
          page_info:
            Whopsdk::Models::CourseLessonInteractionListResponse::PageInfo::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        data:,
        # Information about pagination in a connection.
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

        # An object representing a (sanitized) user of the site.
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
                Whopsdk::Models::CourseLessonInteractionListResponse::Data::User,
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
            params(
              id: String,
              name: T.nilable(String),
              username: String
            ).returns(T.attached_class)
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

      class PageInfo < Whopsdk::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Whopsdk::Models::CourseLessonInteractionListResponse::PageInfo,
              Whopsdk::Internal::AnyHash
            )
          end

        # Represents textual data as UTF-8 character sequences. This type is most often
        # used by GraphQL to represent free-form human-readable text.
        sig { returns(T.nilable(String)) }
        attr_accessor :end_cursor

        # Represents `true` or `false` values.
        sig { returns(T::Boolean) }
        attr_accessor :has_next_page

        # Represents `true` or `false` values.
        sig { returns(T::Boolean) }
        attr_accessor :has_previous_page

        # Represents textual data as UTF-8 character sequences. This type is most often
        # used by GraphQL to represent free-form human-readable text.
        sig { returns(T.nilable(String)) }
        attr_accessor :start_cursor

        # Information about pagination in a connection.
        sig do
          params(
            end_cursor: T.nilable(String),
            has_next_page: T::Boolean,
            has_previous_page: T::Boolean,
            start_cursor: T.nilable(String)
          ).returns(T.attached_class)
        end
        def self.new(
          # Represents textual data as UTF-8 character sequences. This type is most often
          # used by GraphQL to represent free-form human-readable text.
          end_cursor:,
          # Represents `true` or `false` values.
          has_next_page:,
          # Represents `true` or `false` values.
          has_previous_page:,
          # Represents textual data as UTF-8 character sequences. This type is most often
          # used by GraphQL to represent free-form human-readable text.
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
