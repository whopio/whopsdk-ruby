# typed: strong

module WhopSDK
  module Models
    class CourseListResponse < WhopSDK::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(WhopSDK::Models::CourseListResponse, WhopSDK::Internal::AnyHash)
        end

      # The unique identifier for the course.
      sig { returns(String) }
      attr_accessor :id

      # Whether students receive a PDF certificate after completing all lessons in this
      # course. Null if the setting has not been configured.
      sig { returns(T.nilable(T::Boolean)) }
      attr_accessor :certificate_after_completion_enabled

      # The URL of the course cover image shown on preview cards. Null if no cover image
      # has been uploaded.
      sig { returns(T.nilable(String)) }
      attr_accessor :cover_image

      # The datetime the course was created.
      sig { returns(Time) }
      attr_accessor :created_at

      # A brief summary of the course content and objectives. Null if no description has
      # been set.
      sig { returns(T.nilable(String)) }
      attr_accessor :description

      # The spoken language of the video content, used to generate accurate closed
      # captions. One of: en, es, it, pt, de, fr, pl, ru, nl, ca, tr, sv, uk, no, fi,
      # sk, el, cs, hr, da, ro, bg.
      sig { returns(WhopSDK::Languages::TaggedSymbol) }
      attr_accessor :language

      # The sort position of this course within its parent experience, as a decimal for
      # flexible ordering.
      sig { returns(String) }
      attr_accessor :order

      # Whether students must complete each lesson sequentially before advancing to the
      # next one.
      sig { returns(T::Boolean) }
      attr_accessor :require_completing_lessons_in_order

      # A short marketing tagline displayed beneath the course title. Null if no tagline
      # has been set.
      sig { returns(T.nilable(String)) }
      attr_accessor :tagline

      # The thumbnail image displayed on course cards and previews. Null if no thumbnail
      # has been uploaded.
      sig { returns(T.nilable(WhopSDK::Models::CourseListResponse::Thumbnail)) }
      attr_reader :thumbnail

      sig do
        params(
          thumbnail:
            T.nilable(WhopSDK::Models::CourseListResponse::Thumbnail::OrHash)
        ).void
      end
      attr_writer :thumbnail

      # The display name of the course shown to students. Null if no title has been set.
      sig { returns(T.nilable(String)) }
      attr_accessor :title

      # The datetime the course was last updated.
      sig { returns(Time) }
      attr_accessor :updated_at

      # The visibility setting that controls whether this course appears to students.
      # One of: visible, hidden.
      sig { returns(WhopSDK::CourseVisibilities::TaggedSymbol) }
      attr_accessor :visibility

      # A structured learning module containing chapters and lessons, belonging to an
      # experience.
      sig do
        params(
          id: String,
          certificate_after_completion_enabled: T.nilable(T::Boolean),
          cover_image: T.nilable(String),
          created_at: Time,
          description: T.nilable(String),
          language: WhopSDK::Languages::OrSymbol,
          order: String,
          require_completing_lessons_in_order: T::Boolean,
          tagline: T.nilable(String),
          thumbnail:
            T.nilable(WhopSDK::Models::CourseListResponse::Thumbnail::OrHash),
          title: T.nilable(String),
          updated_at: Time,
          visibility: WhopSDK::CourseVisibilities::OrSymbol
        ).returns(T.attached_class)
      end
      def self.new(
        # The unique identifier for the course.
        id:,
        # Whether students receive a PDF certificate after completing all lessons in this
        # course. Null if the setting has not been configured.
        certificate_after_completion_enabled:,
        # The URL of the course cover image shown on preview cards. Null if no cover image
        # has been uploaded.
        cover_image:,
        # The datetime the course was created.
        created_at:,
        # A brief summary of the course content and objectives. Null if no description has
        # been set.
        description:,
        # The spoken language of the video content, used to generate accurate closed
        # captions. One of: en, es, it, pt, de, fr, pl, ru, nl, ca, tr, sv, uk, no, fi,
        # sk, el, cs, hr, da, ro, bg.
        language:,
        # The sort position of this course within its parent experience, as a decimal for
        # flexible ordering.
        order:,
        # Whether students must complete each lesson sequentially before advancing to the
        # next one.
        require_completing_lessons_in_order:,
        # A short marketing tagline displayed beneath the course title. Null if no tagline
        # has been set.
        tagline:,
        # The thumbnail image displayed on course cards and previews. Null if no thumbnail
        # has been uploaded.
        thumbnail:,
        # The display name of the course shown to students. Null if no title has been set.
        title:,
        # The datetime the course was last updated.
        updated_at:,
        # The visibility setting that controls whether this course appears to students.
        # One of: visible, hidden.
        visibility:
      )
      end

      sig do
        override.returns(
          {
            id: String,
            certificate_after_completion_enabled: T.nilable(T::Boolean),
            cover_image: T.nilable(String),
            created_at: Time,
            description: T.nilable(String),
            language: WhopSDK::Languages::TaggedSymbol,
            order: String,
            require_completing_lessons_in_order: T::Boolean,
            tagline: T.nilable(String),
            thumbnail:
              T.nilable(WhopSDK::Models::CourseListResponse::Thumbnail),
            title: T.nilable(String),
            updated_at: Time,
            visibility: WhopSDK::CourseVisibilities::TaggedSymbol
          }
        )
      end
      def to_hash
      end

      class Thumbnail < WhopSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              WhopSDK::Models::CourseListResponse::Thumbnail,
              WhopSDK::Internal::AnyHash
            )
          end

        # Represents a unique identifier that is Base64 obfuscated. It is often used to
        # refetch an object or as key for a cache. The ID type appears in a JSON response
        # as a String; however, it is not intended to be human-readable. When expected as
        # an input type, any string (such as `"VXNlci0xMA=="`) or integer (such as `4`)
        # input value will be accepted as an ID.
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
        attr_accessor :optimized_url

        # The original source URL of the attachment, such as a direct link to S3. This
        # should never be displayed on the client and should always be passed through an
        # Imgproxy transformer.
        sig { returns(T.nilable(String)) }
        attr_accessor :source_url

        # The thumbnail image displayed on course cards and previews. Null if no thumbnail
        # has been uploaded.
        sig do
          params(
            id: String,
            content_type: T.nilable(String),
            filename: T.nilable(String),
            optimized_url: T.nilable(String),
            source_url: T.nilable(String)
          ).returns(T.attached_class)
        end
        def self.new(
          # Represents a unique identifier that is Base64 obfuscated. It is often used to
          # refetch an object or as key for a cache. The ID type appears in a JSON response
          # as a String; however, it is not intended to be human-readable. When expected as
          # an input type, any string (such as `"VXNlci0xMA=="`) or integer (such as `4`)
          # input value will be accepted as an ID.
          id:,
          # The MIME type of the uploaded file (e.g., image/jpeg, video/mp4, audio/mpeg).
          content_type:,
          # The original filename of the uploaded attachment, including its file extension.
          filename:,
          # A pre-optimized URL for rendering this attachment on the client. This should be
          # used for displaying attachments in apps.
          optimized_url:,
          # The original source URL of the attachment, such as a direct link to S3. This
          # should never be displayed on the client and should always be passed through an
          # Imgproxy transformer.
          source_url:
        )
        end

        sig do
          override.returns(
            {
              id: String,
              content_type: T.nilable(String),
              filename: T.nilable(String),
              optimized_url: T.nilable(String),
              source_url: T.nilable(String)
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
