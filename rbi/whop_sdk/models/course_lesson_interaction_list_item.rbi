# typed: strong

module WhopSDK
  module Models
    class CourseLessonInteractionListItem < WhopSDK::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            WhopSDK::CourseLessonInteractionListItem,
            WhopSDK::Internal::AnyHash
          )
        end

      # The ID of the lesson interaction
      sig { returns(String) }
      attr_accessor :id

      # Whether the lesson has been completed by the user
      sig { returns(T::Boolean) }
      attr_accessor :completed

      # When the interaction was created
      sig { returns(Time) }
      attr_accessor :created_at

      # The lesson this interaction is for
      sig { returns(WhopSDK::CourseLessonInteractionListItem::Lesson) }
      attr_reader :lesson

      sig do
        params(
          lesson: WhopSDK::CourseLessonInteractionListItem::Lesson::OrHash
        ).void
      end
      attr_writer :lesson

      # The user who interacted with the lesson
      sig { returns(WhopSDK::CourseLessonInteractionListItem::User) }
      attr_reader :user

      sig do
        params(
          user: WhopSDK::CourseLessonInteractionListItem::User::OrHash
        ).void
      end
      attr_writer :user

      # A lesson interaction tracking user progress in courses
      sig do
        params(
          id: String,
          completed: T::Boolean,
          created_at: Time,
          lesson: WhopSDK::CourseLessonInteractionListItem::Lesson::OrHash,
          user: WhopSDK::CourseLessonInteractionListItem::User::OrHash
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
            created_at: Time,
            lesson: WhopSDK::CourseLessonInteractionListItem::Lesson,
            user: WhopSDK::CourseLessonInteractionListItem::User
          }
        )
      end
      def to_hash
      end

      class Lesson < WhopSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              WhopSDK::CourseLessonInteractionListItem::Lesson,
              WhopSDK::Internal::AnyHash
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

      class User < WhopSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              WhopSDK::CourseLessonInteractionListItem::User,
              WhopSDK::Internal::AnyHash
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
          params(id: String, name: T.nilable(String), username: String).returns(
            T.attached_class
          )
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
