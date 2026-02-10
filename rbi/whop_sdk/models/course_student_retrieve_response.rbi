# typed: strong

module WhopSDK
  module Models
    class CourseStudentRetrieveResponse < WhopSDK::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            WhopSDK::Models::CourseStudentRetrieveResponse,
            WhopSDK::Internal::AnyHash
          )
        end

      # The unique identifier for the course student type.
      sig { returns(String) }
      attr_accessor :id

      # The total number of lessons this student has marked as completed in the course.
      sig { returns(Integer) }
      attr_accessor :completed_lessons_count

      # The percentage of available lessons the student has completed, as a value from 0
      # to 100 rounded to two decimal places.
      sig { returns(Float) }
      attr_accessor :completion_rate

      # The course this student is enrolled in.
      sig { returns(WhopSDK::Models::CourseStudentRetrieveResponse::Course) }
      attr_reader :course

      sig do
        params(
          course: WhopSDK::Models::CourseStudentRetrieveResponse::Course::OrHash
        ).void
      end
      attr_writer :course

      # The timestamp when the student first interacted with this course, as a Unix
      # timestamp.
      sig { returns(Time) }
      attr_accessor :first_interaction_at

      # The timestamp when the student most recently interacted with this course, as a
      # Unix timestamp.
      sig { returns(Time) }
      attr_accessor :last_interaction_at

      # The total number of visible lessons available to this student in the course.
      sig { returns(Integer) }
      attr_accessor :total_lessons_count

      # The user profile of the enrolled student.
      sig { returns(WhopSDK::Models::CourseStudentRetrieveResponse::User) }
      attr_reader :user

      sig do
        params(
          user: WhopSDK::Models::CourseStudentRetrieveResponse::User::OrHash
        ).void
      end
      attr_writer :user

      # An enrollment record for a student in a course, including progress and
      # completion metrics.
      sig do
        params(
          id: String,
          completed_lessons_count: Integer,
          completion_rate: Float,
          course:
            WhopSDK::Models::CourseStudentRetrieveResponse::Course::OrHash,
          first_interaction_at: Time,
          last_interaction_at: Time,
          total_lessons_count: Integer,
          user: WhopSDK::Models::CourseStudentRetrieveResponse::User::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # The unique identifier for the course student type.
        id:,
        # The total number of lessons this student has marked as completed in the course.
        completed_lessons_count:,
        # The percentage of available lessons the student has completed, as a value from 0
        # to 100 rounded to two decimal places.
        completion_rate:,
        # The course this student is enrolled in.
        course:,
        # The timestamp when the student first interacted with this course, as a Unix
        # timestamp.
        first_interaction_at:,
        # The timestamp when the student most recently interacted with this course, as a
        # Unix timestamp.
        last_interaction_at:,
        # The total number of visible lessons available to this student in the course.
        total_lessons_count:,
        # The user profile of the enrolled student.
        user:
      )
      end

      sig do
        override.returns(
          {
            id: String,
            completed_lessons_count: Integer,
            completion_rate: Float,
            course: WhopSDK::Models::CourseStudentRetrieveResponse::Course,
            first_interaction_at: Time,
            last_interaction_at: Time,
            total_lessons_count: Integer,
            user: WhopSDK::Models::CourseStudentRetrieveResponse::User
          }
        )
      end
      def to_hash
      end

      class Course < WhopSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              WhopSDK::Models::CourseStudentRetrieveResponse::Course,
              WhopSDK::Internal::AnyHash
            )
          end

        # The unique identifier for the course.
        sig { returns(String) }
        attr_accessor :id

        # The parent experience that this course belongs to.
        sig do
          returns(
            WhopSDK::Models::CourseStudentRetrieveResponse::Course::Experience
          )
        end
        attr_reader :experience

        sig do
          params(
            experience:
              WhopSDK::Models::CourseStudentRetrieveResponse::Course::Experience::OrHash
          ).void
        end
        attr_writer :experience

        # The display name of the course shown to students. Null if no title has been set.
        sig { returns(T.nilable(String)) }
        attr_accessor :title

        # The course this student is enrolled in.
        sig do
          params(
            id: String,
            experience:
              WhopSDK::Models::CourseStudentRetrieveResponse::Course::Experience::OrHash,
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
              experience:
                WhopSDK::Models::CourseStudentRetrieveResponse::Course::Experience,
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
                WhopSDK::Models::CourseStudentRetrieveResponse::Course::Experience,
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

      class User < WhopSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              WhopSDK::Models::CourseStudentRetrieveResponse::User,
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

        # The user profile of the enrolled student.
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
