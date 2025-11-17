# frozen_string_literal: true

module WhopSDK
  module Models
    # @see WhopSDK::Resources::Courses#list
    class CourseListResponse < WhopSDK::Internal::Type::BaseModel
      # @!attribute id
      #   The ID of the course. Looks like cors_XXX
      #
      #   @return [String]
      required :id, String

      # @!attribute certificate_after_completion_enabled
      #   Whether the course will award its students a PDF certificate after completing
      #   all lessons
      #
      #   @return [Boolean, nil]
      required :certificate_after_completion_enabled, WhopSDK::Internal::Type::Boolean, nil?: true

      # @!attribute cover_image
      #   The URL of the course's cover image, which is shown in course preview cards
      #
      #   @return [String, nil]
      required :cover_image, String, nil?: true

      # @!attribute created_at
      #   The timestamp of when the course was created
      #
      #   @return [Time]
      required :created_at, Time

      # @!attribute description
      #   A short description of the course
      #
      #   @return [String, nil]
      required :description, String, nil?: true

      # @!attribute language
      #   The language spoken in the video content of the course, used to generate closed
      #   captions in the right language
      #
      #   @return [Symbol, WhopSDK::Models::Languages]
      required :language, enum: -> { WhopSDK::Languages }

      # @!attribute order
      #   The order of the course within its experience
      #
      #   @return [String]
      required :order, String

      # @!attribute require_completing_lessons_in_order
      #   Whether the course requires students to complete the previous lesson before
      #   moving on to the next one
      #
      #   @return [Boolean]
      required :require_completing_lessons_in_order, WhopSDK::Internal::Type::Boolean

      # @!attribute tagline
      #   A short tagline for the course. It is displayed under the course title in the UI
      #
      #   @return [String, nil]
      required :tagline, String, nil?: true

      # @!attribute thumbnail
      #   The thumbnail for the course
      #
      #   @return [WhopSDK::Models::CourseListResponse::Thumbnail, nil]
      required :thumbnail, -> { WhopSDK::Models::CourseListResponse::Thumbnail }, nil?: true

      # @!attribute title
      #   The title of the course
      #
      #   @return [String, nil]
      required :title, String, nil?: true

      # @!attribute updated_at
      #   The timestamp of when the course was last updated
      #
      #   @return [Time]
      required :updated_at, Time

      # @!attribute visibility
      #   The visibility of the course. Determines how / whether this course is visible to
      #   users.
      #
      #   @return [Symbol, WhopSDK::Models::CourseVisibilities]
      required :visibility, enum: -> { WhopSDK::CourseVisibilities }

      # @!method initialize(id:, certificate_after_completion_enabled:, cover_image:, created_at:, description:, language:, order:, require_completing_lessons_in_order:, tagline:, thumbnail:, title:, updated_at:, visibility:)
      #   Some parameter documentations has been truncated, see
      #   {WhopSDK::Models::CourseListResponse} for more details.
      #
      #   A course from the courses app
      #
      #   @param id [String] The ID of the course. Looks like cors_XXX
      #
      #   @param certificate_after_completion_enabled [Boolean, nil] Whether the course will award its students a PDF certificate after completing al
      #
      #   @param cover_image [String, nil] The URL of the course's cover image, which is shown in course preview cards
      #
      #   @param created_at [Time] The timestamp of when the course was created
      #
      #   @param description [String, nil] A short description of the course
      #
      #   @param language [Symbol, WhopSDK::Models::Languages] The language spoken in the video content of the course, used to generate closed
      #
      #   @param order [String] The order of the course within its experience
      #
      #   @param require_completing_lessons_in_order [Boolean] Whether the course requires students to complete the previous lesson before movi
      #
      #   @param tagline [String, nil] A short tagline for the course. It is displayed under the course title in the UI
      #
      #   @param thumbnail [WhopSDK::Models::CourseListResponse::Thumbnail, nil] The thumbnail for the course
      #
      #   @param title [String, nil] The title of the course
      #
      #   @param updated_at [Time] The timestamp of when the course was last updated
      #
      #   @param visibility [Symbol, WhopSDK::Models::CourseVisibilities] The visibility of the course. Determines how / whether this course is visible to

      # @see WhopSDK::Models::CourseListResponse#thumbnail
      class Thumbnail < WhopSDK::Internal::Type::BaseModel
        # @!attribute id
        #   The ID of the attachment
        #
        #   @return [String]
        required :id, String

        # @!attribute content_type
        #   The attachment's content type (e.g., image/jpg, video/mp4)
        #
        #   @return [String, nil]
        required :content_type, String, nil?: true

        # @!attribute filename
        #   The name of the file
        #
        #   @return [String, nil]
        required :filename, String, nil?: true

        # @!attribute optimized_url
        #   This is the URL you use to render optimized attachments on the client. This
        #   should be used for apps.
        #
        #   @return [String, nil]
        required :optimized_url, String, nil?: true

        # @!attribute source_url
        #   The original URL of the attachment, such as a direct link to S3. This should
        #   never be displayed on the client and always passed to an Imgproxy transformer.
        #
        #   @return [String, nil]
        required :source_url, String, nil?: true

        # @!method initialize(id:, content_type:, filename:, optimized_url:, source_url:)
        #   Some parameter documentations has been truncated, see
        #   {WhopSDK::Models::CourseListResponse::Thumbnail} for more details.
        #
        #   The thumbnail for the course
        #
        #   @param id [String] The ID of the attachment
        #
        #   @param content_type [String, nil] The attachment's content type (e.g., image/jpg, video/mp4)
        #
        #   @param filename [String, nil] The name of the file
        #
        #   @param optimized_url [String, nil] This is the URL you use to render optimized attachments on the client. This shou
        #
        #   @param source_url [String, nil] The original URL of the attachment, such as a direct link to S3. This should nev
      end
    end
  end
end
