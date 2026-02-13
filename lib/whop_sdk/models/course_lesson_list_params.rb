# frozen_string_literal: true

module WhopSDK
  module Models
    # @see WhopSDK::Resources::CourseLessons#list
    class CourseLessonListParams < WhopSDK::Internal::Type::BaseModel
      extend WhopSDK::Internal::Type::RequestParameters::Converter
      include WhopSDK::Internal::Type::RequestParameters

      # @!attribute after
      #   Returns the elements in the list that come after the specified cursor.
      #
      #   @return [String, nil]
      optional :after, String, nil?: true

      # @!attribute before
      #   Returns the elements in the list that come before the specified cursor.
      #
      #   @return [String, nil]
      optional :before, String, nil?: true

      # @!attribute chapter_id
      #   The unique identifier of a chapter to return only its lessons.
      #
      #   @return [String, nil]
      optional :chapter_id, String, nil?: true

      # @!attribute course_id
      #   The unique identifier of the course to return all lessons across all chapters.
      #
      #   @return [String, nil]
      optional :course_id, String, nil?: true

      # @!attribute first
      #   Returns the first _n_ elements from the list.
      #
      #   @return [Integer, nil]
      optional :first, Integer, nil?: true

      # @!attribute last
      #   Returns the last _n_ elements from the list.
      #
      #   @return [Integer, nil]
      optional :last, Integer, nil?: true

      # @!method initialize(after: nil, before: nil, chapter_id: nil, course_id: nil, first: nil, last: nil, request_options: {})
      #   @param after [String, nil] Returns the elements in the list that come after the specified cursor.
      #
      #   @param before [String, nil] Returns the elements in the list that come before the specified cursor.
      #
      #   @param chapter_id [String, nil] The unique identifier of a chapter to return only its lessons.
      #
      #   @param course_id [String, nil] The unique identifier of the course to return all lessons across all chapters.
      #
      #   @param first [Integer, nil] Returns the first _n_ elements from the list.
      #
      #   @param last [Integer, nil] Returns the last _n_ elements from the list.
      #
      #   @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
