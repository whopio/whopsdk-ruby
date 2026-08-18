# frozen_string_literal: true

module WhopSDK
  module Models
    # @see WhopSDK::Resources::CourseLessonInteractions#list
    class CourseLessonInteractionListParams < WhopSDK::Internal::Type::BaseModel
      extend WhopSDK::Internal::Type::RequestParameters::Converter
      include WhopSDK::Internal::Type::RequestParameters

      # @!attribute after
      #   Returns the elements in the list that come after the specified cursor.
      #
      #   @return [String, nil]
      optional :after, String

      # @!attribute before
      #   Returns the elements in the list that come before the specified cursor.
      #
      #   @return [String, nil]
      optional :before, String

      # @!attribute completed
      #   Whether to filter for completed or in-progress lesson interactions.
      #
      #   @return [Boolean, nil]
      optional :completed, WhopSDK::Internal::Type::Boolean

      # @!attribute course_id
      #   The unique identifier of the course to filter interactions for.
      #
      #   @return [String, nil]
      optional :course_id, String

      # @!attribute first
      #   Returns the first _n_ elements from the list.
      #
      #   @return [Integer, nil]
      optional :first, Integer

      # @!attribute last
      #   Returns the last _n_ elements from the list.
      #
      #   @return [Integer, nil]
      optional :last, Integer

      # @!attribute lesson_id
      #   The unique identifier of the lesson to filter interactions for.
      #
      #   @return [String, nil]
      optional :lesson_id, String

      # @!attribute user_id
      #   The unique identifier of the user to filter lesson interactions for.
      #
      #   @return [String, nil]
      optional :user_id, String

      # @!method initialize(after: nil, before: nil, completed: nil, course_id: nil, first: nil, last: nil, lesson_id: nil, user_id: nil, request_options: {})
      #   @param after [String] Returns the elements in the list that come after the specified cursor.
      #
      #   @param before [String] Returns the elements in the list that come before the specified cursor.
      #
      #   @param completed [Boolean] Whether to filter for completed or in-progress lesson interactions.
      #
      #   @param course_id [String] The unique identifier of the course to filter interactions for.
      #
      #   @param first [Integer] Returns the first _n_ elements from the list.
      #
      #   @param last [Integer] Returns the last _n_ elements from the list.
      #
      #   @param lesson_id [String] The unique identifier of the lesson to filter interactions for.
      #
      #   @param user_id [String] The unique identifier of the user to filter lesson interactions for.
      #
      #   @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
