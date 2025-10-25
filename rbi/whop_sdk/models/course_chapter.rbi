# typed: strong

module WhopSDK
  module Models
    class CourseChapter < WhopSDK::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(WhopSDK::CourseChapter, WhopSDK::Internal::AnyHash)
        end

      # The ID of the chapter. Looks like chap_XXX
      sig { returns(String) }
      attr_accessor :id

      # The lessons in this chapter
      sig { returns(T::Array[WhopSDK::CourseChapter::Lesson]) }
      attr_accessor :lessons

      # The order of the chapter within its course
      sig { returns(Integer) }
      attr_accessor :order

      # The title of the chapter
      sig { returns(String) }
      attr_accessor :title

      # A chapter from the courses app
      sig do
        params(
          id: String,
          lessons: T::Array[WhopSDK::CourseChapter::Lesson::OrHash],
          order: Integer,
          title: String
        ).returns(T.attached_class)
      end
      def self.new(
        # The ID of the chapter. Looks like chap_XXX
        id:,
        # The lessons in this chapter
        lessons:,
        # The order of the chapter within its course
        order:,
        # The title of the chapter
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

        # The ID of the lesson
        sig { returns(String) }
        attr_accessor :id

        # The order of the lesson within its chapter
        sig { returns(Integer) }
        attr_accessor :order

        # The title of the lesson
        sig { returns(String) }
        attr_accessor :title

        # A lesson from the courses app
        sig do
          params(id: String, order: Integer, title: String).returns(
            T.attached_class
          )
        end
        def self.new(
          # The ID of the lesson
          id:,
          # The order of the lesson within its chapter
          order:,
          # The title of the lesson
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
