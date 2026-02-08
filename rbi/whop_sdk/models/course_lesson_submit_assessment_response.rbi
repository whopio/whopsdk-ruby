# typed: strong

module WhopSDK
  module Models
    class CourseLessonSubmitAssessmentResponse < WhopSDK::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            WhopSDK::Models::CourseLessonSubmitAssessmentResponse,
            WhopSDK::Internal::AnyHash
          )
        end

      # The unique identifier for the assessment result.
      sig { returns(String) }
      attr_accessor :id

      # The datetime the assessment result was created.
      sig { returns(Time) }
      attr_accessor :created_at

      # The lesson this assessment result is for
      sig do
        returns(WhopSDK::Models::CourseLessonSubmitAssessmentResponse::Lesson)
      end
      attr_reader :lesson

      sig do
        params(
          lesson:
            WhopSDK::Models::CourseLessonSubmitAssessmentResponse::Lesson::OrHash
        ).void
      end
      attr_writer :lesson

      # The number of correct answers
      sig { returns(Integer) }
      attr_accessor :result_correct

      # The grade achieved on the assessment
      sig { returns(Float) }
      attr_accessor :result_grade

      # Array of graded questions with details
      sig { returns(T::Hash[Symbol, T.anything]) }
      attr_accessor :result_graded_questions

      # Whether the user achieved a passing grade
      sig { returns(T::Boolean) }
      attr_accessor :result_passing_grade

      # The total number of questions in the assessment
      sig { returns(Integer) }
      attr_accessor :result_question_count

      # The percentage score achieved on the assessment
      sig { returns(Float) }
      attr_accessor :score_percent

      # The datetime the assessment result was last updated.
      sig { returns(Time) }
      attr_accessor :updated_at

      # The user who took the assessment
      sig do
        returns(WhopSDK::Models::CourseLessonSubmitAssessmentResponse::User)
      end
      attr_reader :user

      sig do
        params(
          user:
            WhopSDK::Models::CourseLessonSubmitAssessmentResponse::User::OrHash
        ).void
      end
      attr_writer :user

      # The result of a user's assessment attempt
      sig do
        params(
          id: String,
          created_at: Time,
          lesson:
            WhopSDK::Models::CourseLessonSubmitAssessmentResponse::Lesson::OrHash,
          result_correct: Integer,
          result_grade: Float,
          result_graded_questions: T::Hash[Symbol, T.anything],
          result_passing_grade: T::Boolean,
          result_question_count: Integer,
          score_percent: Float,
          updated_at: Time,
          user:
            WhopSDK::Models::CourseLessonSubmitAssessmentResponse::User::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # The unique identifier for the assessment result.
        id:,
        # The datetime the assessment result was created.
        created_at:,
        # The lesson this assessment result is for
        lesson:,
        # The number of correct answers
        result_correct:,
        # The grade achieved on the assessment
        result_grade:,
        # Array of graded questions with details
        result_graded_questions:,
        # Whether the user achieved a passing grade
        result_passing_grade:,
        # The total number of questions in the assessment
        result_question_count:,
        # The percentage score achieved on the assessment
        score_percent:,
        # The datetime the assessment result was last updated.
        updated_at:,
        # The user who took the assessment
        user:
      )
      end

      sig do
        override.returns(
          {
            id: String,
            created_at: Time,
            lesson:
              WhopSDK::Models::CourseLessonSubmitAssessmentResponse::Lesson,
            result_correct: Integer,
            result_grade: Float,
            result_graded_questions: T::Hash[Symbol, T.anything],
            result_passing_grade: T::Boolean,
            result_question_count: Integer,
            score_percent: Float,
            updated_at: Time,
            user: WhopSDK::Models::CourseLessonSubmitAssessmentResponse::User
          }
        )
      end
      def to_hash
      end

      class Lesson < WhopSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              WhopSDK::Models::CourseLessonSubmitAssessmentResponse::Lesson,
              WhopSDK::Internal::AnyHash
            )
          end

        # The unique identifier for the lesson.
        sig { returns(String) }
        attr_accessor :id

        # The title of the lesson
        sig { returns(String) }
        attr_accessor :title

        # The lesson this assessment result is for
        sig { params(id: String, title: String).returns(T.attached_class) }
        def self.new(
          # The unique identifier for the lesson.
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
              WhopSDK::Models::CourseLessonSubmitAssessmentResponse::User,
              WhopSDK::Internal::AnyHash
            )
          end

        # The unique identifier for the user.
        sig { returns(String) }
        attr_accessor :id

        # The name of the user from their Whop account.
        sig { returns(T.nilable(String)) }
        attr_accessor :name

        # The username of the user from their Whop account.
        sig { returns(String) }
        attr_accessor :username

        # The user who took the assessment
        sig do
          params(id: String, name: T.nilable(String), username: String).returns(
            T.attached_class
          )
        end
        def self.new(
          # The unique identifier for the user.
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
