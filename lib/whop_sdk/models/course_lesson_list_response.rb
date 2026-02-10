# frozen_string_literal: true

module WhopSDK
  module Models
    # @see WhopSDK::Resources::CourseLessons#list
    class CourseLessonListResponse < WhopSDK::Internal::Type::BaseModel
      # @!attribute id
      #   The unique identifier for the lesson.
      #
      #   @return [String]
      required :id, String

      # @!attribute content
      #   The text body of the lesson in plain text format. Null if the lesson has no text
      #   content.
      #
      #   @return [String, nil]
      required :content, String, nil?: true

      # @!attribute created_at
      #   The datetime the lesson was created.
      #
      #   @return [Time]
      required :created_at, Time

      # @!attribute days_from_course_start_until_unlock
      #   The number of days after a student starts the course before this lesson becomes
      #   accessible. Null if the lesson is available immediately.
      #
      #   @return [Integer, nil]
      required :days_from_course_start_until_unlock, Integer, nil?: true

      # @!attribute embed_id
      #   The external video identifier for embedded video lessons, such as a YouTube
      #   video ID or Loom share ID. Null if the lesson has no embed.
      #
      #   @return [String, nil]
      required :embed_id, String, nil?: true

      # @!attribute embed_type
      #   The type of embed for a lesson
      #
      #   @return [Symbol, WhopSDK::Models::EmbedType, nil]
      required :embed_type, enum: -> { WhopSDK::EmbedType }, nil?: true

      # @!attribute lesson_type
      #   The content format of this lesson. One of: text, video, pdf, multi, quiz,
      #   knowledge_check.
      #
      #   @return [Symbol, WhopSDK::Models::LessonTypes]
      required :lesson_type, enum: -> { WhopSDK::LessonTypes }

      # @!attribute order
      #   The sort position of this lesson within its parent chapter, starting from zero.
      #
      #   @return [Integer]
      required :order, Integer

      # @!attribute thumbnail
      #   The thumbnail image displayed on lesson cards and previews. Null if no thumbnail
      #   has been uploaded.
      #
      #   @return [WhopSDK::Models::CourseLessonListResponse::Thumbnail, nil]
      required :thumbnail, -> { WhopSDK::Models::CourseLessonListResponse::Thumbnail }, nil?: true

      # @!attribute title
      #   The display name of the lesson shown to students. Maximum 120 characters.
      #
      #   @return [String]
      required :title, String

      # @!attribute visibility
      #   The visibility setting that controls whether this lesson appears to students.
      #   One of: visible, hidden.
      #
      #   @return [Symbol, WhopSDK::Models::LessonVisibilities]
      required :visibility, enum: -> { WhopSDK::LessonVisibilities }

      # @!method initialize(id:, content:, created_at:, days_from_course_start_until_unlock:, embed_id:, embed_type:, lesson_type:, order:, thumbnail:, title:, visibility:)
      #   Some parameter documentations has been truncated, see
      #   {WhopSDK::Models::CourseLessonListResponse} for more details.
      #
      #   An individual learning unit within a chapter, which can contain text, video,
      #   PDF, or assessment content.
      #
      #   @param id [String] The unique identifier for the lesson.
      #
      #   @param content [String, nil] The text body of the lesson in plain text format. Null if the lesson has no text
      #
      #   @param created_at [Time] The datetime the lesson was created.
      #
      #   @param days_from_course_start_until_unlock [Integer, nil] The number of days after a student starts the course before this lesson becomes
      #
      #   @param embed_id [String, nil] The external video identifier for embedded video lessons, such as a YouTube vide
      #
      #   @param embed_type [Symbol, WhopSDK::Models::EmbedType, nil] The type of embed for a lesson
      #
      #   @param lesson_type [Symbol, WhopSDK::Models::LessonTypes] The content format of this lesson. One of: text, video, pdf, multi, quiz, knowle
      #
      #   @param order [Integer] The sort position of this lesson within its parent chapter, starting from zero.
      #
      #   @param thumbnail [WhopSDK::Models::CourseLessonListResponse::Thumbnail, nil] The thumbnail image displayed on lesson cards and previews. Null if no thumbnail
      #
      #   @param title [String] The display name of the lesson shown to students. Maximum 120 characters.
      #
      #   @param visibility [Symbol, WhopSDK::Models::LessonVisibilities] The visibility setting that controls whether this lesson appears to students. On

      # @see WhopSDK::Models::CourseLessonListResponse#thumbnail
      class Thumbnail < WhopSDK::Internal::Type::BaseModel
        # @!attribute url
        #   A pre-optimized URL for rendering this attachment on the client. This should be
        #   used for displaying attachments in apps.
        #
        #   @return [String, nil]
        required :url, String, nil?: true

        # @!method initialize(url:)
        #   Some parameter documentations has been truncated, see
        #   {WhopSDK::Models::CourseLessonListResponse::Thumbnail} for more details.
        #
        #   The thumbnail image displayed on lesson cards and previews. Null if no thumbnail
        #   has been uploaded.
        #
        #   @param url [String, nil] A pre-optimized URL for rendering this attachment on the client. This should be
      end
    end
  end
end
