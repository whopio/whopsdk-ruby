# frozen_string_literal: true

module WhopSDK
  module Models
    # @see WhopSDK::Resources::Files#create
    class FileCreateResponse < WhopSDK::Internal::Type::BaseModel
      # @!attribute id
      #   The unique identifier for the file.
      #
      #   @return [String]
      required :id, String

      # @!attribute content_type
      #   The MIME type of the uploaded file (e.g., image/jpeg, video/mp4, audio/mpeg).
      #
      #   @return [String, nil]
      required :content_type, String, nil?: true

      # @!attribute filename
      #   The original filename of the uploaded file, including its file extension.
      #
      #   @return [String, nil]
      required :filename, String, nil?: true

      # @!attribute size
      #   The file size in bytes. Null if the file has not finished uploading.
      #
      #   @return [String, nil]
      required :size, String, nil?: true

      # @!attribute upload_headers
      #   Headers to include in the upload request. Only present in the response from the
      #   create mutation.
      #
      #   @return [Hash{Symbol=>Object}, nil]
      required :upload_headers, WhopSDK::Internal::Type::HashOf[WhopSDK::Internal::Type::Unknown], nil?: true

      # @!attribute upload_status
      #   The current upload status of the file (e.g., pending, ready).
      #
      #   @return [Symbol, WhopSDK::Models::UploadStatus]
      required :upload_status, enum: -> { WhopSDK::UploadStatus }

      # @!attribute upload_url
      #   The presigned URL to upload the file contents to. Only present in the response
      #   from the create mutation.
      #
      #   @return [String, nil]
      required :upload_url, String, nil?: true

      # @!attribute url
      #   The CDN URL for accessing the file. Null if the file has not finished uploading.
      #
      #   @return [String, nil]
      required :url, String, nil?: true

      # @!method initialize(id:, content_type:, filename:, size:, upload_headers:, upload_status:, upload_url:, url:)
      #   Some parameter documentations has been truncated, see
      #   {WhopSDK::Models::FileCreateResponse} for more details.
      #
      #   A file that has been uploaded or is pending upload.
      #
      #   @param id [String] The unique identifier for the file.
      #
      #   @param content_type [String, nil] The MIME type of the uploaded file (e.g., image/jpeg, video/mp4, audio/mpeg).
      #
      #   @param filename [String, nil] The original filename of the uploaded file, including its file extension.
      #
      #   @param size [String, nil] The file size in bytes. Null if the file has not finished uploading.
      #
      #   @param upload_headers [Hash{Symbol=>Object}, nil] Headers to include in the upload request. Only present in the response from the
      #
      #   @param upload_status [Symbol, WhopSDK::Models::UploadStatus] The current upload status of the file (e.g., pending, ready).
      #
      #   @param upload_url [String, nil] The presigned URL to upload the file contents to. Only present in the response f
      #
      #   @param url [String, nil] The CDN URL for accessing the file. Null if the file has not finished uploading.
    end
  end
end
