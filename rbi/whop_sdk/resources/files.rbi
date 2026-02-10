# typed: strong

module WhopSDK
  module Resources
    class Files
      # Create a new file record and receive a presigned URL for uploading content to
      # S3.
      sig do
        params(
          filename: String,
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(WhopSDK::Models::FileCreateResponse)
      end
      def create(
        # The name of the file including its extension (e.g., "photo.png" or
        # "document.pdf").
        filename:,
        request_options: {}
      )
      end

      # Retrieves the details of an existing file.
      sig do
        params(
          id: String,
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(WhopSDK::Models::FileRetrieveResponse)
      end
      def retrieve(
        # The unique identifier of the file to retrieve.
        id,
        request_options: {}
      )
      end

      # @api private
      sig { params(client: WhopSDK::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end
