# typed: strong

module WhopSDK
  module Models
    class FileRetrieveResponse < WhopSDK::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            WhopSDK::Models::FileRetrieveResponse,
            WhopSDK::Internal::AnyHash
          )
        end

      # The unique identifier for the file.
      sig { returns(String) }
      attr_accessor :id

      # The MIME type of the uploaded file (e.g., image/jpeg, video/mp4, audio/mpeg).
      sig { returns(T.nilable(String)) }
      attr_accessor :content_type

      # The original filename of the uploaded file, including its file extension.
      sig { returns(T.nilable(String)) }
      attr_accessor :filename

      # The file size in bytes. Null if the file has not finished uploading.
      sig { returns(T.nilable(String)) }
      attr_accessor :size

      # The current upload status of the file (e.g., pending, ready).
      sig { returns(WhopSDK::UploadStatus::TaggedSymbol) }
      attr_accessor :upload_status

      # The URL for accessing the file. For public files, this is a permanent CDN URL.
      # For private files, this is a signed URL that expires. Null if the file has not
      # finished uploading.
      sig { returns(T.nilable(String)) }
      attr_accessor :url

      # Whether the file is publicly accessible or requires authentication.
      sig { returns(WhopSDK::FileVisibility::TaggedSymbol) }
      attr_accessor :visibility

      # A file that has been uploaded or is pending upload.
      sig do
        params(
          id: String,
          content_type: T.nilable(String),
          filename: T.nilable(String),
          size: T.nilable(String),
          upload_status: WhopSDK::UploadStatus::OrSymbol,
          url: T.nilable(String),
          visibility: WhopSDK::FileVisibility::OrSymbol
        ).returns(T.attached_class)
      end
      def self.new(
        # The unique identifier for the file.
        id:,
        # The MIME type of the uploaded file (e.g., image/jpeg, video/mp4, audio/mpeg).
        content_type:,
        # The original filename of the uploaded file, including its file extension.
        filename:,
        # The file size in bytes. Null if the file has not finished uploading.
        size:,
        # The current upload status of the file (e.g., pending, ready).
        upload_status:,
        # The URL for accessing the file. For public files, this is a permanent CDN URL.
        # For private files, this is a signed URL that expires. Null if the file has not
        # finished uploading.
        url:,
        # Whether the file is publicly accessible or requires authentication.
        visibility:
      )
      end

      sig do
        override.returns(
          {
            id: String,
            content_type: T.nilable(String),
            filename: T.nilable(String),
            size: T.nilable(String),
            upload_status: WhopSDK::UploadStatus::TaggedSymbol,
            url: T.nilable(String),
            visibility: WhopSDK::FileVisibility::TaggedSymbol
          }
        )
      end
      def to_hash
      end
    end
  end
end
