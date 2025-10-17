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
      optional :after, String, nil?: true

      # @!attribute before
      #   Returns the elements in the list that come before the specified cursor.
      #
      #   @return [String, nil]
      optional :before, String, nil?: true

      # @!attribute completed
      #   Whether the lesson has been completed by the user
      #
      #   @return [Boolean, nil]
      optional :completed, WhopSDK::Internal::Type::Boolean, nil?: true

      # @!attribute course_id
      #   The ID of the course to list course lesson interactions for
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

      # @!attribute lesson_id
      #   The ID of the lesson to list course lesson interactions for
      #
      #   @return [String, nil]
      optional :lesson_id, String, nil?: true

      # @!attribute user_id
      #   The ID of the user to list course lesson interactions for
      #
      #   @return [String, nil]
      optional :user_id, String, nil?: true

      # @!method initialize(after: nil, before: nil, completed: nil, course_id: nil, first: nil, last: nil, lesson_id: nil, user_id: nil, request_options: {})
      #   @param after [String, nil] Returns the elements in the list that come after the specified cursor.
      #
      #   @param before [String, nil] Returns the elements in the list that come before the specified cursor.
      #
      #   @param completed [Boolean, nil] Whether the lesson has been completed by the user
      #
      #   @param course_id [String, nil] The ID of the course to list course lesson interactions for
      #
      #   @param first [Integer, nil] Returns the first _n_ elements from the list.
      #
      #   @param last [Integer, nil] Returns the last _n_ elements from the list.
      #
      #   @param lesson_id [String, nil] The ID of the lesson to list course lesson interactions for
      #
      #   @param user_id [String, nil] The ID of the user to list course lesson interactions for
      #
      #   @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
