# frozen_string_literal: true

module WhopSDK
  module Models
    # @see WhopSDK::Resources::CourseLessons#create
    class CourseLessonCreateParams < WhopSDK::Internal::Type::BaseModel
      extend WhopSDK::Internal::Type::RequestParameters::Converter
      include WhopSDK::Internal::Type::RequestParameters

      # @!attribute chapter_id
      #   The ID of the chapter to create the lesson in
      #
      #   @return [String]
      required :chapter_id, String

      # @!attribute lesson_type
      #   The type of the lesson
      #
      #   @return [Symbol, WhopSDK::Models::LessonTypes]
      required :lesson_type, enum: -> { WhopSDK::LessonTypes }

      # @!attribute content
      #   The content of the lesson
      #
      #   @return [String, nil]
      optional :content, String, nil?: true

      # @!attribute days_from_course_start_until_unlock
      #   Days from course start until unlock
      #
      #   @return [Integer, nil]
      optional :days_from_course_start_until_unlock, Integer, nil?: true

      # @!attribute title
      #   The title of the lesson
      #
      #   @return [String, nil]
      optional :title, String, nil?: true

      # @!method initialize(chapter_id:, lesson_type:, content: nil, days_from_course_start_until_unlock: nil, title: nil, request_options: {})
      #   @param chapter_id [String] The ID of the chapter to create the lesson in
      #
      #   @param lesson_type [Symbol, WhopSDK::Models::LessonTypes] The type of the lesson
      #
      #   @param content [String, nil] The content of the lesson
      #
      #   @param days_from_course_start_until_unlock [Integer, nil] Days from course start until unlock
      #
      #   @param title [String, nil] The title of the lesson
      #
      #   @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
