# frozen_string_literal: true

module WhopSDK
  module Models
    # @see WhopSDK::Resources::Courses#create
    class Course < WhopSDK::Internal::Type::BaseModel
      # @!attribute id
      #   The unique identifier for the course.
      #
      #   @return [String]
      required :id, String

      # @!attribute certificate_after_completion_enabled
      #   Whether students receive a PDF certificate after completing all lessons in this
      #   course. Null if the setting has not been configured.
      #
      #   @return [Boolean, nil]
      required :certificate_after_completion_enabled, WhopSDK::Internal::Type::Boolean, nil?: true

      # @!attribute chapters
      #   An ordered list of all chapters in this course, sorted by their display
      #   position.
      #
      #   @return [Array<WhopSDK::Models::Course::Chapter>]
      required :chapters, -> { WhopSDK::Internal::Type::ArrayOf[WhopSDK::Course::Chapter] }

      # @!attribute cover_image
      #   The URL of the course cover image shown on preview cards. Null if no cover image
      #   has been uploaded.
      #
      #   @return [String, nil]
      required :cover_image, String, nil?: true

      # @!attribute created_at
      #   The datetime the course was created.
      #
      #   @return [Time]
      required :created_at, Time

      # @!attribute description
      #   A brief summary of the course content and objectives. Null if no description has
      #   been set.
      #
      #   @return [String, nil]
      required :description, String, nil?: true

      # @!attribute language
      #   The spoken language of the video content, used to generate accurate closed
      #   captions. One of: en, es, it, pt, de, fr, pl, ru, nl, ca, tr, sv, uk, no, fi,
      #   sk, el, cs, hr, da, ro, bg.
      #
      #   @return [Symbol, WhopSDK::Models::Languages]
      required :language, enum: -> { WhopSDK::Languages }

      # @!attribute order
      #   The sort position of this course within its parent experience, as a decimal for
      #   flexible ordering.
      #
      #   @return [String]
      required :order, String

      # @!attribute require_completing_lessons_in_order
      #   Whether students must complete each lesson sequentially before advancing to the
      #   next one.
      #
      #   @return [Boolean]
      required :require_completing_lessons_in_order, WhopSDK::Internal::Type::Boolean

      # @!attribute tagline
      #   A short marketing tagline displayed beneath the course title. Null if no tagline
      #   has been set.
      #
      #   @return [String, nil]
      required :tagline, String, nil?: true

      # @!attribute thumbnail
      #   The thumbnail image displayed on course cards and previews. Null if no thumbnail
      #   has been uploaded.
      #
      #   @return [WhopSDK::Models::Course::Thumbnail, nil]
      required :thumbnail, -> { WhopSDK::Course::Thumbnail }, nil?: true

      # @!attribute title
      #   The display name of the course shown to students. Null if no title has been set.
      #
      #   @return [String, nil]
      required :title, String, nil?: true

      # @!attribute updated_at
      #   The datetime the course was last updated.
      #
      #   @return [Time]
      required :updated_at, Time

      # @!attribute visibility
      #   The visibility setting that controls whether this course appears to students.
      #   One of: visible, hidden.
      #
      #   @return [Symbol, WhopSDK::Models::CourseVisibilities]
      required :visibility, enum: -> { WhopSDK::CourseVisibilities }

      # @!method initialize(id:, certificate_after_completion_enabled:, chapters:, cover_image:, created_at:, description:, language:, order:, require_completing_lessons_in_order:, tagline:, thumbnail:, title:, updated_at:, visibility:)
      #   Some parameter documentations has been truncated, see {WhopSDK::Models::Course}
      #   for more details.
      #
      #   A structured learning module containing chapters and lessons, belonging to an
      #   experience.
      #
      #   @param id [String] The unique identifier for the course.
      #
      #   @param certificate_after_completion_enabled [Boolean, nil] Whether students receive a PDF certificate after completing all lessons in this
      #
      #   @param chapters [Array<WhopSDK::Models::Course::Chapter>] An ordered list of all chapters in this course, sorted by their display position
      #
      #   @param cover_image [String, nil] The URL of the course cover image shown on preview cards. Null if no cover image
      #
      #   @param created_at [Time] The datetime the course was created.
      #
      #   @param description [String, nil] A brief summary of the course content and objectives. Null if no description has
      #
      #   @param language [Symbol, WhopSDK::Models::Languages] The spoken language of the video content, used to generate accurate closed capti
      #
      #   @param order [String] The sort position of this course within its parent experience, as a decimal for
      #
      #   @param require_completing_lessons_in_order [Boolean] Whether students must complete each lesson sequentially before advancing to the
      #
      #   @param tagline [String, nil] A short marketing tagline displayed beneath the course title. Null if no tagline
      #
      #   @param thumbnail [WhopSDK::Models::Course::Thumbnail, nil] The thumbnail image displayed on course cards and previews. Null if no thumbnail
      #
      #   @param title [String, nil] The display name of the course shown to students. Null if no title has been set.
      #
      #   @param updated_at [Time] The datetime the course was last updated.
      #
      #   @param visibility [Symbol, WhopSDK::Models::CourseVisibilities] The visibility setting that controls whether this course appears to students. On

      class Chapter < WhopSDK::Internal::Type::BaseModel
        # @!attribute id
        #   The unique identifier for the chapter.
        #
        #   @return [String]
        required :id, String

        # @!attribute lessons
        #   An ordered list of lessons in this chapter, sorted by display position. Hidden
        #   lessons are excluded for non-admin users.
        #
        #   @return [Array<WhopSDK::Models::Course::Chapter::Lesson>]
        required :lessons, -> { WhopSDK::Internal::Type::ArrayOf[WhopSDK::Course::Chapter::Lesson] }

        # @!attribute order
        #   The sort position of this chapter within its parent course, starting from zero.
        #
        #   @return [Integer]
        required :order, Integer

        # @!attribute title
        #   The display name of the chapter shown to students. Maximum 150 characters.
        #
        #   @return [String]
        required :title, String

        # @!method initialize(id:, lessons:, order:, title:)
        #   Some parameter documentations has been truncated, see
        #   {WhopSDK::Models::Course::Chapter} for more details.
        #
        #   A grouping of related lessons within a course, used to organize content into
        #   sections.
        #
        #   @param id [String] The unique identifier for the chapter.
        #
        #   @param lessons [Array<WhopSDK::Models::Course::Chapter::Lesson>] An ordered list of lessons in this chapter, sorted by display position. Hidden l
        #
        #   @param order [Integer] The sort position of this chapter within its parent course, starting from zero.
        #
        #   @param title [String] The display name of the chapter shown to students. Maximum 150 characters.

        class Lesson < WhopSDK::Internal::Type::BaseModel
          # @!attribute id
          #   The unique identifier for the lesson.
          #
          #   @return [String]
          required :id, String

          # @!attribute lesson_type
          #   The content format of this lesson. One of: text, video, pdf, multi, quiz,
          #   knowledge_check.
          #
          #   @return [Symbol, WhopSDK::Models::LessonTypes]
          required :lesson_type, enum: -> { WhopSDK::LessonTypes }

          # @!attribute order
          #   The sort position of this lesson within its parent chapter, starting from zero.
          #
          #   @return [Integer]
          required :order, Integer

          # @!attribute thumbnail
          #   The thumbnail image displayed on lesson cards and previews. Null if no thumbnail
          #   has been uploaded.
          #
          #   @return [WhopSDK::Models::Course::Chapter::Lesson::Thumbnail, nil]
          required :thumbnail, -> { WhopSDK::Course::Chapter::Lesson::Thumbnail }, nil?: true

          # @!attribute title
          #   The display name of the lesson shown to students. Maximum 120 characters.
          #
          #   @return [String]
          required :title, String

          # @!attribute video_asset
          #   The Mux video asset for video-type lessons, used for streaming playback. Null if
          #   this lesson has no hosted video.
          #
          #   @return [WhopSDK::Models::Course::Chapter::Lesson::VideoAsset, nil]
          required :video_asset, -> { WhopSDK::Course::Chapter::Lesson::VideoAsset }, nil?: true

          # @!method initialize(id:, lesson_type:, order:, thumbnail:, title:, video_asset:)
          #   Some parameter documentations has been truncated, see
          #   {WhopSDK::Models::Course::Chapter::Lesson} for more details.
          #
          #   An individual learning unit within a chapter, which can contain text, video,
          #   PDF, or assessment content.
          #
          #   @param id [String] The unique identifier for the lesson.
          #
          #   @param lesson_type [Symbol, WhopSDK::Models::LessonTypes] The content format of this lesson. One of: text, video, pdf, multi, quiz, knowle
          #
          #   @param order [Integer] The sort position of this lesson within its parent chapter, starting from zero.
          #
          #   @param thumbnail [WhopSDK::Models::Course::Chapter::Lesson::Thumbnail, nil] The thumbnail image displayed on lesson cards and previews. Null if no thumbnail
          #
          #   @param title [String] The display name of the lesson shown to students. Maximum 120 characters.
          #
          #   @param video_asset [WhopSDK::Models::Course::Chapter::Lesson::VideoAsset, nil] The Mux video asset for video-type lessons, used for streaming playback. Null if

          # @see WhopSDK::Models::Course::Chapter::Lesson#thumbnail
          class Thumbnail < WhopSDK::Internal::Type::BaseModel
            # @!attribute url
            #   A pre-optimized URL for rendering this attachment on the client. This should be
            #   used for displaying attachments in apps.
            #
            #   @return [String, nil]
            required :url, String, nil?: true

            # @!method initialize(url:)
            #   Some parameter documentations has been truncated, see
            #   {WhopSDK::Models::Course::Chapter::Lesson::Thumbnail} for more details.
            #
            #   The thumbnail image displayed on lesson cards and previews. Null if no thumbnail
            #   has been uploaded.
            #
            #   @param url [String, nil] A pre-optimized URL for rendering this attachment on the client. This should be
          end

          # @see WhopSDK::Models::Course::Chapter::Lesson#video_asset
          class VideoAsset < WhopSDK::Internal::Type::BaseModel
            # @!attribute duration_seconds
            #   The duration of the video in seconds
            #
            #   @return [Integer, nil]
            required :duration_seconds, Integer, nil?: true

            # @!attribute signed_playback_id
            #   The signed playback ID of the Mux asset
            #
            #   @return [String, nil]
            required :signed_playback_id, String, nil?: true

            # @!attribute signed_thumbnail_playback_token
            #   The signed thumbnail playback token of the Mux asset
            #
            #   @return [String, nil]
            required :signed_thumbnail_playback_token, String, nil?: true

            # @!method initialize(duration_seconds:, signed_playback_id:, signed_thumbnail_playback_token:)
            #   The Mux video asset for video-type lessons, used for streaming playback. Null if
            #   this lesson has no hosted video.
            #
            #   @param duration_seconds [Integer, nil] The duration of the video in seconds
            #
            #   @param signed_playback_id [String, nil] The signed playback ID of the Mux asset
            #
            #   @param signed_thumbnail_playback_token [String, nil] The signed thumbnail playback token of the Mux asset
          end
        end
      end

      # @see WhopSDK::Models::Course#thumbnail
      class Thumbnail < WhopSDK::Internal::Type::BaseModel
        # @!attribute id
        #   Represents a unique identifier that is Base64 obfuscated. It is often used to
        #   refetch an object or as key for a cache. The ID type appears in a JSON response
        #   as a String; however, it is not intended to be human-readable. When expected as
        #   an input type, any string (such as `"VXNlci0xMA=="`) or integer (such as `4`)
        #   input value will be accepted as an ID.
        #
        #   @return [String]
        required :id, String

        # @!attribute content_type
        #   The MIME type of the uploaded file (e.g., image/jpeg, video/mp4, audio/mpeg).
        #
        #   @return [String, nil]
        required :content_type, String, nil?: true

        # @!attribute filename
        #   The original filename of the uploaded attachment, including its file extension.
        #
        #   @return [String, nil]
        required :filename, String, nil?: true

        # @!attribute optimized_url
        #   A pre-optimized URL for rendering this attachment on the client. This should be
        #   used for displaying attachments in apps.
        #
        #   @return [String, nil]
        required :optimized_url, String, nil?: true

        # @!attribute source_url
        #   The original source URL of the attachment, such as a direct link to S3. This
        #   should never be displayed on the client and should always be passed through an
        #   Imgproxy transformer.
        #
        #   @return [String, nil]
        required :source_url, String, nil?: true

        # @!method initialize(id:, content_type:, filename:, optimized_url:, source_url:)
        #   Some parameter documentations has been truncated, see
        #   {WhopSDK::Models::Course::Thumbnail} for more details.
        #
        #   The thumbnail image displayed on course cards and previews. Null if no thumbnail
        #   has been uploaded.
        #
        #   @param id [String] Represents a unique identifier that is Base64 obfuscated. It is often used to re
        #
        #   @param content_type [String, nil] The MIME type of the uploaded file (e.g., image/jpeg, video/mp4, audio/mpeg).
        #
        #   @param filename [String, nil] The original filename of the uploaded attachment, including its file extension.
        #
        #   @param optimized_url [String, nil] A pre-optimized URL for rendering this attachment on the client. This should be
        #
        #   @param source_url [String, nil] The original source URL of the attachment, such as a direct link to S3. This sho
      end
    end
  end
end
