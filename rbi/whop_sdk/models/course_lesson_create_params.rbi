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

      # ID for the embed (YouTube video ID or Loom share ID)
      sig { returns(T.nilable(String)) }
      attr_accessor :embed_id

      # The type of embed for a lesson
      sig { returns(T.nilable(WhopSDK::EmbedType::OrSymbol)) }
      attr_accessor :embed_type

      # The thumbnail for the lesson in png, jpeg, or gif format
      sig { returns(T.nilable(WhopSDK::CourseLessonCreateParams::Thumbnail)) }
      attr_reader :thumbnail

      sig do
        params(
          thumbnail:
            T.nilable(WhopSDK::CourseLessonCreateParams::Thumbnail::OrHash)
        ).void
      end
      attr_writer :thumbnail

      # The title of the lesson
      sig { returns(T.nilable(String)) }
      attr_accessor :title

      sig do
        params(
          chapter_id: String,
          lesson_type: WhopSDK::LessonTypes::OrSymbol,
          content: T.nilable(String),
          days_from_course_start_until_unlock: T.nilable(Integer),
          embed_id: T.nilable(String),
          embed_type: T.nilable(WhopSDK::EmbedType::OrSymbol),
          thumbnail:
            T.nilable(WhopSDK::CourseLessonCreateParams::Thumbnail::OrHash),
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
        # ID for the embed (YouTube video ID or Loom share ID)
        embed_id: nil,
        # The type of embed for a lesson
        embed_type: nil,
        # The thumbnail for the lesson in png, jpeg, or gif format
        thumbnail: nil,
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
            embed_id: T.nilable(String),
            embed_type: T.nilable(WhopSDK::EmbedType::OrSymbol),
            thumbnail: T.nilable(WhopSDK::CourseLessonCreateParams::Thumbnail),
            title: T.nilable(String),
            request_options: WhopSDK::RequestOptions
          }
        )
      end
      def to_hash
      end

      class Thumbnail < WhopSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              WhopSDK::CourseLessonCreateParams::Thumbnail,
              WhopSDK::Internal::AnyHash
            )
          end

        # The ID of an existing file object.
        sig { returns(String) }
        attr_accessor :id

        # The thumbnail for the lesson in png, jpeg, or gif format
        sig { params(id: String).returns(T.attached_class) }
        def self.new(
          # The ID of an existing file object.
          id:
        )
        end

        sig { override.returns({ id: String }) }
        def to_hash
        end
      end
    end
  end
end
