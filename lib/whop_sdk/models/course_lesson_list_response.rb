# frozen_string_literal: true

module WhopSDK
  module Models
    # @see WhopSDK::Resources::CourseLessons#list
    class CourseLessonListResponse < WhopSDK::Internal::Type::BaseModel
      # @!attribute id
      #   The ID of the lesson
      #
      #   @return [String]
      required :id, String

      # @!attribute content
      #   The content of the lesson
      #
      #   @return [String, nil]
      required :content, String, nil?: true

      # @!attribute days_from_course_start_until_unlock
      #   Number of days from course start until the lesson is unlocked
      #
      #   @return [Integer, nil]
      required :days_from_course_start_until_unlock, Integer, nil?: true

      # @!attribute embed_id
      #   ID for the embed (YouTube video ID or Loom share ID)
      #
      #   @return [String, nil]
      required :embed_id, String, nil?: true

      # @!attribute embed_type
      #   The type of embed for a lesson
      #
      #   @return [Symbol, WhopSDK::Models::CourseLessonListResponse::EmbedType, nil]
      required :embed_type, enum: -> { WhopSDK::Models::CourseLessonListResponse::EmbedType }, nil?: true

      # @!attribute lesson_type
      #   The type of the lesson (text, video, pdf, multi, quiz, knowledge_check)
      #
      #   @return [Symbol, WhopSDK::Models::LessonTypes]
      required :lesson_type, enum: -> { WhopSDK::LessonTypes }

      # @!attribute order
      #   The order of the lesson within its chapter
      #
      #   @return [Integer]
      required :order, Integer

      # @!attribute thumbnail
      #   The thumbnail for the lesson
      #
      #   @return [WhopSDK::Models::CourseLessonListResponse::Thumbnail, nil]
      required :thumbnail, -> { WhopSDK::Models::CourseLessonListResponse::Thumbnail }, nil?: true

      # @!attribute title
      #   The title of the lesson
      #
      #   @return [String]
      required :title, String

      # @!attribute visibility
      #   The visibility of the lesson. Determines how / whether this lesson is visible to
      #   users.
      #
      #   @return [Symbol, WhopSDK::Models::LessonVisibilities]
      required :visibility, enum: -> { WhopSDK::LessonVisibilities }

      # @!method initialize(id:, content:, days_from_course_start_until_unlock:, embed_id:, embed_type:, lesson_type:, order:, thumbnail:, title:, visibility:)
      #   Some parameter documentations has been truncated, see
      #   {WhopSDK::Models::CourseLessonListResponse} for more details.
      #
      #   A lesson from the courses app
      #
      #   @param id [String] The ID of the lesson
      #
      #   @param content [String, nil] The content of the lesson
      #
      #   @param days_from_course_start_until_unlock [Integer, nil] Number of days from course start until the lesson is unlocked
      #
      #   @param embed_id [String, nil] ID for the embed (YouTube video ID or Loom share ID)
      #
      #   @param embed_type [Symbol, WhopSDK::Models::CourseLessonListResponse::EmbedType, nil] The type of embed for a lesson
      #
      #   @param lesson_type [Symbol, WhopSDK::Models::LessonTypes] The type of the lesson (text, video, pdf, multi, quiz, knowledge_check)
      #
      #   @param order [Integer] The order of the lesson within its chapter
      #
      #   @param thumbnail [WhopSDK::Models::CourseLessonListResponse::Thumbnail, nil] The thumbnail for the lesson
      #
      #   @param title [String] The title of the lesson
      #
      #   @param visibility [Symbol, WhopSDK::Models::LessonVisibilities] The visibility of the lesson. Determines how / whether this lesson is visible to

      # The type of embed for a lesson
      #
      # @see WhopSDK::Models::CourseLessonListResponse#embed_type
      module EmbedType
        extend WhopSDK::Internal::Type::Enum

        YOUTUBE = :youtube
        LOOM = :loom

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # @see WhopSDK::Models::CourseLessonListResponse#thumbnail
      class Thumbnail < WhopSDK::Internal::Type::BaseModel
        # @!attribute url
        #   This is the URL you use to render optimized attachments on the client. This
        #   should be used for apps.
        #
        #   @return [String, nil]
        required :url, String, nil?: true

        # @!method initialize(url:)
        #   Some parameter documentations has been truncated, see
        #   {WhopSDK::Models::CourseLessonListResponse::Thumbnail} for more details.
        #
        #   The thumbnail for the lesson
        #
        #   @param url [String, nil] This is the URL you use to render optimized attachments on the client. This shou
      end
    end
  end
end
