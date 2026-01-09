# typed: strong

module WhopSDK
  module Resources
    class Files
      # Creates a file and returns a presigned URL for upload
      sig do
        params(
          filename: String,
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(WhopSDK::Models::FileCreateResponse)
      end
      def create(
        # The filename of the file
        filename:,
        request_options: {}
      )
      end

      # Retrieves a file by its ID
      sig do
        params(
          id: String,
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(WhopSDK::Models::FileRetrieveResponse)
      end
      def retrieve(
        # The ID of the file (e.g., file_xxxxx)
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
