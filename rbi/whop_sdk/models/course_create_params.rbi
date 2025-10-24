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

      # The tagline of the course
      sig { returns(T.nilable(String)) }
      attr_accessor :tagline

      # The thumbnail for the course in png, jpeg, or gif format
      sig { returns(T.nilable(WhopSDK::CourseCreateParams::Thumbnail)) }
      attr_reader :thumbnail

      sig do
        params(
          thumbnail: T.nilable(WhopSDK::CourseCreateParams::Thumbnail::OrHash)
        ).void
      end
      attr_writer :thumbnail

      sig do
        params(
          experience_id: String,
          title: String,
          tagline: T.nilable(String),
          thumbnail: T.nilable(WhopSDK::CourseCreateParams::Thumbnail::OrHash),
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # The ID of the experience to create the course in
        experience_id:,
        # The title of the course
        title:,
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
            tagline: T.nilable(String),
            thumbnail: T.nilable(WhopSDK::CourseCreateParams::Thumbnail),
            request_options: WhopSDK::RequestOptions
          }
        )
      end
      def to_hash
      end

      class Thumbnail < WhopSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              WhopSDK::CourseCreateParams::Thumbnail,
              WhopSDK::Internal::AnyHash
            )
          end

        # The ID of an existing attachment object. Use this when updating a resource and
        # keeping a subset of the attachments. Don't use this unless you know what you're
        # doing.
        sig { returns(T.nilable(String)) }
        attr_accessor :id

        # This ID should be used the first time you upload an attachment. It is the ID of
        # the direct upload that was created when uploading the file to S3 via the
        # mediaDirectUpload mutation.
        sig { returns(T.nilable(String)) }
        attr_accessor :direct_upload_id

        # The thumbnail for the course in png, jpeg, or gif format
        sig do
          params(
            id: T.nilable(String),
            direct_upload_id: T.nilable(String)
          ).returns(T.attached_class)
        end
        def self.new(
          # The ID of an existing attachment object. Use this when updating a resource and
          # keeping a subset of the attachments. Don't use this unless you know what you're
          # doing.
          id: nil,
          # This ID should be used the first time you upload an attachment. It is the ID of
          # the direct upload that was created when uploading the file to S3 via the
          # mediaDirectUpload mutation.
          direct_upload_id: nil
        )
        end

        sig do
          override.returns(
            { id: T.nilable(String), direct_upload_id: T.nilable(String) }
          )
        end
        def to_hash
        end
      end
    end
  end
end
