# frozen_string_literal: true

module WhopSDK
  module Models
    # @see WhopSDK::Resources::Files#retrieve
    class FileRetrieveResponse < WhopSDK::Internal::Type::BaseModel
      # @!attribute id
      #   The file's ID, prefixed `file_`.
      #
      #   @return [String]
      required :id, String

      # @!attribute content_type
      #   The file's MIME type, e.g. `application/pdf`.
      #
      #   @return [String, nil]
      required :content_type, String, nil?: true

      # @!attribute created_at
      #   When the file was created, as an ISO 8601 timestamp.
      #
      #   @return [String]
      required :created_at, String

      # @!attribute filename
      #   The original filename, including its extension.
      #
      #   @return [String, nil]
      required :filename, String, nil?: true

      # @!attribute object
      #   The type of this object, always `file`.
      #
      #   @return [String]
      required :object, String

      # @!attribute size
      #   The file size in bytes. `null` until the upload has finished.
      #
      #   @return [Integer, nil]
      required :size, Integer, nil?: true

      # @!attribute upload_status
      #   Where the file is in its upload lifecycle.
      #
      #   @return [Symbol, WhopSDK::Models::FileRetrieveResponse::UploadStatus]
      required :upload_status, enum: -> { WhopSDK::Models::FileRetrieveResponse::UploadStatus }

      # @!attribute url
      #   A URL to download the file: a permanent CDN URL for public files, a signed
      #   expiring URL for private ones. `null` until the upload has finished.
      #
      #   @return [String, nil]
      required :url, String, nil?: true

      # @!attribute visibility
      #   `public` files are served via an unsigned CDN URL; `private` files via a signed,
      #   expiring URL.
      #
      #   @return [Symbol, WhopSDK::Models::FileRetrieveResponse::Visibility]
      required :visibility, enum: -> { WhopSDK::Models::FileRetrieveResponse::Visibility }

      # @!attribute multipart_chunk_size
      #   The byte size each part (except the last) must be. Present only on create, and
      #   only for multipart uploads.
      #
      #   @return [Integer, nil]
      optional :multipart_chunk_size, Integer, nil?: true

      # @!attribute multipart_upload_id
      #   The ID of the multipart upload, passed back to `complete`. Present only on
      #   create, and only for multipart uploads.
      #
      #   @return [String, nil]
      optional :multipart_upload_id, String, nil?: true

      # @!attribute multipart_upload_urls
      #
      #   @return [Array<WhopSDK::Models::FileRetrieveResponse::MultipartUploadURL>, nil]
      optional :multipart_upload_urls,
               -> { WhopSDK::Internal::Type::ArrayOf[WhopSDK::Models::FileRetrieveResponse::MultipartUploadURL] },
               nil?: true

      # @!attribute upload_headers
      #   Headers to send with the upload PUT. Present only on create.
      #
      #   @return [Object, nil]
      optional :upload_headers, WhopSDK::Internal::Type::Unknown

      # @!attribute upload_url
      #   Presigned URL to PUT the file's bytes to. Present only on create, and only for
      #   single-part uploads.
      #
      #   @return [String, nil]
      optional :upload_url, String, nil?: true

      # @!method initialize(id:, content_type:, created_at:, filename:, object:, size:, upload_status:, url:, visibility:, multipart_chunk_size: nil, multipart_upload_id: nil, multipart_upload_urls: nil, upload_headers: nil, upload_url: nil)
      #   Some parameter documentations has been truncated, see
      #   {WhopSDK::Models::FileRetrieveResponse} for more details.
      #
      #   @param id [String] The file's ID, prefixed `file_`.
      #
      #   @param content_type [String, nil] The file's MIME type, e.g. `application/pdf`.
      #
      #   @param created_at [String] When the file was created, as an ISO 8601 timestamp.
      #
      #   @param filename [String, nil] The original filename, including its extension.
      #
      #   @param object [String] The type of this object, always `file`.
      #
      #   @param size [Integer, nil] The file size in bytes. `null` until the upload has finished.
      #
      #   @param upload_status [Symbol, WhopSDK::Models::FileRetrieveResponse::UploadStatus] Where the file is in its upload lifecycle.
      #
      #   @param url [String, nil] A URL to download the file: a permanent CDN URL for public files, a signed expir
      #
      #   @param visibility [Symbol, WhopSDK::Models::FileRetrieveResponse::Visibility] `public` files are served via an unsigned CDN URL; `private` files via a signed,
      #
      #   @param multipart_chunk_size [Integer, nil] The byte size each part (except the last) must be. Present only on create, and o
      #
      #   @param multipart_upload_id [String, nil] The ID of the multipart upload, passed back to `complete`. Present only on creat
      #
      #   @param multipart_upload_urls [Array<WhopSDK::Models::FileRetrieveResponse::MultipartUploadURL>, nil]
      #
      #   @param upload_headers [Object] Headers to send with the upload PUT. Present only on create.
      #
      #   @param upload_url [String, nil] Presigned URL to PUT the file's bytes to. Present only on create, and only for s

      # Where the file is in its upload lifecycle.
      #
      # @see WhopSDK::Models::FileRetrieveResponse#upload_status
      module UploadStatus
        extend WhopSDK::Internal::Type::Enum

        PENDING = :pending
        PROCESSING = :processing
        READY = :ready
        FAILED = :failed

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # `public` files are served via an unsigned CDN URL; `private` files via a signed,
      # expiring URL.
      #
      # @see WhopSDK::Models::FileRetrieveResponse#visibility
      module Visibility
        extend WhopSDK::Internal::Type::Enum

        PUBLIC = :public
        PRIVATE = :private

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      class MultipartUploadURL < WhopSDK::Internal::Type::BaseModel
        # @!attribute part_number
        #   The 1-based index of this part within the multipart upload.
        #
        #   @return [Integer]
        required :part_number, Integer

        # @!attribute url
        #   The presigned URL to PUT this part's bytes to.
        #
        #   @return [String]
        required :url, String

        # @!method initialize(part_number:, url:)
        #   The presigned URL for each part. Present only on create, and only for multipart
        #   uploads.
        #
        #   @param part_number [Integer] The 1-based index of this part within the multipart upload.
        #
        #   @param url [String] The presigned URL to PUT this part's bytes to.
      end
    end
  end
end
