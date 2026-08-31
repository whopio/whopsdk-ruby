# typed: strong

module WhopSDK
  module Models
    class FileCreateResponse < WhopSDK::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(WhopSDK::Models::FileCreateResponse, WhopSDK::Internal::AnyHash)
        end

      # The file's ID, prefixed `file_`.
      sig { returns(String) }
      attr_accessor :id

      # The file's MIME type, e.g. `application/pdf`.
      sig { returns(T.nilable(String)) }
      attr_accessor :content_type

      # When the file was created, as an ISO 8601 timestamp.
      sig { returns(String) }
      attr_accessor :created_at

      # The original filename, including its extension.
      sig { returns(T.nilable(String)) }
      attr_accessor :filename

      # The type of this object, always `file`.
      sig { returns(String) }
      attr_accessor :object

      # The file size in bytes. `null` until the upload has finished.
      sig { returns(T.nilable(Integer)) }
      attr_accessor :size

      # Where the file is in its upload lifecycle.
      sig do
        returns(WhopSDK::Models::FileCreateResponse::UploadStatus::TaggedSymbol)
      end
      attr_accessor :upload_status

      # A URL to download the file: a permanent CDN URL for public files, a signed
      # expiring URL for private ones. `null` until the upload has finished.
      sig { returns(T.nilable(String)) }
      attr_accessor :url

      # `public` files are served via an unsigned CDN URL; `private` files via a signed,
      # expiring URL.
      sig do
        returns(WhopSDK::Models::FileCreateResponse::Visibility::TaggedSymbol)
      end
      attr_accessor :visibility

      # The byte size each part (except the last) must be. Present only on create, and
      # only for multipart uploads.
      sig { returns(T.nilable(Integer)) }
      attr_accessor :multipart_chunk_size

      # The ID of the multipart upload, passed back to `complete`. Present only on
      # create, and only for multipart uploads.
      sig { returns(T.nilable(String)) }
      attr_accessor :multipart_upload_id

      sig do
        returns(
          T.nilable(
            T::Array[WhopSDK::Models::FileCreateResponse::MultipartUploadURL]
          )
        )
      end
      attr_accessor :multipart_upload_urls

      # Headers to send with the upload PUT. Present only on create.
      sig { returns(T.nilable(T.anything)) }
      attr_reader :upload_headers

      sig { params(upload_headers: T.anything).void }
      attr_writer :upload_headers

      # Presigned URL to PUT the file's bytes to. Present only on create, and only for
      # single-part uploads.
      sig { returns(T.nilable(String)) }
      attr_accessor :upload_url

      sig do
        params(
          id: String,
          content_type: T.nilable(String),
          created_at: String,
          filename: T.nilable(String),
          object: String,
          size: T.nilable(Integer),
          upload_status:
            WhopSDK::Models::FileCreateResponse::UploadStatus::OrSymbol,
          url: T.nilable(String),
          visibility: WhopSDK::Models::FileCreateResponse::Visibility::OrSymbol,
          multipart_chunk_size: T.nilable(Integer),
          multipart_upload_id: T.nilable(String),
          multipart_upload_urls:
            T.nilable(
              T::Array[
                WhopSDK::Models::FileCreateResponse::MultipartUploadURL::OrHash
              ]
            ),
          upload_headers: T.anything,
          upload_url: T.nilable(String)
        ).returns(T.attached_class)
      end
      def self.new(
        # The file's ID, prefixed `file_`.
        id:,
        # The file's MIME type, e.g. `application/pdf`.
        content_type:,
        # When the file was created, as an ISO 8601 timestamp.
        created_at:,
        # The original filename, including its extension.
        filename:,
        # The type of this object, always `file`.
        object:,
        # The file size in bytes. `null` until the upload has finished.
        size:,
        # Where the file is in its upload lifecycle.
        upload_status:,
        # A URL to download the file: a permanent CDN URL for public files, a signed
        # expiring URL for private ones. `null` until the upload has finished.
        url:,
        # `public` files are served via an unsigned CDN URL; `private` files via a signed,
        # expiring URL.
        visibility:,
        # The byte size each part (except the last) must be. Present only on create, and
        # only for multipart uploads.
        multipart_chunk_size: nil,
        # The ID of the multipart upload, passed back to `complete`. Present only on
        # create, and only for multipart uploads.
        multipart_upload_id: nil,
        multipart_upload_urls: nil,
        # Headers to send with the upload PUT. Present only on create.
        upload_headers: nil,
        # Presigned URL to PUT the file's bytes to. Present only on create, and only for
        # single-part uploads.
        upload_url: nil
      )
      end

      sig do
        override.returns(
          {
            id: String,
            content_type: T.nilable(String),
            created_at: String,
            filename: T.nilable(String),
            object: String,
            size: T.nilable(Integer),
            upload_status:
              WhopSDK::Models::FileCreateResponse::UploadStatus::TaggedSymbol,
            url: T.nilable(String),
            visibility:
              WhopSDK::Models::FileCreateResponse::Visibility::TaggedSymbol,
            multipart_chunk_size: T.nilable(Integer),
            multipart_upload_id: T.nilable(String),
            multipart_upload_urls:
              T.nilable(
                T::Array[
                  WhopSDK::Models::FileCreateResponse::MultipartUploadURL
                ]
              ),
            upload_headers: T.anything,
            upload_url: T.nilable(String)
          }
        )
      end
      def to_hash
      end

      # Where the file is in its upload lifecycle.
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

      # `public` files are served via an unsigned CDN URL; `private` files via a signed,
      # expiring URL.
      module Visibility
        extend WhopSDK::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, WhopSDK::Models::FileCreateResponse::Visibility)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        PUBLIC =
          T.let(
            :public,
            WhopSDK::Models::FileCreateResponse::Visibility::TaggedSymbol
          )
        PRIVATE =
          T.let(
            :private,
            WhopSDK::Models::FileCreateResponse::Visibility::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              WhopSDK::Models::FileCreateResponse::Visibility::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end

      class MultipartUploadURL < WhopSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              WhopSDK::Models::FileCreateResponse::MultipartUploadURL,
              WhopSDK::Internal::AnyHash
            )
          end

        # The 1-based index of this part within the multipart upload.
        sig { returns(Integer) }
        attr_accessor :part_number

        # The presigned URL to PUT this part's bytes to.
        sig { returns(String) }
        attr_accessor :url

        # The presigned URL for each part. Present only on create, and only for multipart
        # uploads.
        sig do
          params(part_number: Integer, url: String).returns(T.attached_class)
        end
        def self.new(
          # The 1-based index of this part within the multipart upload.
          part_number:,
          # The presigned URL to PUT this part's bytes to.
          url:
        )
        end

        sig { override.returns({ part_number: Integer, url: String }) }
        def to_hash
        end
      end
    end
  end
end
