# frozen_string_literal: true

module WhopSDK
  module Models
    # @see WhopSDK::Resources::CourseChapters#create
    class CourseChapterCreateParams < WhopSDK::Internal::Type::BaseModel
      extend WhopSDK::Internal::Type::RequestParameters::Converter
      include WhopSDK::Internal::Type::RequestParameters

      # @!attribute course_id
      #   The ID of the course to create the chapter in
      #
      #   @return [String]
      required :course_id, String

      # @!attribute title
      #   The title of the chapter
      #
      #   @return [String, nil]
      optional :title, String, nil?: true

      # @!method initialize(course_id:, title: nil, request_options: {})
      #   @param course_id [String] The ID of the course to create the chapter in
      #
      #   @param title [String, nil] The title of the chapter
      #
      #   @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
