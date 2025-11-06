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

      # ID for the embed (YouTube video ID or Loom share ID)
      sig { returns(T.nilable(String)) }
      attr_accessor :embed_id

      # The type of embed for a lesson
      sig do
        returns(
          T.nilable(
            WhopSDK::Models::CourseLessonListResponse::EmbedType::TaggedSymbol
          )
        )
      end
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
          days_from_course_start_until_unlock: T.nilable(Integer),
          embed_id: T.nilable(String),
          embed_type:
            T.nilable(
              WhopSDK::Models::CourseLessonListResponse::EmbedType::OrSymbol
            ),
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
        # The ID of the lesson
        id:,
        # The content of the lesson
        content:,
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
            days_from_course_start_until_unlock: T.nilable(Integer),
            embed_id: T.nilable(String),
            embed_type:
              T.nilable(
                WhopSDK::Models::CourseLessonListResponse::EmbedType::TaggedSymbol
              ),
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

      # The type of embed for a lesson
      module EmbedType
        extend WhopSDK::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, WhopSDK::Models::CourseLessonListResponse::EmbedType)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        YOUTUBE =
          T.let(
            :youtube,
            WhopSDK::Models::CourseLessonListResponse::EmbedType::TaggedSymbol
          )
        LOOM =
          T.let(
            :loom,
            WhopSDK::Models::CourseLessonListResponse::EmbedType::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              WhopSDK::Models::CourseLessonListResponse::EmbedType::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end

      class Thumbnail < WhopSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              WhopSDK::Models::CourseLessonListResponse::Thumbnail,
              WhopSDK::Internal::AnyHash
            )
          end

        # This is the URL you use to render optimized attachments on the client. This
        # should be used for apps.
        sig { returns(T.nilable(String)) }
        attr_accessor :url

        # The thumbnail for the lesson
        sig { params(url: T.nilable(String)).returns(T.attached_class) }
        def self.new(
          # This is the URL you use to render optimized attachments on the client. This
          # should be used for apps.
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
