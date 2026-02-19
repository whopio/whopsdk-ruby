# frozen_string_literal: true

module WhopSDK
  module Models
    # @see WhopSDK::Resources::CourseLessons#create
    class CourseLessonCreateParams < WhopSDK::Internal::Type::BaseModel
      extend WhopSDK::Internal::Type::RequestParameters::Converter
      include WhopSDK::Internal::Type::RequestParameters

      # @!attribute chapter_id
      #   The unique identifier of the chapter to create the lesson in (e.g.,
      #   "chap_XXXXX").
      #
      #   @return [String]
      required :chapter_id, String

      # @!attribute lesson_type
      #   The content type of the lesson, such as video, text, quiz, or knowledge check.
      #
      #   @return [Symbol, WhopSDK::Models::LessonTypes]
      required :lesson_type, enum: -> { WhopSDK::LessonTypes }

      # @!attribute content
      #   The Markdown content body of the lesson.
      #
      #   @return [String, nil]
      optional :content, String, nil?: true

      # @!attribute days_from_course_start_until_unlock
      #   The number of days after a student starts the course before this lesson becomes
      #   accessible.
      #
      #   @return [Integer, nil]
      optional :days_from_course_start_until_unlock, Integer, nil?: true

      # @!attribute embed_id
      #   The external video identifier for embedded content (e.g., a YouTube video ID or
      #   Loom share ID).
      #
      #   @return [String, nil]
      optional :embed_id, String, nil?: true

      # @!attribute embed_type
      #   The type of embed for a lesson
      #
      #   @return [Symbol, WhopSDK::Models::EmbedType, nil]
      optional :embed_type, enum: -> { WhopSDK::EmbedType }, nil?: true

      # @!attribute thumbnail
      #   The thumbnail image for the lesson in PNG, JPEG, or GIF format.
      #
      #   @return [WhopSDK::Models::CourseLessonCreateParams::Thumbnail, nil]
      optional :thumbnail, -> { WhopSDK::CourseLessonCreateParams::Thumbnail }, nil?: true

      # @!attribute title
      #   The display title of the lesson (e.g., "Getting Started with APIs").
      #
      #   @return [String, nil]
      optional :title, String, nil?: true

      # @!method initialize(chapter_id:, lesson_type:, content: nil, days_from_course_start_until_unlock: nil, embed_id: nil, embed_type: nil, thumbnail: nil, title: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {WhopSDK::Models::CourseLessonCreateParams} for more details.
      #
      #   @param chapter_id [String] The unique identifier of the chapter to create the lesson in (e.g., "chap_XXXXX"
      #
      #   @param lesson_type [Symbol, WhopSDK::Models::LessonTypes] The content type of the lesson, such as video, text, quiz, or knowledge check.
      #
      #   @param content [String, nil] The Markdown content body of the lesson.
      #
      #   @param days_from_course_start_until_unlock [Integer, nil] The number of days after a student starts the course before this lesson becomes
      #
      #   @param embed_id [String, nil] The external video identifier for embedded content (e.g., a YouTube video ID or
      #
      #   @param embed_type [Symbol, WhopSDK::Models::EmbedType, nil] The type of embed for a lesson
      #
      #   @param thumbnail [WhopSDK::Models::CourseLessonCreateParams::Thumbnail, nil] The thumbnail image for the lesson in PNG, JPEG, or GIF format.
      #
      #   @param title [String, nil] The display title of the lesson (e.g., "Getting Started with APIs").
      #
      #   @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}]

      class Thumbnail < WhopSDK::Internal::Type::BaseModel
        # @!attribute id
        #   The ID of an existing file object.
        #
        #   @return [String]
        required :id, String

        # @!method initialize(id:)
        #   The thumbnail image for the lesson in PNG, JPEG, or GIF format.
        #
        #   @param id [String] The ID of an existing file object.
      end
    end
  end
end
