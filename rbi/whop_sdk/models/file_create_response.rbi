# typed: strong

module WhopSDK
  module Models
    class FileCreateResponse < WhopSDK::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(WhopSDK::Models::FileCreateResponse, WhopSDK::Internal::AnyHash)
        end

      # The ID of the file
      sig { returns(String) }
      attr_accessor :id

      # The MIME type of the file (e.g., image/jpeg, video/mp4)
      sig { returns(T.nilable(String)) }
      attr_accessor :content_type

      # The name of the file
      sig { returns(T.nilable(String)) }
      attr_accessor :filename

      # The size of the file in bytes
      sig { returns(T.nilable(String)) }
      attr_accessor :size

      # Headers to include in the upload request (only on create)
      sig { returns(T.nilable(T::Hash[Symbol, T.anything])) }
      attr_accessor :upload_headers

      # The upload status of the file
      sig do
        returns(WhopSDK::Models::FileCreateResponse::UploadStatus::TaggedSymbol)
      end
      attr_accessor :upload_status

      # The presigned URL to upload the file to (only on create)
      sig { returns(T.nilable(String)) }
      attr_accessor :upload_url

      # The URL to access the file
      sig { returns(T.nilable(String)) }
      attr_accessor :url

      # A file that has been uploaded or is pending upload
      sig do
        params(
          id: String,
          content_type: T.nilable(String),
          filename: T.nilable(String),
          size: T.nilable(String),
          upload_headers: T.nilable(T::Hash[Symbol, T.anything]),
          upload_status:
            WhopSDK::Models::FileCreateResponse::UploadStatus::OrSymbol,
          upload_url: T.nilable(String),
          url: T.nilable(String)
        ).returns(T.attached_class)
      end
      def self.new(
        # The ID of the file
        id:,
        # The MIME type of the file (e.g., image/jpeg, video/mp4)
        content_type:,
        # The name of the file
        filename:,
        # The size of the file in bytes
        size:,
        # Headers to include in the upload request (only on create)
        upload_headers:,
        # The upload status of the file
        upload_status:,
        # The presigned URL to upload the file to (only on create)
        upload_url:,
        # The URL to access the file
        url:
      )
      end

      sig do
        override.returns(
          {
            id: String,
            content_type: T.nilable(String),
            filename: T.nilable(String),
            size: T.nilable(String),
            upload_headers: T.nilable(T::Hash[Symbol, T.anything]),
            upload_status:
              WhopSDK::Models::FileCreateResponse::UploadStatus::TaggedSymbol,
            upload_url: T.nilable(String),
            url: T.nilable(String)
          }
        )
      end
      def to_hash
      end

      # The upload status of the file
      module UploadStatus
        extend WhopSDK::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, WhopSDK::Models::FileCreateResponse::UploadStatus)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        PENDING =
          T.let(
            :pending,
            WhopSDK::Models::FileCreateResponse::UploadStatus::TaggedSymbol
          )
        PROCESSING =
          T.let(
            :processing,
            WhopSDK::Models::FileCreateResponse::UploadStatus::TaggedSymbol
          )
        READY =
          T.let(
            :ready,
            WhopSDK::Models::FileCreateResponse::UploadStatus::TaggedSymbol
          )
        FAILED =
          T.let(
            :failed,
            WhopSDK::Models::FileCreateResponse::UploadStatus::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              WhopSDK::Models::FileCreateResponse::UploadStatus::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
