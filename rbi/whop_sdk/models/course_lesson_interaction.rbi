# typed: strong

module WhopSDK
  module Models
    class CourseLessonInteraction < WhopSDK::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(WhopSDK::CourseLessonInteraction, WhopSDK::Internal::AnyHash)
        end

      # The ID of the lesson interaction
      sig { returns(String) }
      attr_accessor :id

      # Whether the lesson has been completed by the user
      sig { returns(T::Boolean) }
      attr_accessor :completed

      # The course for this lesson interaction
      sig { returns(WhopSDK::CourseLessonInteraction::Course) }
      attr_reader :course

      sig do
        params(course: WhopSDK::CourseLessonInteraction::Course::OrHash).void
      end
      attr_writer :course

      # When the interaction was created
      sig { returns(Time) }
      attr_accessor :created_at

      # The lesson this interaction is for
      sig { returns(WhopSDK::CourseLessonInteraction::Lesson) }
      attr_reader :lesson

      sig do
        params(lesson: WhopSDK::CourseLessonInteraction::Lesson::OrHash).void
      end
      attr_writer :lesson

      # The user who interacted with the lesson
      sig { returns(WhopSDK::CourseLessonInteraction::User) }
      attr_reader :user

      sig { params(user: WhopSDK::CourseLessonInteraction::User::OrHash).void }
      attr_writer :user

      # A lesson interaction tracking user progress in courses
      sig do
        params(
          id: String,
          completed: T::Boolean,
          course: WhopSDK::CourseLessonInteraction::Course::OrHash,
          created_at: Time,
          lesson: WhopSDK::CourseLessonInteraction::Lesson::OrHash,
          user: WhopSDK::CourseLessonInteraction::User::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # The ID of the lesson interaction
        id:,
        # Whether the lesson has been completed by the user
        completed:,
        # The course for this lesson interaction
        course:,
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
            course: WhopSDK::CourseLessonInteraction::Course,
            created_at: Time,
            lesson: WhopSDK::CourseLessonInteraction::Lesson,
            user: WhopSDK::CourseLessonInteraction::User
          }
        )
      end
      def to_hash
      end

      class Course < WhopSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              WhopSDK::CourseLessonInteraction::Course,
              WhopSDK::Internal::AnyHash
            )
          end

        # The ID of the course. Looks like cors_XXX
        sig { returns(String) }
        attr_accessor :id

        # The experience that the course belongs to
        sig { returns(WhopSDK::CourseLessonInteraction::Course::Experience) }
        attr_reader :experience

        sig do
          params(
            experience:
              WhopSDK::CourseLessonInteraction::Course::Experience::OrHash
          ).void
        end
        attr_writer :experience

        # The title of the course
        sig { returns(T.nilable(String)) }
        attr_accessor :title

        # The course for this lesson interaction
        sig do
          params(
            id: String,
            experience:
              WhopSDK::CourseLessonInteraction::Course::Experience::OrHash,
            title: T.nilable(String)
          ).returns(T.attached_class)
        end
        def self.new(
          # The ID of the course. Looks like cors_XXX
          id:,
          # The experience that the course belongs to
          experience:,
          # The title of the course
          title:
        )
        end

        sig do
          override.returns(
            {
              id: String,
              experience: WhopSDK::CourseLessonInteraction::Course::Experience,
              title: T.nilable(String)
            }
          )
        end
        def to_hash
        end

        class Experience < WhopSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                WhopSDK::CourseLessonInteraction::Course::Experience,
                WhopSDK::Internal::AnyHash
              )
            end

          # The unique ID representing this experience
          sig { returns(String) }
          attr_accessor :id

          # The experience that the course belongs to
          sig { params(id: String).returns(T.attached_class) }
          def self.new(
            # The unique ID representing this experience
            id:
          )
          end

          sig { override.returns({ id: String }) }
          def to_hash
          end
        end
      end

      class Lesson < WhopSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              WhopSDK::CourseLessonInteraction::Lesson,
              WhopSDK::Internal::AnyHash
            )
          end

        # The ID of the lesson
        sig { returns(String) }
        attr_accessor :id

        # The chapter this lesson belongs to
        sig { returns(WhopSDK::CourseLessonInteraction::Lesson::Chapter) }
        attr_reader :chapter

        sig do
          params(
            chapter: WhopSDK::CourseLessonInteraction::Lesson::Chapter::OrHash
          ).void
        end
        attr_writer :chapter

        # The title of the lesson
        sig { returns(String) }
        attr_accessor :title

        # The lesson this interaction is for
        sig do
          params(
            id: String,
            chapter: WhopSDK::CourseLessonInteraction::Lesson::Chapter::OrHash,
            title: String
          ).returns(T.attached_class)
        end
        def self.new(
          # The ID of the lesson
          id:,
          # The chapter this lesson belongs to
          chapter:,
          # The title of the lesson
          title:
        )
        end

        sig do
          override.returns(
            {
              id: String,
              chapter: WhopSDK::CourseLessonInteraction::Lesson::Chapter,
              title: String
            }
          )
        end
        def to_hash
        end

        class Chapter < WhopSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                WhopSDK::CourseLessonInteraction::Lesson::Chapter,
                WhopSDK::Internal::AnyHash
              )
            end

          # The ID of the chapter. Looks like chap_XXX
          sig { returns(String) }
          attr_accessor :id

          # The chapter this lesson belongs to
          sig { params(id: String).returns(T.attached_class) }
          def self.new(
            # The ID of the chapter. Looks like chap_XXX
            id:
          )
          end

          sig { override.returns({ id: String }) }
          def to_hash
          end
        end
      end

      class User < WhopSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              WhopSDK::CourseLessonInteraction::User,
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
