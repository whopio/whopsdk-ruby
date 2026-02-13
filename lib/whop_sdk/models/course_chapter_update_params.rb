# frozen_string_literal: true

module WhopSDK
  module Models
    # @see WhopSDK::Resources::CourseChapters#update
    class CourseChapterUpdateParams < WhopSDK::Internal::Type::BaseModel
      extend WhopSDK::Internal::Type::RequestParameters::Converter
      include WhopSDK::Internal::Type::RequestParameters

      # @!attribute title
      #   The new display title of the chapter (e.g., "Module 1: Introduction").
      #
      #   @return [String]
      required :title, String

      # @!method initialize(title:, request_options: {})
      #   @param title [String] The new display title of the chapter (e.g., "Module 1: Introduction").
      #
      #   @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
