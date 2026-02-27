# frozen_string_literal: true

module WhopSDK
  module Resources
    # Files
    class Files
      # Some parameter documentations has been truncated, see
      # {WhopSDK::Models::FileCreateParams} for more details.
      #
      # Create a new file record and receive a presigned URL for uploading content to
      # S3.
      #
      # @overload create(filename:, request_options: {})
      #
      # @param filename [String] The name of the file including its extension (e.g., "photo.png" or "document.pdf
      #
      # @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [WhopSDK::Models::FileCreateResponse]
      #
      # @see WhopSDK::Models::FileCreateParams
      def create(params)
        parsed, options = WhopSDK::FileCreateParams.dump_request(params)
        @client.request(
          method: :post,
          path: "files",
          body: parsed,
          model: WhopSDK::Models::FileCreateResponse,
          options: options
        )
      end

      # Retrieves the details of an existing file.
      #
      # @overload retrieve(id, request_options: {})
      #
      # @param id [String] The unique identifier of the file to retrieve.
      #
      # @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [WhopSDK::Models::FileRetrieveResponse]
      #
      # @see WhopSDK::Models::FileRetrieveParams
      def retrieve(id, params = {})
        @client.request(
          method: :get,
          path: ["files/%1$s", id],
          model: WhopSDK::Models::FileRetrieveResponse,
          options: params[:request_options]
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
