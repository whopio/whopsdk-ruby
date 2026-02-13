# typed: strong

module WhopSDK
  module Models
    class CourseLessonInteraction < WhopSDK::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(WhopSDK::CourseLessonInteraction, WhopSDK::Internal::AnyHash)
        end

      # The unique identifier for the lesson interaction.
      sig { returns(String) }
      attr_accessor :id

      # Whether the user has finished this lesson.
      sig { returns(T::Boolean) }
      attr_accessor :completed

      # The course that contains the tracked lesson.
      sig { returns(WhopSDK::CourseLessonInteraction::Course) }
      attr_reader :course

      sig do
        params(course: WhopSDK::CourseLessonInteraction::Course::OrHash).void
      end
      attr_writer :course

      # The datetime the lesson interaction was created.
      sig { returns(Time) }
      attr_accessor :created_at

      # The lesson that this progress record belongs to.
      sig { returns(WhopSDK::CourseLessonInteraction::Lesson) }
      attr_reader :lesson

      sig do
        params(lesson: WhopSDK::CourseLessonInteraction::Lesson::OrHash).void
      end
      attr_writer :lesson

      # The user whose progress is being tracked.
      sig { returns(WhopSDK::CourseLessonInteraction::User) }
      attr_reader :user

      sig { params(user: WhopSDK::CourseLessonInteraction::User::OrHash).void }
      attr_writer :user

      # A record of a user's progress on a specific lesson, tracking whether they have
      # completed it.
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
        # The unique identifier for the lesson interaction.
        id:,
        # Whether the user has finished this lesson.
        completed:,
        # The course that contains the tracked lesson.
        course:,
        # The datetime the lesson interaction was created.
        created_at:,
        # The lesson that this progress record belongs to.
        lesson:,
        # The user whose progress is being tracked.
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

        # The unique identifier for the course.
        sig { returns(String) }
        attr_accessor :id

        # The parent experience that this course belongs to.
        sig { returns(WhopSDK::CourseLessonInteraction::Course::Experience) }
        attr_reader :experience

        sig do
          params(
            experience:
              WhopSDK::CourseLessonInteraction::Course::Experience::OrHash
          ).void
        end
        attr_writer :experience

        # The display name of the course shown to students. Null if no title has been set.
        sig { returns(T.nilable(String)) }
        attr_accessor :title

        # The course that contains the tracked lesson.
        sig do
          params(
            id: String,
            experience:
              WhopSDK::CourseLessonInteraction::Course::Experience::OrHash,
            title: T.nilable(String)
          ).returns(T.attached_class)
        end
        def self.new(
          # The unique identifier for the course.
          id:,
          # The parent experience that this course belongs to.
          experience:,
          # The display name of the course shown to students. Null if no title has been set.
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

          # The unique identifier for the experience.
          sig { returns(String) }
          attr_accessor :id

          # The parent experience that this course belongs to.
          sig { params(id: String).returns(T.attached_class) }
          def self.new(
            # The unique identifier for the experience.
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

        # The unique identifier for the lesson.
        sig { returns(String) }
        attr_accessor :id

        # The parent chapter that contains this lesson.
        sig { returns(WhopSDK::CourseLessonInteraction::Lesson::Chapter) }
        attr_reader :chapter

        sig do
          params(
            chapter: WhopSDK::CourseLessonInteraction::Lesson::Chapter::OrHash
          ).void
        end
        attr_writer :chapter

        # The display name of the lesson shown to students. Maximum 120 characters.
        sig { returns(String) }
        attr_accessor :title

        # The lesson that this progress record belongs to.
        sig do
          params(
            id: String,
            chapter: WhopSDK::CourseLessonInteraction::Lesson::Chapter::OrHash,
            title: String
          ).returns(T.attached_class)
        end
        def self.new(
          # The unique identifier for the lesson.
          id:,
          # The parent chapter that contains this lesson.
          chapter:,
          # The display name of the lesson shown to students. Maximum 120 characters.
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

          # The unique identifier for the chapter.
          sig { returns(String) }
          attr_accessor :id

          # The parent chapter that contains this lesson.
          sig { params(id: String).returns(T.attached_class) }
          def self.new(
            # The unique identifier for the chapter.
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

        # The unique identifier for the user.
        sig { returns(String) }
        attr_accessor :id

        # The user's display name shown on their public profile.
        sig { returns(T.nilable(String)) }
        attr_accessor :name

        # The user's unique username shown on their public profile.
        sig { returns(String) }
        attr_accessor :username

        # The user whose progress is being tracked.
        sig do
          params(id: String, name: T.nilable(String), username: String).returns(
            T.attached_class
          )
        end
        def self.new(
          # The unique identifier for the user.
          id:,
          # The user's display name shown on their public profile.
          name:,
          # The user's unique username shown on their public profile.
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
