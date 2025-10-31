# typed: strong

module WhopSDK
  module Models
    class CourseCreateParams < WhopSDK::Internal::Type::BaseModel
      extend WhopSDK::Internal::Type::RequestParameters::Converter
      include WhopSDK::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(WhopSDK::CourseCreateParams, WhopSDK::Internal::AnyHash)
        end

      # The ID of the experience to create the course in
      sig { returns(String) }
      attr_accessor :experience_id

      # The title of the course
      sig { returns(String) }
      attr_accessor :title

      # Whether the course will award its students a PDF certificate after completing
      # all lessons
      sig { returns(T.nilable(T::Boolean)) }
      attr_accessor :certificate_after_completion_enabled

      # The cover image URL of the course
      sig { returns(T.nilable(String)) }
      attr_accessor :cover_image

      # Whether the course requires students to complete the previous lesson before
      # moving on to the next one
      sig { returns(T.nilable(T::Boolean)) }
      attr_accessor :require_completing_lessons_in_order

      # The tagline of the course
      sig { returns(T.nilable(String)) }
      attr_accessor :tagline

      # The thumbnail for the course in png, jpeg, or gif format
      sig do
        returns(
          T.nilable(
            T.any(
              WhopSDK::CourseCreateParams::Thumbnail::DirectUploadID,
              WhopSDK::CourseCreateParams::Thumbnail::ID
            )
          )
        )
      end
      attr_accessor :thumbnail

      sig do
        params(
          experience_id: String,
          title: String,
          certificate_after_completion_enabled: T.nilable(T::Boolean),
          cover_image: T.nilable(String),
          require_completing_lessons_in_order: T.nilable(T::Boolean),
          tagline: T.nilable(String),
          thumbnail:
            T.nilable(
              T.any(
                WhopSDK::CourseCreateParams::Thumbnail::DirectUploadID::OrHash,
                WhopSDK::CourseCreateParams::Thumbnail::ID::OrHash
              )
            ),
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # The ID of the experience to create the course in
        experience_id:,
        # The title of the course
        title:,
        # Whether the course will award its students a PDF certificate after completing
        # all lessons
        certificate_after_completion_enabled: nil,
        # The cover image URL of the course
        cover_image: nil,
        # Whether the course requires students to complete the previous lesson before
        # moving on to the next one
        require_completing_lessons_in_order: nil,
        # The tagline of the course
        tagline: nil,
        # The thumbnail for the course in png, jpeg, or gif format
        thumbnail: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            experience_id: String,
            title: String,
            certificate_after_completion_enabled: T.nilable(T::Boolean),
            cover_image: T.nilable(String),
            require_completing_lessons_in_order: T.nilable(T::Boolean),
            tagline: T.nilable(String),
            thumbnail:
              T.nilable(
                T.any(
                  WhopSDK::CourseCreateParams::Thumbnail::DirectUploadID,
                  WhopSDK::CourseCreateParams::Thumbnail::ID
                )
              ),
            request_options: WhopSDK::RequestOptions
          }
        )
      end
      def to_hash
      end

      # The thumbnail for the course in png, jpeg, or gif format
      module Thumbnail
        extend WhopSDK::Internal::Type::Union

        Variants =
          T.type_alias do
            T.any(
              WhopSDK::CourseCreateParams::Thumbnail::DirectUploadID,
              WhopSDK::CourseCreateParams::Thumbnail::ID
            )
          end

        class DirectUploadID < WhopSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                WhopSDK::CourseCreateParams::Thumbnail::DirectUploadID,
                WhopSDK::Internal::AnyHash
              )
            end

          # This ID should be used the first time you upload an attachment. It is the ID of
          # the direct upload that was created when uploading the file to S3 via the
          # mediaDirectUpload mutation.
          sig { returns(String) }
          attr_accessor :direct_upload_id

          # Input for an attachment
          sig { params(direct_upload_id: String).returns(T.attached_class) }
          def self.new(
            # This ID should be used the first time you upload an attachment. It is the ID of
            # the direct upload that was created when uploading the file to S3 via the
            # mediaDirectUpload mutation.
            direct_upload_id:
          )
          end

          sig { override.returns({ direct_upload_id: String }) }
          def to_hash
          end
        end

        class ID < WhopSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                WhopSDK::CourseCreateParams::Thumbnail::ID,
                WhopSDK::Internal::AnyHash
              )
            end

          # The ID of an existing attachment object. Use this when updating a resource and
          # keeping a subset of the attachments. Don't use this unless you know what you're
          # doing.
          sig { returns(String) }
          attr_accessor :id

          # Input for an attachment
          sig { params(id: String).returns(T.attached_class) }
          def self.new(
            # The ID of an existing attachment object. Use this when updating a resource and
            # keeping a subset of the attachments. Don't use this unless you know what you're
            # doing.
            id:
          )
          end

          sig { override.returns({ id: String }) }
          def to_hash
          end
        end

        sig do
          override.returns(
            T::Array[WhopSDK::CourseCreateParams::Thumbnail::Variants]
          )
        end
        def self.variants
        end
      end
    end
  end
end
