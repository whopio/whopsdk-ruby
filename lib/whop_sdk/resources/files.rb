# frozen_string_literal: true

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
      # Some parameter documentations has been truncated, see
      # {WhopSDK::Models::FileCreateParams} for more details.
      #
      # Creates a file and returns a presigned destination to upload its bytes to. PUT
      # the bytes to `upload_url` (single-part), or to each of `multipart_upload_urls`
      # and then call Complete File Multipart Upload. Once the bytes land the file
      # becomes `ready`, and its ID can be attached wherever a file is accepted —
      # account legal documents, dispute evidence documents. For a step-by-step
      # walkthrough of single-part and multipart uploads, see the
      # [direct file uploads guide](/developer/guides/direct-file-uploads).
      #
      # @overload create(filename:, byte_size: nil, multipart: nil, visibility: nil, api_version_date: nil, idempotency_key: nil, request_options: {})
      #
      # @param filename [String] Body param: The name of the file including its extension, e.g. `terms.pdf`.
      #
      # @param byte_size [Integer] Body param: The file's size in bytes. Required when `multipart` is `true`. Multi
      #
      # @param multipart [Boolean] Body param: Upload the file in 5MB parts. Required for files larger than 5GB; us
      #
      # @param visibility [Symbol, WhopSDK::Models::FileCreateParams::Visibility] Body param: `public` files are served via an unsigned CDN URL — use for assets a
      #
      # @param api_version_date [String] Header param: Pins the request to a dated API version.
      #
      # @param idempotency_key [String] Header param: A unique key that makes this request safe to retry. See [Idempoten
      #
      # @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [WhopSDK::Models::FileCreateResponse]
      #
      # @see WhopSDK::Models::FileCreateParams
      def create(params)
        parsed, options = WhopSDK::FileCreateParams.dump_request(params)
        header_params = {api_version_date: "api-version-date", idempotency_key: "idempotency-key"}
        @client.request(
          method: :post,
          path: "files",
          headers: parsed.slice(*header_params.keys).transform_keys(header_params),
          body: parsed.except(*header_params.keys),
          model: WhopSDK::Models::FileCreateResponse,
          options: options
        )
      end

      # Retrieves a file you uploaded — poll it after uploading the bytes to see
      # `upload_status` become `ready`. Only the creator can retrieve a file this way; a
      # file attached to another resource is read through that resource.
      #
      # @overload retrieve(id, api_version_date: nil, request_options: {})
      #
      # @param id [String] The unique identifier of the file, prefixed `file_`.
      #
      # @param api_version_date [String] Pins the request to a dated API version.
      #
      # @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [WhopSDK::Models::FileRetrieveResponse]
      #
      # @see WhopSDK::Models::FileRetrieveParams
      def retrieve(id, params = {})
        parsed, options = WhopSDK::FileRetrieveParams.dump_request(params)
        @client.request(
          method: :get,
          path: ["files/%1$s", id],
          headers: parsed.transform_keys(api_version_date: "api-version-date"),
          model: WhopSDK::Models::FileRetrieveResponse,
          options: options
        )
      end

      # @api private
      #
      # @param client [WhopSDK::Client]
      def initialize(client:)
        @client = client
      end
    end
  end
end
