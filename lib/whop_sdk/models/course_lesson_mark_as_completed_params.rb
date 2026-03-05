# frozen_string_literal: true

module WhopSDK
  module Models
    # @see WhopSDK::Resources::CourseLessons#mark_as_completed
    class CourseLessonMarkAsCompletedParams < WhopSDK::Internal::Type::BaseModel
      extend WhopSDK::Internal::Type::RequestParameters::Converter
      include WhopSDK::Internal::Type::RequestParameters

      # @!attribute lesson_id
      #
      #   @return [String]
      required :lesson_id, String

      # @!method initialize(lesson_id:, request_options: {})
      #   @param lesson_id [String]
      #   @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
