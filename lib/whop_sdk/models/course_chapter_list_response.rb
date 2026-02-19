# frozen_string_literal: true

module WhopSDK
  module Models
    # @see WhopSDK::Resources::CourseChapters#list
    class CourseChapterListResponse < WhopSDK::Internal::Type::BaseModel
      # @!attribute id
      #   The unique identifier for the chapter.
      #
      #   @return [String]
      required :id, String

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

      # @!method initialize(id:, order:, title:)
      #   A grouping of related lessons within a course, used to organize content into
      #   sections.
      #
      #   @param id [String] The unique identifier for the chapter.
      #
      #   @param order [Integer] The sort position of this chapter within its parent course, starting from zero.
      #
      #   @param title [String] The display name of the chapter shown to students. Maximum 150 characters.
    end
  end
end
