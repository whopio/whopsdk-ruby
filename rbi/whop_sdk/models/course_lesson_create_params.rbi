# typed: strong

module WhopSDK
  module Models
    class CourseLessonCreateParams < WhopSDK::Internal::Type::BaseModel
      extend WhopSDK::Internal::Type::RequestParameters::Converter
      include WhopSDK::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(WhopSDK::CourseLessonCreateParams, WhopSDK::Internal::AnyHash)
        end

      # The ID of the chapter to create the lesson in
      sig { returns(String) }
      attr_accessor :chapter_id

      # The type of the lesson
      sig { returns(WhopSDK::LessonTypes::OrSymbol) }
      attr_accessor :lesson_type

      # The content of the lesson
      sig { returns(T.nilable(String)) }
      attr_accessor :content

      # Days from course start until unlock
      sig { returns(T.nilable(Integer)) }
      attr_accessor :days_from_course_start_until_unlock

      # The title of the lesson
      sig { returns(T.nilable(String)) }
      attr_accessor :title

      sig do
        params(
          chapter_id: String,
          lesson_type: WhopSDK::LessonTypes::OrSymbol,
          content: T.nilable(String),
          days_from_course_start_until_unlock: T.nilable(Integer),
          title: T.nilable(String),
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # The ID of the chapter to create the lesson in
        chapter_id:,
        # The type of the lesson
        lesson_type:,
        # The content of the lesson
        content: nil,
        # Days from course start until unlock
        days_from_course_start_until_unlock: nil,
        # The title of the lesson
        title: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            chapter_id: String,
            lesson_type: WhopSDK::LessonTypes::OrSymbol,
            content: T.nilable(String),
            days_from_course_start_until_unlock: T.nilable(Integer),
            title: T.nilable(String),
            request_options: WhopSDK::RequestOptions
          }
        )
      end
      def to_hash
      end
    end
  end
end
