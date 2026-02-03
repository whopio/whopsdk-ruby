# frozen_string_literal: true

module WhopSDK
  module Models
    # @see WhopSDK::Resources::Files#retrieve
    class FileRetrieveResponse < WhopSDK::Internal::Type::BaseModel
      # @!attribute id
      #   The ID of the file
      #
      #   @return [String]
      required :id, String

      # @!attribute content_type
      #   The MIME type of the file (e.g., image/jpeg, video/mp4)
      #
      #   @return [String, nil]
      required :content_type, String, nil?: true

      # @!attribute filename
      #   The name of the file
      #
      #   @return [String, nil]
      required :filename, String, nil?: true

      # @!attribute size
      #   The size of the file in bytes
      #
      #   @return [String, nil]
      required :size, String, nil?: true

      # @!attribute upload_status
      #   The upload status of the file
      #
      #   @return [Symbol, WhopSDK::Models::UploadStatus]
      required :upload_status, enum: -> { WhopSDK::UploadStatus }

      # @!attribute url
      #   The URL to access the file
      #
      #   @return [String, nil]
      required :url, String, nil?: true

      # @!method initialize(id:, content_type:, filename:, size:, upload_status:, url:)
      #   A file that has been uploaded or is pending upload
      #
      #   @param id [String] The ID of the file
      #
      #   @param content_type [String, nil] The MIME type of the file (e.g., image/jpeg, video/mp4)
      #
      #   @param filename [String, nil] The name of the file
      #
      #   @param size [String, nil] The size of the file in bytes
      #
      #   @param upload_status [Symbol, WhopSDK::Models::UploadStatus] The upload status of the file
      #
      #   @param url [String, nil] The URL to access the file
    end
  end
end
