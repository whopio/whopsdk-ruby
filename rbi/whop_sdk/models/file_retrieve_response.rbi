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

      # The upload status of the file
      sig do
        returns(
          WhopSDK::Models::FileRetrieveResponse::UploadStatus::TaggedSymbol
        )
      end
      attr_accessor :upload_status

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
          upload_status:
            WhopSDK::Models::FileRetrieveResponse::UploadStatus::OrSymbol,
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
        # The upload status of the file
        upload_status:,
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
            upload_status:
              WhopSDK::Models::FileRetrieveResponse::UploadStatus::TaggedSymbol,
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
            T.all(Symbol, WhopSDK::Models::FileRetrieveResponse::UploadStatus)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        PENDING =
          T.let(
            :pending,
            WhopSDK::Models::FileRetrieveResponse::UploadStatus::TaggedSymbol
          )
        PROCESSING =
          T.let(
            :processing,
            WhopSDK::Models::FileRetrieveResponse::UploadStatus::TaggedSymbol
          )
        READY =
          T.let(
            :ready,
            WhopSDK::Models::FileRetrieveResponse::UploadStatus::TaggedSymbol
          )
        FAILED =
          T.let(
            :failed,
            WhopSDK::Models::FileRetrieveResponse::UploadStatus::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              WhopSDK::Models::FileRetrieveResponse::UploadStatus::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
