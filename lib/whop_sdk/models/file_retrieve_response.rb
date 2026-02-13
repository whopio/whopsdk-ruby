# frozen_string_literal: true

module WhopSDK
  module Models
    # @see WhopSDK::Resources::Files#retrieve
    class FileRetrieveResponse < WhopSDK::Internal::Type::BaseModel
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

      # @!attribute upload_status
      #   The current upload status of the file (e.g., pending, ready).
      #
      #   @return [Symbol, WhopSDK::Models::UploadStatus]
      required :upload_status, enum: -> { WhopSDK::UploadStatus }

      # @!attribute url
      #   The CDN URL for accessing the file. Null if the file has not finished uploading.
      #
      #   @return [String, nil]
      required :url, String, nil?: true

      # @!method initialize(id:, content_type:, filename:, size:, upload_status:, url:)
      #   Some parameter documentations has been truncated, see
      #   {WhopSDK::Models::FileRetrieveResponse} for more details.
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
      #   @param upload_status [Symbol, WhopSDK::Models::UploadStatus] The current upload status of the file (e.g., pending, ready).
      #
      #   @param url [String, nil] The CDN URL for accessing the file. Null if the file has not finished uploading.
    end
  end
end
