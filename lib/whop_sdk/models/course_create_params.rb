# frozen_string_literal: true

module WhopSDK
  module Models
    # @see WhopSDK::Resources::Courses#create
    class CourseCreateParams < WhopSDK::Internal::Type::BaseModel
      extend WhopSDK::Internal::Type::RequestParameters::Converter
      include WhopSDK::Internal::Type::RequestParameters

      # @!attribute experience_id
      #   The unique identifier of the experience to create the course in (e.g.,
      #   "exp_XXXXX").
      #
      #   @return [String]
      required :experience_id, String

      # @!attribute title
      #   The display title of the course (e.g., "Introduction to Web Development").
      #
      #   @return [String]
      required :title, String

      # @!attribute certificate_after_completion_enabled
      #   Whether the course awards students a PDF certificate after completing all
      #   lessons.
      #
      #   @return [Boolean, nil]
      optional :certificate_after_completion_enabled, WhopSDK::Internal::Type::Boolean, nil?: true

      # @!attribute order
      #   The decimal order position of the course within its experience. Use fractional
      #   values (e.g., "1.5") to place between existing courses.
      #
      #   @return [String, nil]
      optional :order, String, nil?: true

      # @!attribute require_completing_lessons_in_order
      #   Whether students must complete each lesson sequentially before advancing to the
      #   next one.
      #
      #   @return [Boolean, nil]
      optional :require_completing_lessons_in_order, WhopSDK::Internal::Type::Boolean, nil?: true

      # @!attribute tagline
      #   A short tagline displayed beneath the course title (e.g., "Master the
      #   fundamentals of design").
      #
      #   @return [String, nil]
      optional :tagline, String, nil?: true

      # @!attribute thumbnail
      #   The thumbnail image for the course in PNG, JPEG, or GIF format.
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
      #   @param experience_id [String] The unique identifier of the experience to create the course in (e.g., "exp_XXXX
      #
      #   @param title [String] The display title of the course (e.g., "Introduction to Web Development").
      #
      #   @param certificate_after_completion_enabled [Boolean, nil] Whether the course awards students a PDF certificate after completing all lesson
      #
      #   @param order [String, nil] The decimal order position of the course within its experience. Use fractional v
      #
      #   @param require_completing_lessons_in_order [Boolean, nil] Whether students must complete each lesson sequentially before advancing to the
      #
      #   @param tagline [String, nil] A short tagline displayed beneath the course title (e.g., "Master the fundamenta
      #
      #   @param thumbnail [WhopSDK::Models::CourseCreateParams::Thumbnail, nil] The thumbnail image for the course in PNG, JPEG, or GIF format.
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
        #   The thumbnail image for the course in PNG, JPEG, or GIF format.
        #
        #   @param id [String] The ID of an existing file object.
      end
    end
  end
end
