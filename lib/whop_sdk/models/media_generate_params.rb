# frozen_string_literal: true

module WhopSDK
  module Models
    # @see WhopSDK::Resources::Media#generate
    class MediaGenerateParams < WhopSDK::Internal::Type::BaseModel
      extend WhopSDK::Internal::Type::RequestParameters::Converter
      include WhopSDK::Internal::Type::RequestParameters

      # @!attribute prompt
      #   What to generate. Up to 2,000 characters.
      #
      #   @return [String]
      required :prompt, String

      # @!attribute type
      #   The kind of media to generate.
      #
      #   @return [Symbol, WhopSDK::Models::MediaGenerateParams::Type]
      required :type, enum: -> { WhopSDK::MediaGenerateParams::Type }

      # @!attribute account_id
      #   Account ID, prefixed `biz_`. Defaults to the account the API key belongs to.
      #
      #   @return [String, nil]
      optional :account_id, String

      # @!attribute duration_seconds
      #   Video length in seconds. Video only; defaults to 5.
      #
      #   @return [Integer, WhopSDK::Models::MediaGenerateParams::DurationSeconds, nil]
      optional :duration_seconds, enum: -> { WhopSDK::MediaGenerateParams::DurationSeconds }

      # @!attribute reference_media
      #   Optional reference image file IDs (`file_` prefixed), up to 4. For video, a
      #   single reference seeds the opening frame; multiple references guide subject and
      #   style instead.
      #
      #   @return [Array<String>, nil]
      optional :reference_media, WhopSDK::Internal::Type::ArrayOf[String]

      # @!attribute resolution
      #   Video resolution. Video only; defaults to `1080p`. `1080p` is not supported by
      #   Seedance 2.0 Fast or Mini; `4k` is only supported by Seedance 2.0.
      #
      #   @return [Symbol, WhopSDK::Models::MediaGenerateParams::Resolution, nil]
      optional :resolution, enum: -> { WhopSDK::MediaGenerateParams::Resolution }

      # @!method initialize(prompt:, type:, account_id: nil, duration_seconds: nil, reference_media: nil, resolution: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {WhopSDK::Models::MediaGenerateParams} for more details.
      #
      #   @param prompt [String] What to generate. Up to 2,000 characters.
      #
      #   @param type [Symbol, WhopSDK::Models::MediaGenerateParams::Type] The kind of media to generate.
      #
      #   @param account_id [String] Account ID, prefixed `biz_`. Defaults to the account the API key belongs to.
      #
      #   @param duration_seconds [Integer, WhopSDK::Models::MediaGenerateParams::DurationSeconds] Video length in seconds. Video only; defaults to 5.
      #
      #   @param reference_media [Array<String>] Optional reference image file IDs (`file_` prefixed), up to 4. For video, a sing
      #
      #   @param resolution [Symbol, WhopSDK::Models::MediaGenerateParams::Resolution] Video resolution. Video only; defaults to `1080p`. `1080p` is not supported by S
      #
      #   @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}]

      # The kind of media to generate.
      module Type
        extend WhopSDK::Internal::Type::Enum

        VIDEO = :video
        IMAGE = :image

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # Video length in seconds. Video only; defaults to 5.
      module DurationSeconds
        extend WhopSDK::Internal::Type::Enum

        DURATION_SECONDS_5 = 5
        DURATION_SECONDS_10 = 10
        DURATION_SECONDS_15 = 15

        # @!method self.values
        #   @return [Array<Integer>]
      end

      # Video resolution. Video only; defaults to `1080p`. `1080p` is not supported by
      # Seedance 2.0 Fast or Mini; `4k` is only supported by Seedance 2.0.
      module Resolution
        extend WhopSDK::Internal::Type::Enum

        RESOLUTION_480P = :"480p"
        RESOLUTION_720P = :"720p"
        RESOLUTION_1080P = :"1080p"
        RESOLUTION_4K = :"4k"

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
