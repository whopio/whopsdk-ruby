# frozen_string_literal: true

module WhopSDK
  module Models
    # @see WhopSDK::Resources::Courses#list
    class CourseListResponse < WhopSDK::Internal::Type::BaseModel
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

      # @!attribute chapters_count
      #   The total number of chapters in this course, including chapters whose lessons
      #   are all hidden from the current user.
      #
      #   @return [Integer]
      required :chapters_count, Integer

      # @!attribute completed_lessons_count
      #   The number of lessons in this course that the current user has marked as
      #   completed. Zero when the request is not made on behalf of a user.
      #
      #   @return [Integer]
      required :completed_lessons_count, Integer

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

      # @!attribute latest_lesson_created_at
      #   The creation timestamp of the most recently added lesson visible to the current
      #   user. Null if the course has no lessons.
      #
      #   @return [Time, nil]
      required :latest_lesson_created_at, Time, nil?: true

      # @!attribute lesson_unlock_days
      #   The distinct drip schedules, in days after the course start, of lessons visible
      #   to the current user. Combine with startedAt to work out which have unlocked.
      #   Empty when the user has not started the course or no lesson is on a schedule.
      #
      #   @return [Array<Integer>]
      required :lesson_unlock_days, WhopSDK::Internal::Type::ArrayOf[Integer]

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

      # @!attribute resume_lesson
      #   The lesson the current user should continue from: their first incomplete lesson,
      #   or the first lesson when they have finished the course, have not started it, or
      #   can edit it. Null if the course has no lessons.
      #
      #   @return [WhopSDK::Models::CourseListResponse::ResumeLesson, nil]
      required :resume_lesson, -> { WhopSDK::Models::CourseListResponse::ResumeLesson }, nil?: true

      # @!attribute started_at
      #   The earliest time the current user is known to have started this course. Null if
      #   they have not started it. Drip unlock schedules are measured from this point.
      #
      #   @return [Time, nil]
      required :started_at, Time, nil?: true

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
      #   @return [WhopSDK::Models::CourseListResponse::Thumbnail, nil]
      required :thumbnail, -> { WhopSDK::Models::CourseListResponse::Thumbnail }, nil?: true

      # @!attribute title
      #   The display name of the course shown to students. Null if no title has been set.
      #
      #   @return [String, nil]
      required :title, String, nil?: true

      # @!attribute total_duration_seconds
      #   The combined duration in seconds of every hosted video across the lessons
      #   visible to the current user.
      #
      #   @return [Integer]
      required :total_duration_seconds, Integer

      # @!attribute total_lessons_count
      #   The number of lessons in this course visible to the current user.
      #
      #   @return [Integer]
      required :total_lessons_count, Integer

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

      # @!method initialize(id:, certificate_after_completion_enabled:, chapters_count:, completed_lessons_count:, cover_image:, created_at:, description:, language:, latest_lesson_created_at:, lesson_unlock_days:, order:, require_completing_lessons_in_order:, resume_lesson:, started_at:, tagline:, thumbnail:, title:, total_duration_seconds:, total_lessons_count:, updated_at:, visibility:)
      #   Some parameter documentations has been truncated, see
      #   {WhopSDK::Models::CourseListResponse} for more details.
      #
      #   A structured learning module containing chapters and lessons, belonging to an
      #   experience.
      #
      #   @param id [String] The unique identifier for the course.
      #
      #   @param certificate_after_completion_enabled [Boolean, nil] Whether students receive a PDF certificate after completing all lessons in this
      #
      #   @param chapters_count [Integer] The total number of chapters in this course, including chapters whose lessons ar
      #
      #   @param completed_lessons_count [Integer] The number of lessons in this course that the current user has marked as complet
      #
      #   @param cover_image [String, nil] The URL of the course cover image shown on preview cards. Null if no cover image
      #
      #   @param created_at [Time] The datetime the course was created.
      #
      #   @param description [String, nil] A brief summary of the course content and objectives. Null if no description has
      #
      #   @param language [Symbol, WhopSDK::Models::Languages] The spoken language of the video content, used to generate accurate closed capti
      #
      #   @param latest_lesson_created_at [Time, nil] The creation timestamp of the most recently added lesson visible to the current
      #
      #   @param lesson_unlock_days [Array<Integer>] The distinct drip schedules, in days after the course start, of lessons visible
      #
      #   @param order [String] The sort position of this course within its parent experience, as a decimal for
      #
      #   @param require_completing_lessons_in_order [Boolean] Whether students must complete each lesson sequentially before advancing to the
      #
      #   @param resume_lesson [WhopSDK::Models::CourseListResponse::ResumeLesson, nil] The lesson the current user should continue from: their first incomplete lesson,
      #
      #   @param started_at [Time, nil] The earliest time the current user is known to have started this course. Null if
      #
      #   @param tagline [String, nil] A short marketing tagline displayed beneath the course title. Null if no tagline
      #
      #   @param thumbnail [WhopSDK::Models::CourseListResponse::Thumbnail, nil] The thumbnail image displayed on course cards and previews. Null if no thumbnail
      #
      #   @param title [String, nil] The display name of the course shown to students. Null if no title has been set.
      #
      #   @param total_duration_seconds [Integer] The combined duration in seconds of every hosted video across the lessons visibl
      #
      #   @param total_lessons_count [Integer] The number of lessons in this course visible to the current user.
      #
      #   @param updated_at [Time] The datetime the course was last updated.
      #
      #   @param visibility [Symbol, WhopSDK::Models::CourseVisibilities] The visibility setting that controls whether this course appears to students. On

      # @see WhopSDK::Models::CourseListResponse#resume_lesson
      class ResumeLesson < WhopSDK::Internal::Type::BaseModel
        # @!attribute id
        #   The unique identifier for the lesson.
        #
        #   @return [String]
        required :id, String

        # @!method initialize(id:)
        #   The lesson the current user should continue from: their first incomplete lesson,
        #   or the first lesson when they have finished the course, have not started it, or
        #   can edit it. Null if the course has no lessons.
        #
        #   @param id [String] The unique identifier for the lesson.
      end

      # @see WhopSDK::Models::CourseListResponse#thumbnail
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
        #   Uploaded file MIME type, such as image/jpeg, video/mp4, or audio/mpeg.
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
        #   {WhopSDK::Models::CourseListResponse::Thumbnail} for more details.
        #
        #   The thumbnail image displayed on course cards and previews. Null if no thumbnail
        #   has been uploaded.
        #
        #   @param id [String] Represents a unique identifier that is Base64 obfuscated. It is often used to re
        #
        #   @param content_type [String, nil] Uploaded file MIME type, such as image/jpeg, video/mp4, or audio/mpeg.
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
