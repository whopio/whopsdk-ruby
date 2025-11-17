# typed: strong

module WhopSDK
  module Models
    class CourseListResponse < WhopSDK::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(WhopSDK::Models::CourseListResponse, WhopSDK::Internal::AnyHash)
        end

      # The ID of the course. Looks like cors_XXX
      sig { returns(String) }
      attr_accessor :id

      # Whether the course will award its students a PDF certificate after completing
      # all lessons
      sig { returns(T.nilable(T::Boolean)) }
      attr_accessor :certificate_after_completion_enabled

      # The URL of the course's cover image, which is shown in course preview cards
      sig { returns(T.nilable(String)) }
      attr_accessor :cover_image

      # The timestamp of when the course was created
      sig { returns(Time) }
      attr_accessor :created_at

      # A short description of the course
      sig { returns(T.nilable(String)) }
      attr_accessor :description

      # The language spoken in the video content of the course, used to generate closed
      # captions in the right language
      sig { returns(WhopSDK::Languages::TaggedSymbol) }
      attr_accessor :language

      # The order of the course within its experience
      sig { returns(String) }
      attr_accessor :order

      # Whether the course requires students to complete the previous lesson before
      # moving on to the next one
      sig { returns(T::Boolean) }
      attr_accessor :require_completing_lessons_in_order

      # A short tagline for the course. It is displayed under the course title in the UI
      sig { returns(T.nilable(String)) }
      attr_accessor :tagline

      # The thumbnail for the course
      sig { returns(T.nilable(WhopSDK::Models::CourseListResponse::Thumbnail)) }
      attr_reader :thumbnail

      sig do
        params(
          thumbnail:
            T.nilable(WhopSDK::Models::CourseListResponse::Thumbnail::OrHash)
        ).void
      end
      attr_writer :thumbnail

      # The title of the course
      sig { returns(T.nilable(String)) }
      attr_accessor :title

      # The timestamp of when the course was last updated
      sig { returns(Time) }
      attr_accessor :updated_at

      # The visibility of the course. Determines how / whether this course is visible to
      # users.
      sig { returns(WhopSDK::CourseVisibilities::TaggedSymbol) }
      attr_accessor :visibility

      # A course from the courses app
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
        # The ID of the course. Looks like cors_XXX
        id:,
        # Whether the course will award its students a PDF certificate after completing
        # all lessons
        certificate_after_completion_enabled:,
        # The URL of the course's cover image, which is shown in course preview cards
        cover_image:,
        # The timestamp of when the course was created
        created_at:,
        # A short description of the course
        description:,
        # The language spoken in the video content of the course, used to generate closed
        # captions in the right language
        language:,
        # The order of the course within its experience
        order:,
        # Whether the course requires students to complete the previous lesson before
        # moving on to the next one
        require_completing_lessons_in_order:,
        # A short tagline for the course. It is displayed under the course title in the UI
        tagline:,
        # The thumbnail for the course
        thumbnail:,
        # The title of the course
        title:,
        # The timestamp of when the course was last updated
        updated_at:,
        # The visibility of the course. Determines how / whether this course is visible to
        # users.
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

        # The ID of the attachment
        sig { returns(String) }
        attr_accessor :id

        # The attachment's content type (e.g., image/jpg, video/mp4)
        sig { returns(T.nilable(String)) }
        attr_accessor :content_type

        # The name of the file
        sig { returns(T.nilable(String)) }
        attr_accessor :filename

        # This is the URL you use to render optimized attachments on the client. This
        # should be used for apps.
        sig { returns(T.nilable(String)) }
        attr_accessor :optimized_url

        # The original URL of the attachment, such as a direct link to S3. This should
        # never be displayed on the client and always passed to an Imgproxy transformer.
        sig { returns(T.nilable(String)) }
        attr_accessor :source_url

        # The thumbnail for the course
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
          # The ID of the attachment
          id:,
          # The attachment's content type (e.g., image/jpg, video/mp4)
          content_type:,
          # The name of the file
          filename:,
          # This is the URL you use to render optimized attachments on the client. This
          # should be used for apps.
          optimized_url:,
          # The original URL of the attachment, such as a direct link to S3. This should
          # never be displayed on the client and always passed to an Imgproxy transformer.
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
