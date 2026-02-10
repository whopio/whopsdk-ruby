# frozen_string_literal: true

module WhopSDK
  module Models
    # @see WhopSDK::Resources::CourseLessons#create
    class Lesson < WhopSDK::Internal::Type::BaseModel
      # @!attribute id
      #   The unique identifier for the lesson.
      #
      #   @return [String]
      required :id, String

      # @!attribute assessment_questions
      #   The list of questions for quiz or knowledge check lessons. Empty for
      #   non-assessment lesson types.
      #
      #   @return [Array<WhopSDK::Models::Lesson::AssessmentQuestion>]
      required :assessment_questions,
               -> { WhopSDK::Internal::Type::ArrayOf[WhopSDK::Lesson::AssessmentQuestion] }

      # @!attribute attachments
      #   All supplementary files attached to this lesson returned as a flat array rather
      #   than a paginated connection.
      #
      #   @return [Array<WhopSDK::Models::Lesson::Attachment>]
      required :attachments, -> { WhopSDK::Internal::Type::ArrayOf[WhopSDK::Lesson::Attachment] }

      # @!attribute content
      #   The Markdown content body of the lesson. Null if the lesson has no text content.
      #
      #   @return [String, nil]
      required :content, String, nil?: true

      # @!attribute created_at
      #   The datetime the lesson was created.
      #
      #   @return [Time]
      required :created_at, Time

      # @!attribute days_from_course_start_until_unlock
      #   The number of days after a student starts the course before this lesson becomes
      #   accessible. Null if the lesson is available immediately.
      #
      #   @return [Integer, nil]
      required :days_from_course_start_until_unlock, Integer, nil?: true

      # @!attribute embed_id
      #   The external video identifier for embedded video lessons, such as a YouTube
      #   video ID or Loom share ID. Null if the lesson has no embed.
      #
      #   @return [String, nil]
      required :embed_id, String, nil?: true

      # @!attribute embed_type
      #   The type of embed for a lesson
      #
      #   @return [Symbol, WhopSDK::Models::EmbedType, nil]
      required :embed_type, enum: -> { WhopSDK::EmbedType }, nil?: true

      # @!attribute lesson_type
      #   The content format of this lesson. One of: text, video, pdf, multi, quiz,
      #   knowledge_check.
      #
      #   @return [Symbol, WhopSDK::Models::LessonTypes]
      required :lesson_type, enum: -> { WhopSDK::LessonTypes }

      # @!attribute main_pdf
      #   The primary PDF document for PDF-type lessons. Null if this lesson is not a PDF
      #   lesson or no PDF has been uploaded.
      #
      #   @return [WhopSDK::Models::Lesson::MainPdf, nil]
      required :main_pdf, -> { WhopSDK::Lesson::MainPdf }, nil?: true

      # @!attribute order
      #   The sort position of this lesson within its parent chapter, starting from zero.
      #
      #   @return [Integer]
      required :order, Integer

      # @!attribute thumbnail
      #   The thumbnail image displayed on lesson cards and previews. Null if no thumbnail
      #   has been uploaded.
      #
      #   @return [WhopSDK::Models::Lesson::Thumbnail, nil]
      required :thumbnail, -> { WhopSDK::Lesson::Thumbnail }, nil?: true

      # @!attribute title
      #   The display name of the lesson shown to students. Maximum 120 characters.
      #
      #   @return [String]
      required :title, String

      # @!attribute video_asset
      #   The Mux video asset for video-type lessons, used for streaming playback. Null if
      #   this lesson has no hosted video.
      #
      #   @return [WhopSDK::Models::Lesson::VideoAsset, nil]
      required :video_asset, -> { WhopSDK::Lesson::VideoAsset }, nil?: true

      # @!attribute visibility
      #   The visibility setting that controls whether this lesson appears to students.
      #   One of: visible, hidden.
      #
      #   @return [Symbol, WhopSDK::Models::LessonVisibilities]
      required :visibility, enum: -> { WhopSDK::LessonVisibilities }

      # @!method initialize(id:, assessment_questions:, attachments:, content:, created_at:, days_from_course_start_until_unlock:, embed_id:, embed_type:, lesson_type:, main_pdf:, order:, thumbnail:, title:, video_asset:, visibility:)
      #   Some parameter documentations has been truncated, see {WhopSDK::Models::Lesson}
      #   for more details.
      #
      #   An individual learning unit within a chapter, which can contain text, video,
      #   PDF, or assessment content.
      #
      #   @param id [String] The unique identifier for the lesson.
      #
      #   @param assessment_questions [Array<WhopSDK::Models::Lesson::AssessmentQuestion>] The list of questions for quiz or knowledge check lessons. Empty for non-assessm
      #
      #   @param attachments [Array<WhopSDK::Models::Lesson::Attachment>] All supplementary files attached to this lesson returned as a flat array rather
      #
      #   @param content [String, nil] The Markdown content body of the lesson. Null if the lesson has no text content.
      #
      #   @param created_at [Time] The datetime the lesson was created.
      #
      #   @param days_from_course_start_until_unlock [Integer, nil] The number of days after a student starts the course before this lesson becomes
      #
      #   @param embed_id [String, nil] The external video identifier for embedded video lessons, such as a YouTube vide
      #
      #   @param embed_type [Symbol, WhopSDK::Models::EmbedType, nil] The type of embed for a lesson
      #
      #   @param lesson_type [Symbol, WhopSDK::Models::LessonTypes] The content format of this lesson. One of: text, video, pdf, multi, quiz, knowle
      #
      #   @param main_pdf [WhopSDK::Models::Lesson::MainPdf, nil] The primary PDF document for PDF-type lessons. Null if this lesson is not a PDF
      #
      #   @param order [Integer] The sort position of this lesson within its parent chapter, starting from zero.
      #
      #   @param thumbnail [WhopSDK::Models::Lesson::Thumbnail, nil] The thumbnail image displayed on lesson cards and previews. Null if no thumbnail
      #
      #   @param title [String] The display name of the lesson shown to students. Maximum 120 characters.
      #
      #   @param video_asset [WhopSDK::Models::Lesson::VideoAsset, nil] The Mux video asset for video-type lessons, used for streaming playback. Null if
      #
      #   @param visibility [Symbol, WhopSDK::Models::LessonVisibilities] The visibility setting that controls whether this lesson appears to students. On

      class AssessmentQuestion < WhopSDK::Internal::Type::BaseModel
        # @!attribute id
        #   The unique identifier for the assessment question.
        #
        #   @return [String]
        required :id, String

        # @!attribute correct_answer
        #   The correct answer for the question. Used for short answer questions. Only
        #   visible to admins (users with courses:update permission)
        #
        #   @return [String, nil]
        required :correct_answer, String, nil?: true

        # @!attribute created_at
        #   The datetime the assessment question was created.
        #
        #   @return [Time]
        required :created_at, Time

        # @!attribute image
        #   Optional image attachment for the question
        #
        #   @return [WhopSDK::Models::Lesson::AssessmentQuestion::Image, nil]
        required :image, -> { WhopSDK::Lesson::AssessmentQuestion::Image }, nil?: true

        # @!attribute options
        #   The answer options for multiple choice/select questions
        #
        #   @return [Array<WhopSDK::Models::Lesson::AssessmentQuestion::Option>]
        required :options, -> { WhopSDK::Internal::Type::ArrayOf[WhopSDK::Lesson::AssessmentQuestion::Option] }

        # @!attribute order
        #   The order of the question within its lesson
        #
        #   @return [Integer]
        required :order, Integer

        # @!attribute question_text
        #   The text of the question
        #
        #   @return [String]
        required :question_text, String

        # @!attribute question_type
        #   The type of the question
        #
        #   @return [Symbol, WhopSDK::Models::AssessmentQuestionTypes]
        required :question_type, enum: -> { WhopSDK::AssessmentQuestionTypes }

        # @!method initialize(id:, correct_answer:, created_at:, image:, options:, order:, question_text:, question_type:)
        #   Some parameter documentations has been truncated, see
        #   {WhopSDK::Models::Lesson::AssessmentQuestion} for more details.
        #
        #   An assessment question in a course quiz or knowledge check
        #
        #   @param id [String] The unique identifier for the assessment question.
        #
        #   @param correct_answer [String, nil] The correct answer for the question. Used for short answer questions. Only visib
        #
        #   @param created_at [Time] The datetime the assessment question was created.
        #
        #   @param image [WhopSDK::Models::Lesson::AssessmentQuestion::Image, nil] Optional image attachment for the question
        #
        #   @param options [Array<WhopSDK::Models::Lesson::AssessmentQuestion::Option>] The answer options for multiple choice/select questions
        #
        #   @param order [Integer] The order of the question within its lesson
        #
        #   @param question_text [String] The text of the question
        #
        #   @param question_type [Symbol, WhopSDK::Models::AssessmentQuestionTypes] The type of the question

        # @see WhopSDK::Models::Lesson::AssessmentQuestion#image
        class Image < WhopSDK::Internal::Type::BaseModel
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

          # @!attribute url
          #   A pre-optimized URL for rendering this attachment on the client. This should be
          #   used for displaying attachments in apps.
          #
          #   @return [String, nil]
          required :url, String, nil?: true

          # @!method initialize(id:, content_type:, filename:, url:)
          #   Some parameter documentations has been truncated, see
          #   {WhopSDK::Models::Lesson::AssessmentQuestion::Image} for more details.
          #
          #   Optional image attachment for the question
          #
          #   @param id [String] Represents a unique identifier that is Base64 obfuscated. It is often used to re
          #
          #   @param content_type [String, nil] The MIME type of the uploaded file (e.g., image/jpeg, video/mp4, audio/mpeg).
          #
          #   @param filename [String, nil] The original filename of the uploaded attachment, including its file extension.
          #
          #   @param url [String, nil] A pre-optimized URL for rendering this attachment on the client. This should be
        end

        class Option < WhopSDK::Internal::Type::BaseModel
          # @!attribute id
          #   The unique identifier for the assessment question option.
          #
          #   @return [String]
          required :id, String

          # @!attribute is_correct
          #   Whether this option is a correct answer. Only visible to admins (users with
          #   courses:update permission)
          #
          #   @return [Boolean, nil]
          required :is_correct, WhopSDK::Internal::Type::Boolean, nil?: true

          # @!attribute option_text
          #   The text of the answer option
          #
          #   @return [String]
          required :option_text, String

          # @!attribute order
          #   The order of this option within the question
          #
          #   @return [Integer]
          required :order, Integer

          # @!method initialize(id:, is_correct:, option_text:, order:)
          #   Some parameter documentations has been truncated, see
          #   {WhopSDK::Models::Lesson::AssessmentQuestion::Option} for more details.
          #
          #   An answer option for a multiple choice or multiple select assessment question
          #
          #   @param id [String] The unique identifier for the assessment question option.
          #
          #   @param is_correct [Boolean, nil] Whether this option is a correct answer. Only visible to admins (users with cour
          #
          #   @param option_text [String] The text of the answer option
          #
          #   @param order [Integer] The order of this option within the question
        end
      end

      class Attachment < WhopSDK::Internal::Type::BaseModel
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

        # @!attribute url
        #   A pre-optimized URL for rendering this attachment on the client. This should be
        #   used for displaying attachments in apps.
        #
        #   @return [String, nil]
        required :url, String, nil?: true

        # @!method initialize(id:, content_type:, filename:, url:)
        #   Some parameter documentations has been truncated, see
        #   {WhopSDK::Models::Lesson::Attachment} for more details.
        #
        #   Represents an image attachment
        #
        #   @param id [String] Represents a unique identifier that is Base64 obfuscated. It is often used to re
        #
        #   @param content_type [String, nil] The MIME type of the uploaded file (e.g., image/jpeg, video/mp4, audio/mpeg).
        #
        #   @param filename [String, nil] The original filename of the uploaded attachment, including its file extension.
        #
        #   @param url [String, nil] A pre-optimized URL for rendering this attachment on the client. This should be
      end

      # @see WhopSDK::Models::Lesson#main_pdf
      class MainPdf < WhopSDK::Internal::Type::BaseModel
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

        # @!attribute url
        #   A pre-optimized URL for rendering this attachment on the client. This should be
        #   used for displaying attachments in apps.
        #
        #   @return [String, nil]
        required :url, String, nil?: true

        # @!method initialize(id:, content_type:, filename:, url:)
        #   Some parameter documentations has been truncated, see
        #   {WhopSDK::Models::Lesson::MainPdf} for more details.
        #
        #   The primary PDF document for PDF-type lessons. Null if this lesson is not a PDF
        #   lesson or no PDF has been uploaded.
        #
        #   @param id [String] Represents a unique identifier that is Base64 obfuscated. It is often used to re
        #
        #   @param content_type [String, nil] The MIME type of the uploaded file (e.g., image/jpeg, video/mp4, audio/mpeg).
        #
        #   @param filename [String, nil] The original filename of the uploaded attachment, including its file extension.
        #
        #   @param url [String, nil] A pre-optimized URL for rendering this attachment on the client. This should be
      end

      # @see WhopSDK::Models::Lesson#thumbnail
      class Thumbnail < WhopSDK::Internal::Type::BaseModel
        # @!attribute url
        #   A pre-optimized URL for rendering this attachment on the client. This should be
        #   used for displaying attachments in apps.
        #
        #   @return [String, nil]
        required :url, String, nil?: true

        # @!method initialize(url:)
        #   Some parameter documentations has been truncated, see
        #   {WhopSDK::Models::Lesson::Thumbnail} for more details.
        #
        #   The thumbnail image displayed on lesson cards and previews. Null if no thumbnail
        #   has been uploaded.
        #
        #   @param url [String, nil] A pre-optimized URL for rendering this attachment on the client. This should be
      end

      # @see WhopSDK::Models::Lesson#video_asset
      class VideoAsset < WhopSDK::Internal::Type::BaseModel
        # @!attribute id
        #   The unique identifier for the mux asset.
        #
        #   @return [String]
        required :id, String

        # @!attribute asset_id
        #   The Mux-provided ID of the asset
        #
        #   @return [String, nil]
        required :asset_id, String, nil?: true

        # @!attribute audio_only
        #   Whether this asset contains only audio
        #
        #   @return [Boolean]
        required :audio_only, WhopSDK::Internal::Type::Boolean

        # @!attribute created_at
        #   The datetime the mux asset was created.
        #
        #   @return [Time]
        required :created_at, Time

        # @!attribute duration_seconds
        #   The duration of the video in seconds
        #
        #   @return [Integer, nil]
        required :duration_seconds, Integer, nil?: true

        # @!attribute finished_uploading_at
        #   The time at which the video finished uploading
        #
        #   @return [Time, nil]
        required :finished_uploading_at, Time, nil?: true

        # @!attribute playback_id
        #   The public playback ID of the Mux asset
        #
        #   @return [String, nil]
        required :playback_id, String, nil?: true

        # @!attribute signed_playback_id
        #   The signed playback ID of the Mux asset
        #
        #   @return [String, nil]
        required :signed_playback_id, String, nil?: true

        # @!attribute signed_storyboard_playback_token
        #   The signed storyboard playback token of the Mux asset
        #
        #   @return [String, nil]
        required :signed_storyboard_playback_token, String, nil?: true

        # @!attribute signed_thumbnail_playback_token
        #   The signed thumbnail playback token of the Mux asset
        #
        #   @return [String, nil]
        required :signed_thumbnail_playback_token, String, nil?: true

        # @!attribute signed_video_playback_token
        #   The signed video playback token of the Mux asset
        #
        #   @return [String, nil]
        required :signed_video_playback_token, String, nil?: true

        # @!attribute status
        #   The status of the Mux asset
        #
        #   @return [Symbol, WhopSDK::Models::Lesson::VideoAsset::Status]
        required :status, enum: -> { WhopSDK::Lesson::VideoAsset::Status }

        # @!attribute updated_at
        #   The datetime the mux asset was last updated.
        #
        #   @return [Time]
        required :updated_at, Time

        # @!method initialize(id:, asset_id:, audio_only:, created_at:, duration_seconds:, finished_uploading_at:, playback_id:, signed_playback_id:, signed_storyboard_playback_token:, signed_thumbnail_playback_token:, signed_video_playback_token:, status:, updated_at:)
        #   The Mux video asset for video-type lessons, used for streaming playback. Null if
        #   this lesson has no hosted video.
        #
        #   @param id [String] The unique identifier for the mux asset.
        #
        #   @param asset_id [String, nil] The Mux-provided ID of the asset
        #
        #   @param audio_only [Boolean] Whether this asset contains only audio
        #
        #   @param created_at [Time] The datetime the mux asset was created.
        #
        #   @param duration_seconds [Integer, nil] The duration of the video in seconds
        #
        #   @param finished_uploading_at [Time, nil] The time at which the video finished uploading
        #
        #   @param playback_id [String, nil] The public playback ID of the Mux asset
        #
        #   @param signed_playback_id [String, nil] The signed playback ID of the Mux asset
        #
        #   @param signed_storyboard_playback_token [String, nil] The signed storyboard playback token of the Mux asset
        #
        #   @param signed_thumbnail_playback_token [String, nil] The signed thumbnail playback token of the Mux asset
        #
        #   @param signed_video_playback_token [String, nil] The signed video playback token of the Mux asset
        #
        #   @param status [Symbol, WhopSDK::Models::Lesson::VideoAsset::Status] The status of the Mux asset
        #
        #   @param updated_at [Time] The datetime the mux asset was last updated.

        # The status of the Mux asset
        #
        # @see WhopSDK::Models::Lesson::VideoAsset#status
        module Status
          extend WhopSDK::Internal::Type::Enum

          UPLOADING = :uploading
          CREATED = :created
          READY = :ready

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
