# typed: strong

module WhopSDK
  module Models
    class CourseStudentListResponse < WhopSDK::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            WhopSDK::Models::CourseStudentListResponse,
            WhopSDK::Internal::AnyHash
          )
        end

      # The unique identifier for the course student type.
      sig { returns(String) }
      attr_accessor :id

      # The number of lessons the student has completed
      sig { returns(Integer) }
      attr_accessor :completed_lessons_count

      # The percentage of lessons completed (0-100)
      sig { returns(Float) }
      attr_accessor :completion_rate

      # When the student first interacted with the course
      sig { returns(Time) }
      attr_accessor :first_interaction_at

      # When the student last interacted with the course
      sig { returns(Time) }
      attr_accessor :last_interaction_at

      # The total number of lessons the student has access to
      sig { returns(Integer) }
      attr_accessor :total_lessons_count

      # The user who is enrolled in the course
      sig { returns(WhopSDK::Models::CourseStudentListResponse::User) }
      attr_reader :user

      sig do
        params(
          user: WhopSDK::Models::CourseStudentListResponse::User::OrHash
        ).void
      end
      attr_writer :user

      # A course student (enrollment of a student in a course)
      sig do
        params(
          id: String,
          completed_lessons_count: Integer,
          completion_rate: Float,
          first_interaction_at: Time,
          last_interaction_at: Time,
          total_lessons_count: Integer,
          user: WhopSDK::Models::CourseStudentListResponse::User::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # The unique identifier for the course student type.
        id:,
        # The number of lessons the student has completed
        completed_lessons_count:,
        # The percentage of lessons completed (0-100)
        completion_rate:,
        # When the student first interacted with the course
        first_interaction_at:,
        # When the student last interacted with the course
        last_interaction_at:,
        # The total number of lessons the student has access to
        total_lessons_count:,
        # The user who is enrolled in the course
        user:
      )
      end

      sig do
        override.returns(
          {
            id: String,
            completed_lessons_count: Integer,
            completion_rate: Float,
            first_interaction_at: Time,
            last_interaction_at: Time,
            total_lessons_count: Integer,
            user: WhopSDK::Models::CourseStudentListResponse::User
          }
        )
      end
      def to_hash
      end

      class User < WhopSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              WhopSDK::Models::CourseStudentListResponse::User,
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

        # The user who is enrolled in the course
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
