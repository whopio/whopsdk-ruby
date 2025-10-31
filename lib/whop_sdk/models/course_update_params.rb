# frozen_string_literal: true

module WhopSDK
  module Models
    # @see WhopSDK::Resources::Courses#update
    class CourseUpdateParams < WhopSDK::Internal::Type::BaseModel
      extend WhopSDK::Internal::Type::RequestParameters::Converter
      include WhopSDK::Internal::Type::RequestParameters

      # @!attribute certificate_after_completion_enabled
      #   Whether the course will award its students a PDF certificate after completing
      #   all lessons
      #
      #   @return [Boolean, nil]
      optional :certificate_after_completion_enabled, WhopSDK::Internal::Type::Boolean, nil?: true

      # @!attribute chapters
      #   The chapters and lessons to update
      #
      #   @return [Array<WhopSDK::Models::CourseUpdateParams::Chapter>, nil]
      optional :chapters,
               -> { WhopSDK::Internal::Type::ArrayOf[WhopSDK::CourseUpdateParams::Chapter] },
               nil?: true

      # @!attribute cover_image
      #   The cover image URL of the course
      #
      #   @return [String, nil]
      optional :cover_image, String, nil?: true

      # @!attribute description
      #   A short description of the course
      #
      #   @return [String, nil]
      optional :description, String, nil?: true

      # @!attribute language
      #   The available languages for a course
      #
      #   @return [Symbol, WhopSDK::Models::Languages, nil]
      optional :language, enum: -> { WhopSDK::Languages }, nil?: true

      # @!attribute require_completing_lessons_in_order
      #   Whether the course requires students to complete the previous lesson before
      #   moving on to the next one
      #
      #   @return [Boolean, nil]
      optional :require_completing_lessons_in_order, WhopSDK::Internal::Type::Boolean, nil?: true

      # @!attribute tagline
      #   A short tagline for the course
      #
      #   @return [String, nil]
      optional :tagline, String, nil?: true

      # @!attribute thumbnail
      #   The thumbnail for the course in png, jpeg, or gif format
      #
      #   @return [WhopSDK::Models::CourseUpdateParams::Thumbnail::DirectUploadID, WhopSDK::Models::CourseUpdateParams::Thumbnail::ID, nil]
      optional :thumbnail, union: -> { WhopSDK::CourseUpdateParams::Thumbnail }, nil?: true

      # @!attribute title
      #   The title of the course
      #
      #   @return [String, nil]
      optional :title, String, nil?: true

      # @!method initialize(certificate_after_completion_enabled: nil, chapters: nil, cover_image: nil, description: nil, language: nil, require_completing_lessons_in_order: nil, tagline: nil, thumbnail: nil, title: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {WhopSDK::Models::CourseUpdateParams} for more details.
      #
      #   @param certificate_after_completion_enabled [Boolean, nil] Whether the course will award its students a PDF certificate after completing al
      #
      #   @param chapters [Array<WhopSDK::Models::CourseUpdateParams::Chapter>, nil] The chapters and lessons to update
      #
      #   @param cover_image [String, nil] The cover image URL of the course
      #
      #   @param description [String, nil] A short description of the course
      #
      #   @param language [Symbol, WhopSDK::Models::Languages, nil] The available languages for a course
      #
      #   @param require_completing_lessons_in_order [Boolean, nil] Whether the course requires students to complete the previous lesson before movi
      #
      #   @param tagline [String, nil] A short tagline for the course
      #
      #   @param thumbnail [WhopSDK::Models::CourseUpdateParams::Thumbnail::DirectUploadID, WhopSDK::Models::CourseUpdateParams::Thumbnail::ID, nil] The thumbnail for the course in png, jpeg, or gif format
      #
      #   @param title [String, nil] The title of the course
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

      # The thumbnail for the course in png, jpeg, or gif format
      module Thumbnail
        extend WhopSDK::Internal::Type::Union

        # Input for an attachment
        variant -> { WhopSDK::CourseUpdateParams::Thumbnail::DirectUploadID }

        # Input for an attachment
        variant -> { WhopSDK::CourseUpdateParams::Thumbnail::ID }

        class DirectUploadID < WhopSDK::Internal::Type::BaseModel
          # @!attribute direct_upload_id
          #   This ID should be used the first time you upload an attachment. It is the ID of
          #   the direct upload that was created when uploading the file to S3 via the
          #   mediaDirectUpload mutation.
          #
          #   @return [String]
          required :direct_upload_id, String

          # @!method initialize(direct_upload_id:)
          #   Some parameter documentations has been truncated, see
          #   {WhopSDK::Models::CourseUpdateParams::Thumbnail::DirectUploadID} for more
          #   details.
          #
          #   Input for an attachment
          #
          #   @param direct_upload_id [String] This ID should be used the first time you upload an attachment. It is the ID of
        end

        class ID < WhopSDK::Internal::Type::BaseModel
          # @!attribute id
          #   The ID of an existing attachment object. Use this when updating a resource and
          #   keeping a subset of the attachments. Don't use this unless you know what you're
          #   doing.
          #
          #   @return [String]
          required :id, String

          # @!method initialize(id:)
          #   Some parameter documentations has been truncated, see
          #   {WhopSDK::Models::CourseUpdateParams::Thumbnail::ID} for more details.
          #
          #   Input for an attachment
          #
          #   @param id [String] The ID of an existing attachment object. Use this when updating a resource and k
        end

        # @!method self.variants
        #   @return [Array(WhopSDK::Models::CourseUpdateParams::Thumbnail::DirectUploadID, WhopSDK::Models::CourseUpdateParams::Thumbnail::ID)]
      end
    end
  end
end
