# typed: strong

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
      sig do
        params(
          id: String,
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(WhopSDK::MediaAsset)
      end
      def retrieve(
        # Media asset ID, prefixed `media_`.
        id,
        request_options: {}
      )
      end

      # Starts an AI media generation job billed from the account's balance. Generation
      # is asynchronous — poll `GET /media/{id}` until the asset is `ready`, then use
      # `file.id` anywhere attachments are accepted.
      sig do
        params(
          prompt: String,
          type: WhopSDK::MediaGenerateParams::Type::OrSymbol,
          account_id: String,
          duration_seconds:
            WhopSDK::MediaGenerateParams::DurationSeconds::OrInteger,
          reference_media: T::Array[String],
          resolution: WhopSDK::MediaGenerateParams::Resolution::OrSymbol,
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(WhopSDK::MediaAsset)
      end
      def generate(
        # What to generate. Up to 2,000 characters.
        prompt:,
        # The kind of media to generate.
        type:,
        # Account ID, prefixed `biz_`. Defaults to the account the API key belongs to.
        account_id: nil,
        # Video length in seconds. Video only; defaults to 5.
        duration_seconds: nil,
        # Optional reference image file IDs (`file_` prefixed), up to 4. For video, a
        # single reference seeds the opening frame; multiple references guide subject and
        # style instead.
        reference_media: nil,
        # Video resolution. Video only; defaults to `1080p`. `1080p` is not supported by
        # Seedance 2.0 Fast or Mini; `4k` is only supported by Seedance 2.0.
        resolution: nil,
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
