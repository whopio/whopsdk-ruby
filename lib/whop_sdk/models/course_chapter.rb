# frozen_string_literal: true

module WhopSDK
  module Models
    # @see WhopSDK::Resources::CourseChapters#create
    class CourseChapter < WhopSDK::Internal::Type::BaseModel
      # @!attribute id
      #   The ID of the chapter. Looks like chap_XXX
      #
      #   @return [String]
      required :id, String

      # @!attribute lessons
      #   The lessons in this chapter
      #
      #   @return [Array<WhopSDK::Models::CourseChapter::Lesson>]
      required :lessons, -> { WhopSDK::Internal::Type::ArrayOf[WhopSDK::CourseChapter::Lesson] }

      # @!attribute order
      #   The order of the chapter within its course
      #
      #   @return [Integer]
      required :order, Integer

      # @!attribute title
      #   The title of the chapter
      #
      #   @return [String]
      required :title, String

      # @!method initialize(id:, lessons:, order:, title:)
      #   A chapter from the courses app
      #
      #   @param id [String] The ID of the chapter. Looks like chap_XXX
      #
      #   @param lessons [Array<WhopSDK::Models::CourseChapter::Lesson>] The lessons in this chapter
      #
      #   @param order [Integer] The order of the chapter within its course
      #
      #   @param title [String] The title of the chapter

      class Lesson < WhopSDK::Internal::Type::BaseModel
        # @!attribute id
        #   The ID of the lesson
        #
        #   @return [String]
        required :id, String

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

        # @!method initialize(id:, order:, title:)
        #   A lesson from the courses app
        #
        #   @param id [String] The ID of the lesson
        #
        #   @param order [Integer] The order of the lesson within its chapter
        #
        #   @param title [String] The title of the lesson
      end
    end
  end
end
