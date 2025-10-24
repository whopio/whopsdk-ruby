# typed: strong

module WhopSDK
  module Models
    class CourseLessonListResponse < WhopSDK::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            WhopSDK::Models::CourseLessonListResponse,
            WhopSDK::Internal::AnyHash
          )
        end

      # The ID of the lesson
      sig { returns(String) }
      attr_accessor :id

      # The content of the lesson
      sig { returns(T.nilable(String)) }
      attr_accessor :content

      # Number of days from course start until the lesson is unlocked
      sig { returns(T.nilable(Integer)) }
      attr_accessor :days_from_course_start_until_unlock

      # The type of the lesson (text, video, pdf, multi, quiz, knowledge_check)
      sig { returns(WhopSDK::LessonTypes::TaggedSymbol) }
      attr_accessor :lesson_type

      # The order of the lesson within its chapter
      sig { returns(Integer) }
      attr_accessor :order

      # The title of the lesson
      sig { returns(String) }
      attr_accessor :title

      # The visibility of the lesson. Determines how / whether this lesson is visible to
      # users.
      sig { returns(WhopSDK::LessonVisibilities::TaggedSymbol) }
      attr_accessor :visibility

      # A lesson from the courses app
      sig do
        params(
          id: String,
          content: T.nilable(String),
          days_from_course_start_until_unlock: T.nilable(Integer),
          lesson_type: WhopSDK::LessonTypes::OrSymbol,
          order: Integer,
          title: String,
          visibility: WhopSDK::LessonVisibilities::OrSymbol
        ).returns(T.attached_class)
      end
      def self.new(
        # The ID of the lesson
        id:,
        # The content of the lesson
        content:,
        # Number of days from course start until the lesson is unlocked
        days_from_course_start_until_unlock:,
        # The type of the lesson (text, video, pdf, multi, quiz, knowledge_check)
        lesson_type:,
        # The order of the lesson within its chapter
        order:,
        # The title of the lesson
        title:,
        # The visibility of the lesson. Determines how / whether this lesson is visible to
        # users.
        visibility:
      )
      end

      sig do
        override.returns(
          {
            id: String,
            content: T.nilable(String),
            days_from_course_start_until_unlock: T.nilable(Integer),
            lesson_type: WhopSDK::LessonTypes::TaggedSymbol,
            order: Integer,
            title: String,
            visibility: WhopSDK::LessonVisibilities::TaggedSymbol
          }
        )
      end
      def to_hash
      end
    end
  end
end
