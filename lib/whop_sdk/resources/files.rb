# frozen_string_literal: true

module WhopSDK
  module Resources
    class Files
      # Creates a file and returns a presigned URL for upload
      #
      # @overload create(filename:, request_options: {})
      #
      # @param filename [String] The filename of the file
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

      # Retrieves a file by its ID
      #
      # @overload retrieve(id, request_options: {})
      #
      # @param id [String] The ID of the file (e.g., file_xxxxx)
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
