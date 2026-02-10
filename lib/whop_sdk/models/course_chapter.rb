# frozen_string_literal: true

module WhopSDK
  module Models
    # @see WhopSDK::Resources::CourseChapters#create
    class CourseChapter < WhopSDK::Internal::Type::BaseModel
      # @!attribute id
      #   The unique identifier for the chapter.
      #
      #   @return [String]
      required :id, String

      # @!attribute lessons
      #   An ordered list of lessons in this chapter, sorted by display position. Hidden
      #   lessons are excluded for non-admin users.
      #
      #   @return [Array<WhopSDK::Models::CourseChapter::Lesson>]
      required :lessons, -> { WhopSDK::Internal::Type::ArrayOf[WhopSDK::CourseChapter::Lesson] }

      # @!attribute order
      #   The sort position of this chapter within its parent course, starting from zero.
      #
      #   @return [Integer]
      required :order, Integer

      # @!attribute title
      #   The display name of the chapter shown to students. Maximum 150 characters.
      #
      #   @return [String]
      required :title, String

      # @!method initialize(id:, lessons:, order:, title:)
      #   Some parameter documentations has been truncated, see
      #   {WhopSDK::Models::CourseChapter} for more details.
      #
      #   A grouping of related lessons within a course, used to organize content into
      #   sections.
      #
      #   @param id [String] The unique identifier for the chapter.
      #
      #   @param lessons [Array<WhopSDK::Models::CourseChapter::Lesson>] An ordered list of lessons in this chapter, sorted by display position. Hidden l
      #
      #   @param order [Integer] The sort position of this chapter within its parent course, starting from zero.
      #
      #   @param title [String] The display name of the chapter shown to students. Maximum 150 characters.

      class Lesson < WhopSDK::Internal::Type::BaseModel
        # @!attribute id
        #   The unique identifier for the lesson.
        #
        #   @return [String]
        required :id, String

        # @!attribute order
        #   The sort position of this lesson within its parent chapter, starting from zero.
        #
        #   @return [Integer]
        required :order, Integer

        # @!attribute title
        #   The display name of the lesson shown to students. Maximum 120 characters.
        #
        #   @return [String]
        required :title, String

        # @!method initialize(id:, order:, title:)
        #   An individual learning unit within a chapter, which can contain text, video,
        #   PDF, or assessment content.
        #
        #   @param id [String] The unique identifier for the lesson.
        #
        #   @param order [Integer] The sort position of this lesson within its parent chapter, starting from zero.
        #
        #   @param title [String] The display name of the lesson shown to students. Maximum 120 characters.
      end
    end
  end
end
