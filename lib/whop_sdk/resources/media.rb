# frozen_string_literal: true

module WhopSDK
  module Resources
    # A Media Asset is an AI-generated image or video created from a prompt and billed
    # from an account balance. When generation finishes, the asset includes a file
    # that can be attached anywhere Whop accepts files.
    #
    # Use the Media API to start a generation job and retrieve the asset while it
    # processes or after it is ready.
    class Media
      # Retrieves a media asset by ID. Poll this while the asset is `processing`.
      #
      # @overload retrieve(id, request_options: {})
      #
      # @param id [String] Media asset ID, prefixed `media_`.
      #
      # @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [WhopSDK::Models::MediaAsset]
      #
      # @see WhopSDK::Models::MediaRetrieveParams
      def retrieve(id, params = {})
        @client.request(
          method: :get,
          path: ["media/%1$s", id],
          model: WhopSDK::MediaAsset,
          options: params[:request_options]
        )
      end

      # Some parameter documentations has been truncated, see
      # {WhopSDK::Models::MediaGenerateParams} for more details.
      #
      # Starts an AI media generation job billed from the account's balance. Generation
      # is asynchronous — poll `GET /media/{id}` until the asset is `ready`, then use
      # `file.id` anywhere attachments are accepted.
      #
      # @overload generate(prompt:, type:, account_id: nil, duration_seconds: nil, reference_media: nil, resolution: nil, request_options: {})
      #
      # @param prompt [String] What to generate. Up to 2,000 characters.
      #
      # @param type [Symbol, WhopSDK::Models::MediaGenerateParams::Type] The kind of media to generate.
      #
      # @param account_id [String] Account ID, prefixed `biz_`. Defaults to the account the API key belongs to.
      #
      # @param duration_seconds [Integer, WhopSDK::Models::MediaGenerateParams::DurationSeconds] Video length in seconds. Video only; defaults to 5.
      #
      # @param reference_media [Array<String>] Optional reference image file IDs (`file_` prefixed), up to 4. For video, a sing
      #
      # @param resolution [Symbol, WhopSDK::Models::MediaGenerateParams::Resolution] Video resolution. Video only; defaults to `1080p`. `1080p` is not supported by S
      #
      # @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [WhopSDK::Models::MediaAsset]
      #
      # @see WhopSDK::Models::MediaGenerateParams
      def generate(params)
        parsed, options = WhopSDK::MediaGenerateParams.dump_request(params)
        @client.request(
          method: :post,
          path: "media/generate",
          body: parsed,
          model: WhopSDK::MediaAsset,
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
