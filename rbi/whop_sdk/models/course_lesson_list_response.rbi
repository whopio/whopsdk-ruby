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

      # The Markdown content body of the lesson. Null if the lesson has no text content.
      sig { returns(T.nilable(String)) }
      attr_accessor :content

      # The datetime the lesson was created.
      sig { returns(Time) }
      attr_accessor :created_at

      # The number of days after a student starts the course before this lesson becomes
      # accessible. Null if the lesson is available immediately.
      sig { returns(T.nilable(Integer)) }
      attr_accessor :days_from_course_start_until_unlock

      # The external video identifier for embedded video lessons, such as a YouTube
      # video ID or Loom share ID. Null if the lesson has no embed.
      sig { returns(T.nilable(String)) }
      attr_accessor :embed_id

      # The type of embed for a lesson
      sig { returns(T.nilable(WhopSDK::EmbedType::TaggedSymbol)) }
      attr_accessor :embed_type

      # The content format of this lesson. One of: text, video, pdf, multi, quiz,
      # knowledge_check.
      sig { returns(WhopSDK::LessonTypes::TaggedSymbol) }
      attr_accessor :lesson_type

      # The sort position of this lesson within its parent chapter, starting from zero.
      sig { returns(Integer) }
      attr_accessor :order

      # The thumbnail image displayed on lesson cards and previews. Null if no thumbnail
      # has been uploaded.
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

      # The display name of the lesson shown to students. Maximum 120 characters.
      sig { returns(String) }
      attr_accessor :title

      # The visibility setting that controls whether this lesson appears to students.
      # One of: visible, hidden.
      sig { returns(WhopSDK::LessonVisibilities::TaggedSymbol) }
      attr_accessor :visibility

      # An individual learning unit within a chapter, which can contain text, video,
      # PDF, or assessment content.
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
        # The Markdown content body of the lesson. Null if the lesson has no text content.
        content:,
        # The datetime the lesson was created.
        created_at:,
        # The number of days after a student starts the course before this lesson becomes
        # accessible. Null if the lesson is available immediately.
        days_from_course_start_until_unlock:,
        # The external video identifier for embedded video lessons, such as a YouTube
        # video ID or Loom share ID. Null if the lesson has no embed.
        embed_id:,
        # The type of embed for a lesson
        embed_type:,
        # The content format of this lesson. One of: text, video, pdf, multi, quiz,
        # knowledge_check.
        lesson_type:,
        # The sort position of this lesson within its parent chapter, starting from zero.
        order:,
        # The thumbnail image displayed on lesson cards and previews. Null if no thumbnail
        # has been uploaded.
        thumbnail:,
        # The display name of the lesson shown to students. Maximum 120 characters.
        title:,
        # The visibility setting that controls whether this lesson appears to students.
        # One of: visible, hidden.
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

        # The thumbnail image displayed on lesson cards and previews. Null if no thumbnail
        # has been uploaded.
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
