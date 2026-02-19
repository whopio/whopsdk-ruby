# typed: strong

module WhopSDK
  module Models
    class CourseChapter < WhopSDK::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(WhopSDK::CourseChapter, WhopSDK::Internal::AnyHash)
        end

      # The unique identifier for the chapter.
      sig { returns(String) }
      attr_accessor :id

      # An ordered list of lessons in this chapter, sorted by display position. Hidden
      # lessons are excluded for non-admin users.
      sig { returns(T::Array[WhopSDK::CourseChapter::Lesson]) }
      attr_accessor :lessons

      # The sort position of this chapter within its parent course, starting from zero.
      sig { returns(Integer) }
      attr_accessor :order

      # The display name of the chapter shown to students. Maximum 150 characters.
      sig { returns(String) }
      attr_accessor :title

      # A grouping of related lessons within a course, used to organize content into
      # sections.
      sig do
        params(
          id: String,
          lessons: T::Array[WhopSDK::CourseChapter::Lesson::OrHash],
          order: Integer,
          title: String
        ).returns(T.attached_class)
      end
      def self.new(
        # The unique identifier for the chapter.
        id:,
        # An ordered list of lessons in this chapter, sorted by display position. Hidden
        # lessons are excluded for non-admin users.
        lessons:,
        # The sort position of this chapter within its parent course, starting from zero.
        order:,
        # The display name of the chapter shown to students. Maximum 150 characters.
        title:
      )
      end

      sig do
        override.returns(
          {
            id: String,
            lessons: T::Array[WhopSDK::CourseChapter::Lesson],
            order: Integer,
            title: String
          }
        )
      end
      def to_hash
      end

      class Lesson < WhopSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(WhopSDK::CourseChapter::Lesson, WhopSDK::Internal::AnyHash)
          end

        # The unique identifier for the lesson.
        sig { returns(String) }
        attr_accessor :id

        # The sort position of this lesson within its parent chapter, starting from zero.
        sig { returns(Integer) }
        attr_accessor :order

        # The display name of the lesson shown to students. Maximum 120 characters.
        sig { returns(String) }
        attr_accessor :title

        # An individual learning unit within a chapter, which can contain text, video,
        # PDF, or assessment content.
        sig do
          params(id: String, order: Integer, title: String).returns(
            T.attached_class
          )
        end
        def self.new(
          # The unique identifier for the lesson.
          id:,
          # The sort position of this lesson within its parent chapter, starting from zero.
          order:,
          # The display name of the lesson shown to students. Maximum 120 characters.
          title:
        )
        end

        sig { override.returns({ id: String, order: Integer, title: String }) }
        def to_hash
        end
      end
    end
  end
end
