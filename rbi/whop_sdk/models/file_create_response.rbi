# typed: strong

module WhopSDK
  module Models
    class FileCreateResponse < WhopSDK::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(WhopSDK::Models::FileCreateResponse, WhopSDK::Internal::AnyHash)
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

      # Headers to include in the upload request. Only present in the response from the
      # create mutation.
      sig { returns(T.nilable(T::Hash[Symbol, T.anything])) }
      attr_accessor :upload_headers

      # The current upload status of the file (e.g., pending, ready).
      sig { returns(WhopSDK::UploadStatus::TaggedSymbol) }
      attr_accessor :upload_status

      # The presigned URL to upload the file contents to. Only present in the response
      # from the create mutation.
      sig { returns(T.nilable(String)) }
      attr_accessor :upload_url

      # The CDN URL for accessing the file. Null if the file has not finished uploading.
      sig { returns(T.nilable(String)) }
      attr_accessor :url

      # A file that has been uploaded or is pending upload.
      sig do
        params(
          id: String,
          content_type: T.nilable(String),
          filename: T.nilable(String),
          size: T.nilable(String),
          upload_headers: T.nilable(T::Hash[Symbol, T.anything]),
          upload_status: WhopSDK::UploadStatus::OrSymbol,
          upload_url: T.nilable(String),
          url: T.nilable(String)
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
        # Headers to include in the upload request. Only present in the response from the
        # create mutation.
        upload_headers:,
        # The current upload status of the file (e.g., pending, ready).
        upload_status:,
        # The presigned URL to upload the file contents to. Only present in the response
        # from the create mutation.
        upload_url:,
        # The CDN URL for accessing the file. Null if the file has not finished uploading.
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
            upload_status: WhopSDK::UploadStatus::TaggedSymbol,
            upload_url: T.nilable(String),
            url: T.nilable(String)
          }
        )
      end
      def to_hash
      end
    end
  end
end
