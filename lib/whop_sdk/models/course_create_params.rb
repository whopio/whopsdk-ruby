# frozen_string_literal: true

module WhopSDK
  module Models
    # @see WhopSDK::Resources::Courses#create
    class CourseCreateParams < WhopSDK::Internal::Type::BaseModel
      extend WhopSDK::Internal::Type::RequestParameters::Converter
      include WhopSDK::Internal::Type::RequestParameters

      # @!attribute experience_id
      #   The ID of the experience to create the course in
      #
      #   @return [String]
      required :experience_id, String

      # @!attribute title
      #   The title of the course
      #
      #   @return [String]
      required :title, String

      # @!attribute certificate_after_completion_enabled
      #   Whether the course will award its students a PDF certificate after completing
      #   all lessons
      #
      #   @return [Boolean, nil]
      optional :certificate_after_completion_enabled, WhopSDK::Internal::Type::Boolean, nil?: true

      # @!attribute order
      #   The decimal order position of the course within its experience. If not provided,
      #   it will be set to the next sequential order. Use fractional values (e.g., 1.5)
      #   to place between existing courses.
      #
      #   @return [String, nil]
      optional :order, String, nil?: true

      # @!attribute require_completing_lessons_in_order
      #   Whether the course requires students to complete the previous lesson before
      #   moving on to the next one
      #
      #   @return [Boolean, nil]
      optional :require_completing_lessons_in_order, WhopSDK::Internal::Type::Boolean, nil?: true

      # @!attribute tagline
      #   The tagline of the course
      #
      #   @return [String, nil]
      optional :tagline, String, nil?: true

      # @!attribute thumbnail
      #   The thumbnail for the course in png, jpeg, or gif format
      #
      #   @return [WhopSDK::Models::CourseCreateParams::Thumbnail, nil]
      optional :thumbnail, -> { WhopSDK::CourseCreateParams::Thumbnail }, nil?: true

      # @!attribute visibility
      #   The available visibilities for a course. Determines how / whether a course is
      #   visible to users.
      #
      #   @return [Symbol, WhopSDK::Models::CourseVisibilities, nil]
      optional :visibility, enum: -> { WhopSDK::CourseVisibilities }, nil?: true

      # @!method initialize(experience_id:, title:, certificate_after_completion_enabled: nil, order: nil, require_completing_lessons_in_order: nil, tagline: nil, thumbnail: nil, visibility: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {WhopSDK::Models::CourseCreateParams} for more details.
      #
      #   @param experience_id [String] The ID of the experience to create the course in
      #
      #   @param title [String] The title of the course
      #
      #   @param certificate_after_completion_enabled [Boolean, nil] Whether the course will award its students a PDF certificate after completing al
      #
      #   @param order [String, nil] The decimal order position of the course within its experience. If not provided,
      #
      #   @param require_completing_lessons_in_order [Boolean, nil] Whether the course requires students to complete the previous lesson before movi
      #
      #   @param tagline [String, nil] The tagline of the course
      #
      #   @param thumbnail [WhopSDK::Models::CourseCreateParams::Thumbnail, nil] The thumbnail for the course in png, jpeg, or gif format
      #
      #   @param visibility [Symbol, WhopSDK::Models::CourseVisibilities, nil] The available visibilities for a course. Determines how / whether a course is vi
      #
      #   @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}]

      class Thumbnail < WhopSDK::Internal::Type::BaseModel
        # @!attribute id
        #   The ID of an existing file object.
        #
        #   @return [String]
        required :id, String

        # @!method initialize(id:)
        #   The thumbnail for the course in png, jpeg, or gif format
        #
        #   @param id [String] The ID of an existing file object.
      end
    end
  end
end
