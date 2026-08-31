# typed: strong

module WhopSDK
  module Resources
    # A File is an uploaded document or media object, identified by a `file_` ID.
    # Creating a file returns a presigned destination; upload the bytes there and the
    # file becomes `ready`.
    #
    # Use the Files API to create a file, upload its content directly to storage (in
    # one PUT, or in parts for large files), and retrieve it while polling for
    # readiness. A ready file's ID can be attached wherever Whop accepts files.
    class Files
      # Creates a file and returns a presigned destination to upload its bytes to. PUT
      # the bytes to `upload_url` (single-part), or to each of `multipart_upload_urls`
      # and then call Complete File Multipart Upload. Once the bytes land the file
      # becomes `ready`, and its ID can be attached wherever a file is accepted —
      # account legal documents, dispute evidence documents. For a step-by-step
      # walkthrough of single-part and multipart uploads, see the
      # [direct file uploads guide](/developer/guides/direct-file-uploads).
      sig do
        params(
          filename: String,
          byte_size: Integer,
          multipart: T::Boolean,
          visibility: WhopSDK::FileCreateParams::Visibility::OrSymbol,
          api_version_date: String,
          idempotency_key: String,
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(WhopSDK::Models::FileCreateResponse)
      end
      def create(
        # Body param: The name of the file including its extension, e.g. `terms.pdf`.
        filename:,
        # Body param: The file's size in bytes. Required when `multipart` is `true`.
        # Multipart uploads support at most 10,000 parts of 5MB each (about 50 GB).
        byte_size: nil,
        # Body param: Upload the file in 5MB parts. Required for files larger than 5GB;
        # useful above ~100MB. The file must be larger than 5MB.
        multipart: nil,
        # Body param: `public` files are served via an unsigned CDN URL — use for assets
        # anyone may see. `private` files are served via a signed, expiring URL — use for
        # sensitive documents. Defaults to `private`.
        visibility: nil,
        # Header param: Pins the request to a dated API version.
        api_version_date: nil,
        # Header param: A unique key that makes this request safe to retry. See
        # [Idempotent requests](https://docs.whop.com/developer/api/idempotency).
        idempotency_key: nil,
        request_options: {}
      )
      end

      # Retrieves a file you uploaded — poll it after uploading the bytes to see
      # `upload_status` become `ready`. Only the creator can retrieve a file this way; a
      # file attached to another resource is read through that resource.
      sig do
        params(
          id: String,
          api_version_date: String,
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(WhopSDK::Models::FileRetrieveResponse)
      end
      def retrieve(
        # The unique identifier of the file, prefixed `file_`.
        id,
        # Pins the request to a dated API version.
        api_version_date: nil,
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
