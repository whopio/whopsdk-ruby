# typed: strong

module WhopSDK
  module Models
    class Lesson < WhopSDK::Internal::Type::BaseModel
      OrHash =
        T.type_alias { T.any(WhopSDK::Lesson, WhopSDK::Internal::AnyHash) }

      # The unique identifier for the lesson.
      sig { returns(String) }
      attr_accessor :id

      # Assessment questions for quiz/knowledge check lessons
      sig { returns(T::Array[WhopSDK::Lesson::AssessmentQuestion]) }
      attr_accessor :assessment_questions

      # The attached files in this lesson as a flat array
      sig { returns(T::Array[WhopSDK::Lesson::Attachment]) }
      attr_accessor :attachments

      # The content of the lesson
      sig { returns(T.nilable(String)) }
      attr_accessor :content

      # The datetime the lesson was created.
      sig { returns(Time) }
      attr_accessor :created_at

      # Number of days from course start until the lesson is unlocked
      sig { returns(T.nilable(Integer)) }
      attr_accessor :days_from_course_start_until_unlock

      # ID for the embed (YouTube video ID or Loom share ID)
      sig { returns(T.nilable(String)) }
      attr_accessor :embed_id

      # The type of embed for a lesson
      sig { returns(T.nilable(WhopSDK::EmbedType::TaggedSymbol)) }
      attr_accessor :embed_type

      # The type of the lesson (text, video, pdf, multi, quiz, knowledge_check)
      sig { returns(WhopSDK::LessonTypes::TaggedSymbol) }
      attr_accessor :lesson_type

      # The main PDF file for this lesson
      sig { returns(T.nilable(WhopSDK::Lesson::MainPdf)) }
      attr_reader :main_pdf

      sig { params(main_pdf: T.nilable(WhopSDK::Lesson::MainPdf::OrHash)).void }
      attr_writer :main_pdf

      # The order of the lesson within its chapter
      sig { returns(Integer) }
      attr_accessor :order

      # The thumbnail for the lesson
      sig { returns(T.nilable(WhopSDK::Lesson::Thumbnail)) }
      attr_reader :thumbnail

      sig do
        params(thumbnail: T.nilable(WhopSDK::Lesson::Thumbnail::OrHash)).void
      end
      attr_writer :thumbnail

      # The title of the lesson
      sig { returns(String) }
      attr_accessor :title

      # The associated Mux asset for video lessons
      sig { returns(T.nilable(WhopSDK::Lesson::VideoAsset)) }
      attr_reader :video_asset

      sig do
        params(video_asset: T.nilable(WhopSDK::Lesson::VideoAsset::OrHash)).void
      end
      attr_writer :video_asset

      # The visibility of the lesson. Determines how / whether this lesson is visible to
      # users.
      sig { returns(WhopSDK::LessonVisibilities::TaggedSymbol) }
      attr_accessor :visibility

      # A lesson from the courses app
      sig do
        params(
          id: String,
          assessment_questions:
            T::Array[WhopSDK::Lesson::AssessmentQuestion::OrHash],
          attachments: T::Array[WhopSDK::Lesson::Attachment::OrHash],
          content: T.nilable(String),
          created_at: Time,
          days_from_course_start_until_unlock: T.nilable(Integer),
          embed_id: T.nilable(String),
          embed_type: T.nilable(WhopSDK::EmbedType::OrSymbol),
          lesson_type: WhopSDK::LessonTypes::OrSymbol,
          main_pdf: T.nilable(WhopSDK::Lesson::MainPdf::OrHash),
          order: Integer,
          thumbnail: T.nilable(WhopSDK::Lesson::Thumbnail::OrHash),
          title: String,
          video_asset: T.nilable(WhopSDK::Lesson::VideoAsset::OrHash),
          visibility: WhopSDK::LessonVisibilities::OrSymbol
        ).returns(T.attached_class)
      end
      def self.new(
        # The unique identifier for the lesson.
        id:,
        # Assessment questions for quiz/knowledge check lessons
        assessment_questions:,
        # The attached files in this lesson as a flat array
        attachments:,
        # The content of the lesson
        content:,
        # The datetime the lesson was created.
        created_at:,
        # Number of days from course start until the lesson is unlocked
        days_from_course_start_until_unlock:,
        # ID for the embed (YouTube video ID or Loom share ID)
        embed_id:,
        # The type of embed for a lesson
        embed_type:,
        # The type of the lesson (text, video, pdf, multi, quiz, knowledge_check)
        lesson_type:,
        # The main PDF file for this lesson
        main_pdf:,
        # The order of the lesson within its chapter
        order:,
        # The thumbnail for the lesson
        thumbnail:,
        # The title of the lesson
        title:,
        # The associated Mux asset for video lessons
        video_asset:,
        # The visibility of the lesson. Determines how / whether this lesson is visible to
        # users.
        visibility:
      )
      end

      sig do
        override.returns(
          {
            id: String,
            assessment_questions: T::Array[WhopSDK::Lesson::AssessmentQuestion],
            attachments: T::Array[WhopSDK::Lesson::Attachment],
            content: T.nilable(String),
            created_at: Time,
            days_from_course_start_until_unlock: T.nilable(Integer),
            embed_id: T.nilable(String),
            embed_type: T.nilable(WhopSDK::EmbedType::TaggedSymbol),
            lesson_type: WhopSDK::LessonTypes::TaggedSymbol,
            main_pdf: T.nilable(WhopSDK::Lesson::MainPdf),
            order: Integer,
            thumbnail: T.nilable(WhopSDK::Lesson::Thumbnail),
            title: String,
            video_asset: T.nilable(WhopSDK::Lesson::VideoAsset),
            visibility: WhopSDK::LessonVisibilities::TaggedSymbol
          }
        )
      end
      def to_hash
      end

      class AssessmentQuestion < WhopSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              WhopSDK::Lesson::AssessmentQuestion,
              WhopSDK::Internal::AnyHash
            )
          end

        # The unique identifier for the assessment question.
        sig { returns(String) }
        attr_accessor :id

        # The correct answer for the question. Used for short answer questions. Only
        # visible to admins (users with courses:update permission)
        sig { returns(T.nilable(String)) }
        attr_accessor :correct_answer

        # The datetime the assessment question was created.
        sig { returns(Time) }
        attr_accessor :created_at

        # Optional image attachment for the question
        sig { returns(T.nilable(WhopSDK::Lesson::AssessmentQuestion::Image)) }
        attr_reader :image

        sig do
          params(
            image: T.nilable(WhopSDK::Lesson::AssessmentQuestion::Image::OrHash)
          ).void
        end
        attr_writer :image

        # The answer options for multiple choice/select questions
        sig { returns(T::Array[WhopSDK::Lesson::AssessmentQuestion::Option]) }
        attr_accessor :options

        # The order of the question within its lesson
        sig { returns(Integer) }
        attr_accessor :order

        # The text of the question
        sig { returns(String) }
        attr_accessor :question_text

        # The type of the question
        sig { returns(WhopSDK::AssessmentQuestionTypes::TaggedSymbol) }
        attr_accessor :question_type

        # An assessment question in a course quiz or knowledge check
        sig do
          params(
            id: String,
            correct_answer: T.nilable(String),
            created_at: Time,
            image:
              T.nilable(WhopSDK::Lesson::AssessmentQuestion::Image::OrHash),
            options:
              T::Array[WhopSDK::Lesson::AssessmentQuestion::Option::OrHash],
            order: Integer,
            question_text: String,
            question_type: WhopSDK::AssessmentQuestionTypes::OrSymbol
          ).returns(T.attached_class)
        end
        def self.new(
          # The unique identifier for the assessment question.
          id:,
          # The correct answer for the question. Used for short answer questions. Only
          # visible to admins (users with courses:update permission)
          correct_answer:,
          # The datetime the assessment question was created.
          created_at:,
          # Optional image attachment for the question
          image:,
          # The answer options for multiple choice/select questions
          options:,
          # The order of the question within its lesson
          order:,
          # The text of the question
          question_text:,
          # The type of the question
          question_type:
        )
        end

        sig do
          override.returns(
            {
              id: String,
              correct_answer: T.nilable(String),
              created_at: Time,
              image: T.nilable(WhopSDK::Lesson::AssessmentQuestion::Image),
              options: T::Array[WhopSDK::Lesson::AssessmentQuestion::Option],
              order: Integer,
              question_text: String,
              question_type: WhopSDK::AssessmentQuestionTypes::TaggedSymbol
            }
          )
        end
        def to_hash
        end

        class Image < WhopSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                WhopSDK::Lesson::AssessmentQuestion::Image,
                WhopSDK::Internal::AnyHash
              )
            end

          # The unique identifier of the attachment.
          sig { returns(String) }
          attr_accessor :id

          # The MIME type of the uploaded file (e.g., image/jpeg, video/mp4, audio/mpeg).
          sig { returns(T.nilable(String)) }
          attr_accessor :content_type

          # The original filename of the uploaded attachment, including its file extension.
          sig { returns(T.nilable(String)) }
          attr_accessor :filename

          # A pre-optimized URL for rendering this attachment on the client. This should be
          # used for displaying attachments in apps.
          sig { returns(T.nilable(String)) }
          attr_accessor :url

          # Optional image attachment for the question
          sig do
            params(
              id: String,
              content_type: T.nilable(String),
              filename: T.nilable(String),
              url: T.nilable(String)
            ).returns(T.attached_class)
          end
          def self.new(
            # The unique identifier of the attachment.
            id:,
            # The MIME type of the uploaded file (e.g., image/jpeg, video/mp4, audio/mpeg).
            content_type:,
            # The original filename of the uploaded attachment, including its file extension.
            filename:,
            # A pre-optimized URL for rendering this attachment on the client. This should be
            # used for displaying attachments in apps.
            url:
          )
          end

          sig do
            override.returns(
              {
                id: String,
                content_type: T.nilable(String),
                filename: T.nilable(String),
                url: T.nilable(String)
              }
            )
          end
          def to_hash
          end
        end

        class Option < WhopSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                WhopSDK::Lesson::AssessmentQuestion::Option,
                WhopSDK::Internal::AnyHash
              )
            end

          # The unique identifier for the assessment question option.
          sig { returns(String) }
          attr_accessor :id

          # Whether this option is a correct answer. Only visible to admins (users with
          # courses:update permission)
          sig { returns(T.nilable(T::Boolean)) }
          attr_accessor :is_correct

          # The text of the answer option
          sig { returns(String) }
          attr_accessor :option_text

          # The order of this option within the question
          sig { returns(Integer) }
          attr_accessor :order

          # An answer option for a multiple choice or multiple select assessment question
          sig do
            params(
              id: String,
              is_correct: T.nilable(T::Boolean),
              option_text: String,
              order: Integer
            ).returns(T.attached_class)
          end
          def self.new(
            # The unique identifier for the assessment question option.
            id:,
            # Whether this option is a correct answer. Only visible to admins (users with
            # courses:update permission)
            is_correct:,
            # The text of the answer option
            option_text:,
            # The order of this option within the question
            order:
          )
          end

          sig do
            override.returns(
              {
                id: String,
                is_correct: T.nilable(T::Boolean),
                option_text: String,
                order: Integer
              }
            )
          end
          def to_hash
          end
        end
      end

      class Attachment < WhopSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(WhopSDK::Lesson::Attachment, WhopSDK::Internal::AnyHash)
          end

        # The unique identifier of the attachment.
        sig { returns(String) }
        attr_accessor :id

        # The MIME type of the uploaded file (e.g., image/jpeg, video/mp4, audio/mpeg).
        sig { returns(T.nilable(String)) }
        attr_accessor :content_type

        # The original filename of the uploaded attachment, including its file extension.
        sig { returns(T.nilable(String)) }
        attr_accessor :filename

        # A pre-optimized URL for rendering this attachment on the client. This should be
        # used for displaying attachments in apps.
        sig { returns(T.nilable(String)) }
        attr_accessor :url

        # Represents an image attachment
        sig do
          params(
            id: String,
            content_type: T.nilable(String),
            filename: T.nilable(String),
            url: T.nilable(String)
          ).returns(T.attached_class)
        end
        def self.new(
          # The unique identifier of the attachment.
          id:,
          # The MIME type of the uploaded file (e.g., image/jpeg, video/mp4, audio/mpeg).
          content_type:,
          # The original filename of the uploaded attachment, including its file extension.
          filename:,
          # A pre-optimized URL for rendering this attachment on the client. This should be
          # used for displaying attachments in apps.
          url:
        )
        end

        sig do
          override.returns(
            {
              id: String,
              content_type: T.nilable(String),
              filename: T.nilable(String),
              url: T.nilable(String)
            }
          )
        end
        def to_hash
        end
      end

      class MainPdf < WhopSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(WhopSDK::Lesson::MainPdf, WhopSDK::Internal::AnyHash)
          end

        # The unique identifier of the attachment.
        sig { returns(String) }
        attr_accessor :id

        # The MIME type of the uploaded file (e.g., image/jpeg, video/mp4, audio/mpeg).
        sig { returns(T.nilable(String)) }
        attr_accessor :content_type

        # The original filename of the uploaded attachment, including its file extension.
        sig { returns(T.nilable(String)) }
        attr_accessor :filename

        # A pre-optimized URL for rendering this attachment on the client. This should be
        # used for displaying attachments in apps.
        sig { returns(T.nilable(String)) }
        attr_accessor :url

        # The main PDF file for this lesson
        sig do
          params(
            id: String,
            content_type: T.nilable(String),
            filename: T.nilable(String),
            url: T.nilable(String)
          ).returns(T.attached_class)
        end
        def self.new(
          # The unique identifier of the attachment.
          id:,
          # The MIME type of the uploaded file (e.g., image/jpeg, video/mp4, audio/mpeg).
          content_type:,
          # The original filename of the uploaded attachment, including its file extension.
          filename:,
          # A pre-optimized URL for rendering this attachment on the client. This should be
          # used for displaying attachments in apps.
          url:
        )
        end

        sig do
          override.returns(
            {
              id: String,
              content_type: T.nilable(String),
              filename: T.nilable(String),
              url: T.nilable(String)
            }
          )
        end
        def to_hash
        end
      end

      class Thumbnail < WhopSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(WhopSDK::Lesson::Thumbnail, WhopSDK::Internal::AnyHash)
          end

        # A pre-optimized URL for rendering this attachment on the client. This should be
        # used for displaying attachments in apps.
        sig { returns(T.nilable(String)) }
        attr_accessor :url

        # The thumbnail for the lesson
        sig { params(url: T.nilable(String)).returns(T.attached_class) }
        def self.new(
          # A pre-optimized URL for rendering this attachment on the client. This should be
          # used for displaying attachments in apps.
          url:
        )
        end

        sig { override.returns({ url: T.nilable(String) }) }
        def to_hash
        end
      end

      class VideoAsset < WhopSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(WhopSDK::Lesson::VideoAsset, WhopSDK::Internal::AnyHash)
          end

        # The unique identifier for the mux asset.
        sig { returns(String) }
        attr_accessor :id

        # The Mux-provided ID of the asset
        sig { returns(T.nilable(String)) }
        attr_accessor :asset_id

        # Whether this asset contains only audio
        sig { returns(T::Boolean) }
        attr_accessor :audio_only

        # The datetime the mux asset was created.
        sig { returns(Time) }
        attr_accessor :created_at

        # The duration of the video in seconds
        sig { returns(T.nilable(Integer)) }
        attr_accessor :duration_seconds

        # The time at which the video finished uploading
        sig { returns(T.nilable(Time)) }
        attr_accessor :finished_uploading_at

        # The public playback ID of the Mux asset
        sig { returns(T.nilable(String)) }
        attr_accessor :playback_id

        # The signed playback ID of the Mux asset
        sig { returns(T.nilable(String)) }
        attr_accessor :signed_playback_id

        # The signed storyboard playback token of the Mux asset
        sig { returns(T.nilable(String)) }
        attr_accessor :signed_storyboard_playback_token

        # The signed thumbnail playback token of the Mux asset
        sig { returns(T.nilable(String)) }
        attr_accessor :signed_thumbnail_playback_token

        # The signed video playback token of the Mux asset
        sig { returns(T.nilable(String)) }
        attr_accessor :signed_video_playback_token

        # The status of the Mux asset
        sig { returns(WhopSDK::Lesson::VideoAsset::Status::TaggedSymbol) }
        attr_accessor :status

        # The datetime the mux asset was last updated.
        sig { returns(Time) }
        attr_accessor :updated_at

        # The associated Mux asset for video lessons
        sig do
          params(
            id: String,
            asset_id: T.nilable(String),
            audio_only: T::Boolean,
            created_at: Time,
            duration_seconds: T.nilable(Integer),
            finished_uploading_at: T.nilable(Time),
            playback_id: T.nilable(String),
            signed_playback_id: T.nilable(String),
            signed_storyboard_playback_token: T.nilable(String),
            signed_thumbnail_playback_token: T.nilable(String),
            signed_video_playback_token: T.nilable(String),
            status: WhopSDK::Lesson::VideoAsset::Status::OrSymbol,
            updated_at: Time
          ).returns(T.attached_class)
        end
        def self.new(
          # The unique identifier for the mux asset.
          id:,
          # The Mux-provided ID of the asset
          asset_id:,
          # Whether this asset contains only audio
          audio_only:,
          # The datetime the mux asset was created.
          created_at:,
          # The duration of the video in seconds
          duration_seconds:,
          # The time at which the video finished uploading
          finished_uploading_at:,
          # The public playback ID of the Mux asset
          playback_id:,
          # The signed playback ID of the Mux asset
          signed_playback_id:,
          # The signed storyboard playback token of the Mux asset
          signed_storyboard_playback_token:,
          # The signed thumbnail playback token of the Mux asset
          signed_thumbnail_playback_token:,
          # The signed video playback token of the Mux asset
          signed_video_playback_token:,
          # The status of the Mux asset
          status:,
          # The datetime the mux asset was last updated.
          updated_at:
        )
        end

        sig do
          override.returns(
            {
              id: String,
              asset_id: T.nilable(String),
              audio_only: T::Boolean,
              created_at: Time,
              duration_seconds: T.nilable(Integer),
              finished_uploading_at: T.nilable(Time),
              playback_id: T.nilable(String),
              signed_playback_id: T.nilable(String),
              signed_storyboard_playback_token: T.nilable(String),
              signed_thumbnail_playback_token: T.nilable(String),
              signed_video_playback_token: T.nilable(String),
              status: WhopSDK::Lesson::VideoAsset::Status::TaggedSymbol,
              updated_at: Time
            }
          )
        end
        def to_hash
        end

        # The status of the Mux asset
        module Status
          extend WhopSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias { T.all(Symbol, WhopSDK::Lesson::VideoAsset::Status) }
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          UPLOADING =
            T.let(:uploading, WhopSDK::Lesson::VideoAsset::Status::TaggedSymbol)
          CREATED =
            T.let(:created, WhopSDK::Lesson::VideoAsset::Status::TaggedSymbol)
          READY =
            T.let(:ready, WhopSDK::Lesson::VideoAsset::Status::TaggedSymbol)

          sig do
            override.returns(
              T::Array[WhopSDK::Lesson::VideoAsset::Status::TaggedSymbol]
            )
          end
          def self.values
          end
        end
      end
    end
  end
end
