# frozen_string_literal: true

module WhopSDK
  module Models
    # @see WhopSDK::Resources::CourseStudents#list
    class CourseStudentListParams < WhopSDK::Internal::Type::BaseModel
      extend WhopSDK::Internal::Type::RequestParameters::Converter
      include WhopSDK::Internal::Type::RequestParameters

      # @!attribute course_id
      #   The unique identifier of the course to list enrolled students for.
      #
      #   @return [String]
      required :course_id, String

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

      # @!attribute first
      #   Returns the first _n_ elements from the list.
      #
      #   @return [Integer, nil]
      optional :first, Integer, nil?: true

      # @!attribute keyword
      #   A search term to filter students by name or username.
      #
      #   @return [String, nil]
      optional :keyword, String, nil?: true

      # @!attribute last
      #   Returns the last _n_ elements from the list.
      #
      #   @return [Integer, nil]
      optional :last, Integer, nil?: true

      # @!method initialize(course_id:, after: nil, before: nil, first: nil, keyword: nil, last: nil, request_options: {})
      #   @param course_id [String] The unique identifier of the course to list enrolled students for.
      #
      #   @param after [String, nil] Returns the elements in the list that come after the specified cursor.
      #
      #   @param before [String, nil] Returns the elements in the list that come before the specified cursor.
      #
      #   @param first [Integer, nil] Returns the first _n_ elements from the list.
      #
      #   @param keyword [String, nil] A search term to filter students by name or username.
      #
      #   @param last [Integer, nil] Returns the last _n_ elements from the list.
      #
      #   @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
