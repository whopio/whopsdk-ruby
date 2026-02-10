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

      # The unique identifier of the chapter to create the lesson in (e.g.,
      # "chap_XXXXX").
      sig { returns(String) }
      attr_accessor :chapter_id

      # The content type of the lesson, such as video, text, quiz, or knowledge check.
      sig { returns(WhopSDK::LessonTypes::OrSymbol) }
      attr_accessor :lesson_type

      # The rich text or HTML content body of the lesson.
      sig { returns(T.nilable(String)) }
      attr_accessor :content

      # The number of days after a student starts the course before this lesson becomes
      # accessible.
      sig { returns(T.nilable(Integer)) }
      attr_accessor :days_from_course_start_until_unlock

      # The external video identifier for embedded content (e.g., a YouTube video ID or
      # Loom share ID).
      sig { returns(T.nilable(String)) }
      attr_accessor :embed_id

      # The type of embed for a lesson
      sig { returns(T.nilable(WhopSDK::EmbedType::OrSymbol)) }
      attr_accessor :embed_type

      # The thumbnail image for the lesson in PNG, JPEG, or GIF format.
      sig { returns(T.nilable(WhopSDK::CourseLessonCreateParams::Thumbnail)) }
      attr_reader :thumbnail

      sig do
        params(
          thumbnail:
            T.nilable(WhopSDK::CourseLessonCreateParams::Thumbnail::OrHash)
        ).void
      end
      attr_writer :thumbnail

      # The display title of the lesson (e.g., "Getting Started with APIs").
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
        # The unique identifier of the chapter to create the lesson in (e.g.,
        # "chap_XXXXX").
        chapter_id:,
        # The content type of the lesson, such as video, text, quiz, or knowledge check.
        lesson_type:,
        # The rich text or HTML content body of the lesson.
        content: nil,
        # The number of days after a student starts the course before this lesson becomes
        # accessible.
        days_from_course_start_until_unlock: nil,
        # The external video identifier for embedded content (e.g., a YouTube video ID or
        # Loom share ID).
        embed_id: nil,
        # The type of embed for a lesson
        embed_type: nil,
        # The thumbnail image for the lesson in PNG, JPEG, or GIF format.
        thumbnail: nil,
        # The display title of the lesson (e.g., "Getting Started with APIs").
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

        # The thumbnail image for the lesson in PNG, JPEG, or GIF format.
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
