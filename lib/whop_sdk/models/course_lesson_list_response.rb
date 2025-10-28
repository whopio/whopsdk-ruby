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

      # @!method initialize(id:, content:, days_from_course_start_until_unlock:, lesson_type:, order:, title:, visibility:)
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
      #   @param lesson_type [Symbol, WhopSDK::Models::LessonTypes] The type of the lesson (text, video, pdf, multi, quiz, knowledge_check)
      #
      #   @param order [Integer] The order of the lesson within its chapter
      #
      #   @param title [String] The title of the lesson
      #
      #   @param visibility [Symbol, WhopSDK::Models::LessonVisibilities] The visibility of the lesson. Determines how / whether this lesson is visible to
    end
  end
end
