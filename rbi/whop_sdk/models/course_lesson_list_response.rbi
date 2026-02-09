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

      # The unique identifier for the lesson.
      sig { returns(String) }
      attr_accessor :id

      # The content of the lesson
      sig { returns(T.nilable(String)) }
      attr_accessor :content

      # The datetime the lesson was created.
      sig { returns(Time) }
      attr_accessor :created_at

      # Number of days from course start until the lesson is unlocked
      sig { returns(T.nilable(Integer)) }
      attr_accessor :days_from_course_start_until_unlock

      # ID for the embed (YouTube video ID or Loom share ID)
      sig { returns(T.nilable(String)) }
      attr_accessor :embed_id

      # The type of embed for a lesson
      sig { returns(T.nilable(WhopSDK::EmbedType::TaggedSymbol)) }
      attr_accessor :embed_type

      # The type of the lesson (text, video, pdf, multi, quiz, knowledge_check)
      sig { returns(WhopSDK::LessonTypes::TaggedSymbol) }
      attr_accessor :lesson_type

      # The order of the lesson within its chapter
      sig { returns(Integer) }
      attr_accessor :order

      # The thumbnail for the lesson
      sig do
        returns(T.nilable(WhopSDK::Models::CourseLessonListResponse::Thumbnail))
      end
      attr_reader :thumbnail

      sig do
        params(
          thumbnail:
            T.nilable(
              WhopSDK::Models::CourseLessonListResponse::Thumbnail::OrHash
            )
        ).void
      end
      attr_writer :thumbnail

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
          created_at: Time,
          days_from_course_start_until_unlock: T.nilable(Integer),
          embed_id: T.nilable(String),
          embed_type: T.nilable(WhopSDK::EmbedType::OrSymbol),
          lesson_type: WhopSDK::LessonTypes::OrSymbol,
          order: Integer,
          thumbnail:
            T.nilable(
              WhopSDK::Models::CourseLessonListResponse::Thumbnail::OrHash
            ),
          title: String,
          visibility: WhopSDK::LessonVisibilities::OrSymbol
        ).returns(T.attached_class)
      end
      def self.new(
        # The unique identifier for the lesson.
        id:,
        # The content of the lesson
        content:,
        # The datetime the lesson was created.
        created_at:,
        # Number of days from course start until the lesson is unlocked
        days_from_course_start_until_unlock:,
        # ID for the embed (YouTube video ID or Loom share ID)
        embed_id:,
        # The type of embed for a lesson
        embed_type:,
        # The type of the lesson (text, video, pdf, multi, quiz, knowledge_check)
        lesson_type:,
        # The order of the lesson within its chapter
        order:,
        # The thumbnail for the lesson
        thumbnail:,
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
            created_at: Time,
            days_from_course_start_until_unlock: T.nilable(Integer),
            embed_id: T.nilable(String),
            embed_type: T.nilable(WhopSDK::EmbedType::TaggedSymbol),
            lesson_type: WhopSDK::LessonTypes::TaggedSymbol,
            order: Integer,
            thumbnail:
              T.nilable(WhopSDK::Models::CourseLessonListResponse::Thumbnail),
            title: String,
            visibility: WhopSDK::LessonVisibilities::TaggedSymbol
          }
        )
      end
      def to_hash
      end

      class Thumbnail < WhopSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              WhopSDK::Models::CourseLessonListResponse::Thumbnail,
              WhopSDK::Internal::AnyHash
            )
          end

        # A pre-optimized URL for rendering this attachment on the client. This should be
        # used for displaying attachments in apps.
        sig { returns(T.nilable(String)) }
        attr_accessor :url

        # The thumbnail for the lesson
        sig { params(url: T.nilable(String)).returns(T.attached_class) }
        def self.new(
          # A pre-optimized URL for rendering this attachment on the client. This should be
          # used for displaying attachments in apps.
          url:
        )
        end

        sig { override.returns({ url: T.nilable(String) }) }
        def to_hash
        end
      end
    end
  end
end
