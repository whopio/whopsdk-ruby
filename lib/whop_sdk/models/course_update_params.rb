# frozen_string_literal: true

module WhopSDK
  module Models
    # @see WhopSDK::Resources::Courses#update
    class CourseUpdateParams < WhopSDK::Internal::Type::BaseModel
      extend WhopSDK::Internal::Type::RequestParameters::Converter
      include WhopSDK::Internal::Type::RequestParameters

      # @!attribute certificate_after_completion_enabled
      #   Whether the course awards students a PDF certificate after completing all
      #   lessons.
      #
      #   @return [Boolean, nil]
      optional :certificate_after_completion_enabled, WhopSDK::Internal::Type::Boolean, nil?: true

      # @!attribute chapters
      #   A list of chapters with nested lessons to reorder or rename in bulk.
      #
      #   @return [Array<WhopSDK::Models::CourseUpdateParams::Chapter>, nil]
      optional :chapters,
               -> { WhopSDK::Internal::Type::ArrayOf[WhopSDK::CourseUpdateParams::Chapter] },
               nil?: true

      # @!attribute description
      #   A short description of the course displayed to students on the course page.
      #
      #   @return [String, nil]
      optional :description, String, nil?: true

      # @!attribute language
      #   The available languages for a course
      #
      #   @return [Symbol, WhopSDK::Models::Languages, nil]
      optional :language, enum: -> { WhopSDK::Languages }, nil?: true

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
      #   @return [WhopSDK::Models::CourseUpdateParams::Thumbnail, nil]
      optional :thumbnail, -> { WhopSDK::CourseUpdateParams::Thumbnail }, nil?: true

      # @!attribute title
      #   The display title of the course (e.g., "Introduction to Web Development").
      #
      #   @return [String, nil]
      optional :title, String, nil?: true

      # @!attribute visibility
      #   The available visibilities for a course. Determines how / whether a course is
      #   visible to users.
      #
      #   @return [Symbol, WhopSDK::Models::CourseVisibilities, nil]
      optional :visibility, enum: -> { WhopSDK::CourseVisibilities }, nil?: true

      # @!method initialize(certificate_after_completion_enabled: nil, chapters: nil, description: nil, language: nil, order: nil, require_completing_lessons_in_order: nil, tagline: nil, thumbnail: nil, title: nil, visibility: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {WhopSDK::Models::CourseUpdateParams} for more details.
      #
      #   @param certificate_after_completion_enabled [Boolean, nil] Whether the course awards students a PDF certificate after completing all lesson
      #
      #   @param chapters [Array<WhopSDK::Models::CourseUpdateParams::Chapter>, nil] A list of chapters with nested lessons to reorder or rename in bulk.
      #
      #   @param description [String, nil] A short description of the course displayed to students on the course page.
      #
      #   @param language [Symbol, WhopSDK::Models::Languages, nil] The available languages for a course
      #
      #   @param order [String, nil] The decimal order position of the course within its experience. Use fractional v
      #
      #   @param require_completing_lessons_in_order [Boolean, nil] Whether students must complete each lesson sequentially before advancing to the
      #
      #   @param tagline [String, nil] A short tagline displayed beneath the course title (e.g., "Master the fundamenta
      #
      #   @param thumbnail [WhopSDK::Models::CourseUpdateParams::Thumbnail, nil] The thumbnail image for the course in PNG, JPEG, or GIF format.
      #
      #   @param title [String, nil] The display title of the course (e.g., "Introduction to Web Development").
      #
      #   @param visibility [Symbol, WhopSDK::Models::CourseVisibilities, nil] The available visibilities for a course. Determines how / whether a course is vi
      #
      #   @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}]

      class Chapter < WhopSDK::Internal::Type::BaseModel
        # @!attribute id
        #   The ID of the chapter to update
        #
        #   @return [String]
        required :id, String

        # @!attribute order
        #   The order of the chapter within its course
        #
        #   @return [Integer]
        required :order, Integer

        # @!attribute title
        #   The title of the chapter
        #
        #   @return [String]
        required :title, String

        # @!attribute lessons
        #   The lessons to update within this chapter
        #
        #   @return [Array<WhopSDK::Models::CourseUpdateParams::Chapter::Lesson>, nil]
        optional :lessons,
                 -> { WhopSDK::Internal::Type::ArrayOf[WhopSDK::CourseUpdateParams::Chapter::Lesson] },
                 nil?: true

        # @!method initialize(id:, order:, title:, lessons: nil)
        #   Input for updating a chapter while updating a course
        #
        #   @param id [String] The ID of the chapter to update
        #
        #   @param order [Integer] The order of the chapter within its course
        #
        #   @param title [String] The title of the chapter
        #
        #   @param lessons [Array<WhopSDK::Models::CourseUpdateParams::Chapter::Lesson>, nil] The lessons to update within this chapter

        class Lesson < WhopSDK::Internal::Type::BaseModel
          # @!attribute id
          #   The ID of the lesson to update
          #
          #   @return [String]
          required :id, String

          # @!attribute chapter_id
          #   The ID of the chapter this lesson belongs to (for moving between chapters)
          #
          #   @return [String]
          required :chapter_id, String

          # @!attribute order
          #   The order of the lesson within its chapter
          #
          #   @return [Integer]
          required :order, Integer

          # @!attribute title
          #   The title of the lesson
          #
          #   @return [String]
          required :title, String

          # @!method initialize(id:, chapter_id:, order:, title:)
          #   Input for updating a lesson while updating a course
          #
          #   @param id [String] The ID of the lesson to update
          #
          #   @param chapter_id [String] The ID of the chapter this lesson belongs to (for moving between chapters)
          #
          #   @param order [Integer] The order of the lesson within its chapter
          #
          #   @param title [String] The title of the lesson
        end
      end

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
