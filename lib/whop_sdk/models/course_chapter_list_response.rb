# frozen_string_literal: true

module WhopSDK
  module Models
    # @see WhopSDK::Resources::CourseChapters#list
    class CourseChapterListResponse < WhopSDK::Internal::Type::BaseModel
      # @!attribute id
      #   The ID of the chapter. Looks like chap_XXX
      #
      #   @return [String]
      required :id, String

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

      # @!method initialize(id:, order:, title:)
      #   A chapter from the courses app
      #
      #   @param id [String] The ID of the chapter. Looks like chap_XXX
      #
      #   @param order [Integer] The order of the chapter within its course
      #
      #   @param title [String] The title of the chapter
    end
  end
end
