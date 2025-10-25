# frozen_string_literal: true

module WhopSDK
  module Models
    # @see WhopSDK::Resources::Courses#create
    class Course < WhopSDK::Internal::Type::BaseModel
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

      # @!attribute chapters
      #   The chapters in this course
      #
      #   @return [Array<WhopSDK::Models::Course::Chapter>]
      required :chapters, -> { WhopSDK::Internal::Type::ArrayOf[WhopSDK::Course::Chapter] }

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
      #   @return [WhopSDK::Models::Course::Thumbnail, nil]
      required :thumbnail, -> { WhopSDK::Course::Thumbnail }, nil?: true

      # @!attribute title
      #   The title of the course
      #
      #   @return [String, nil]
      required :title, String, nil?: true

      # @!method initialize(id:, certificate_after_completion_enabled:, chapters:, description:, language:, require_completing_lessons_in_order:, tagline:, thumbnail:, title:)
      #   Some parameter documentations has been truncated, see {WhopSDK::Models::Course}
      #   for more details.
      #
      #   A course from the courses app
      #
      #   @param id [String] The ID of the course. Looks like cors_XXX
      #
      #   @param certificate_after_completion_enabled [Boolean, nil] Whether the course will award its students a PDF certificate after completing al
      #
      #   @param chapters [Array<WhopSDK::Models::Course::Chapter>] The chapters in this course
      #
      #   @param description [String, nil] A short description of the course
      #
      #   @param language [Symbol, WhopSDK::Models::Languages] The language spoken in the video content of the course, used to generate closed
      #
      #   @param require_completing_lessons_in_order [Boolean] Whether the course requires students to complete the previous lesson before movi
      #
      #   @param tagline [String, nil] A short tagline for the course. It is displayed under the course title in the UI
      #
      #   @param thumbnail [WhopSDK::Models::Course::Thumbnail, nil] The thumbnail for the course
      #
      #   @param title [String, nil] The title of the course

      class Chapter < WhopSDK::Internal::Type::BaseModel
        # @!attribute id
        #   The ID of the chapter. Looks like chap_XXX
        #
        #   @return [String]
        required :id, String

        # @!attribute lessons
        #   The lessons in this chapter
        #
        #   @return [Array<WhopSDK::Models::Course::Chapter::Lesson>]
        required :lessons, -> { WhopSDK::Internal::Type::ArrayOf[WhopSDK::Course::Chapter::Lesson] }

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

        # @!method initialize(id:, lessons:, order:, title:)
        #   A chapter from the courses app
        #
        #   @param id [String] The ID of the chapter. Looks like chap_XXX
        #
        #   @param lessons [Array<WhopSDK::Models::Course::Chapter::Lesson>] The lessons in this chapter
        #
        #   @param order [Integer] The order of the chapter within its course
        #
        #   @param title [String] The title of the chapter

        class Lesson < WhopSDK::Internal::Type::BaseModel
          # @!attribute id
          #   The ID of the lesson
          #
          #   @return [String]
          required :id, String

          # @!attribute lesson_type
          #   The type of the lesson (text, video, pdf, multi, quiz, knowledge_check)
          #
          #   @return [Symbol, WhopSDK::Models::LessonTypes]
          required :lesson_type, enum: -> { WhopSDK::LessonTypes }

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

          # @!method initialize(id:, lesson_type:, order:, title:)
          #   A lesson from the courses app
          #
          #   @param id [String] The ID of the lesson
          #
          #   @param lesson_type [Symbol, WhopSDK::Models::LessonTypes] The type of the lesson (text, video, pdf, multi, quiz, knowledge_check)
          #
          #   @param order [Integer] The order of the lesson within its chapter
          #
          #   @param title [String] The title of the lesson
        end
      end

      # @see WhopSDK::Models::Course#thumbnail
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
        #   {WhopSDK::Models::Course::Thumbnail} for more details.
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
