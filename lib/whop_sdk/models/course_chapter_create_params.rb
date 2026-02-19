# frozen_string_literal: true

module WhopSDK
  module Models
    # @see WhopSDK::Resources::CourseChapters#create
    class CourseChapterCreateParams < WhopSDK::Internal::Type::BaseModel
      extend WhopSDK::Internal::Type::RequestParameters::Converter
      include WhopSDK::Internal::Type::RequestParameters

      # @!attribute course_id
      #   The unique identifier of the course to create the chapter in (e.g.,
      #   "course_XXXXX").
      #
      #   @return [String]
      required :course_id, String

      # @!attribute title
      #   The display title of the chapter (e.g., "Module 1: Introduction").
      #
      #   @return [String, nil]
      optional :title, String, nil?: true

      # @!method initialize(course_id:, title: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {WhopSDK::Models::CourseChapterCreateParams} for more details.
      #
      #   @param course_id [String] The unique identifier of the course to create the chapter in (e.g., "course_XXXX
      #
      #   @param title [String, nil] The display title of the chapter (e.g., "Module 1: Introduction").
      #
      #   @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
