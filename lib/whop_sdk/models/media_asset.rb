# frozen_string_literal: true

module WhopSDK
  module Models
    # @see WhopSDK::Resources::Media#retrieve
    class MediaAsset < WhopSDK::Internal::Type::BaseModel
      # @!attribute id
      #   Media asset ID, prefixed `media_`.
      #
      #   @return [String]
      required :id, String

      # @!attribute amount_charged
      #   USD amount charged to the account's balance for this generation. `null` if the
      #   generation wasn't billed.
      #
      #   @return [Float, nil]
      required :amount_charged, Float, nil?: true

      # @!attribute completed_at
      #   ISO 8601 timestamp when the asset reached a terminal state. `null` while
      #   `processing`.
      #
      #   @return [String, nil]
      required :completed_at, String, nil?: true

      # @!attribute created_at
      #   ISO 8601 timestamp when the generation was requested.
      #
      #   @return [String]
      required :created_at, String

      # @!attribute currency
      #   Currency of `amount_charged`. Always `usd`.
      #
      #   @return [String]
      required :currency, String

      # @!attribute error_message
      #   Why generation failed. `null` unless status is `failed`.
      #
      #   @return [String, nil]
      required :error_message, String, nil?: true

      # @!attribute file
      #   The produced file, usable anywhere attachments are accepted. `null` until the
      #   asset is `ready`.
      #
      #   @return [WhopSDK::Models::MediaAsset::File, nil]
      required :file, -> { WhopSDK::MediaAsset::File }, nil?: true

      # @!attribute generation
      #   The inputs the asset was generated from.
      #
      #   @return [WhopSDK::Models::MediaAsset::Generation]
      required :generation, -> { WhopSDK::MediaAsset::Generation }

      # @!attribute media_type
      #   The kind of media this asset holds.
      #
      #   @return [Symbol, WhopSDK::Models::MediaAsset::MediaType]
      required :media_type, enum: -> { WhopSDK::MediaAsset::MediaType }

      # @!attribute source
      #   How the asset was created. Always `generated`.
      #
      #   @return [Symbol, WhopSDK::Models::MediaAsset::Source]
      required :source, enum: -> { WhopSDK::MediaAsset::Source }

      # @!attribute status
      #   Lifecycle state: `processing` while generation runs, `ready` when the file is
      #   available, `failed` when generation failed and the charge was refunded.
      #
      #   @return [Symbol, WhopSDK::Models::MediaAsset::Status]
      required :status, enum: -> { WhopSDK::MediaAsset::Status }

      # @!method initialize(id:, amount_charged:, completed_at:, created_at:, currency:, error_message:, file:, generation:, media_type:, source:, status:)
      #   Some parameter documentations has been truncated, see
      #   {WhopSDK::Models::MediaAsset} for more details.
      #
      #   @param id [String] Media asset ID, prefixed `media_`.
      #
      #   @param amount_charged [Float, nil] USD amount charged to the account's balance for this generation. `null` if the g
      #
      #   @param completed_at [String, nil] ISO 8601 timestamp when the asset reached a terminal state. `null` while `proces
      #
      #   @param created_at [String] ISO 8601 timestamp when the generation was requested.
      #
      #   @param currency [String] Currency of `amount_charged`. Always `usd`.
      #
      #   @param error_message [String, nil] Why generation failed. `null` unless status is `failed`.
      #
      #   @param file [WhopSDK::Models::MediaAsset::File, nil] The produced file, usable anywhere attachments are accepted. `null` until the as
      #
      #   @param generation [WhopSDK::Models::MediaAsset::Generation] The inputs the asset was generated from.
      #
      #   @param media_type [Symbol, WhopSDK::Models::MediaAsset::MediaType] The kind of media this asset holds.
      #
      #   @param source [Symbol, WhopSDK::Models::MediaAsset::Source] How the asset was created. Always `generated`.
      #
      #   @param status [Symbol, WhopSDK::Models::MediaAsset::Status] Lifecycle state: `processing` while generation runs, `ready` when the file is av

      # @see WhopSDK::Models::MediaAsset#file
      class File < WhopSDK::Internal::Type::BaseModel
        # @!attribute id
        #   File ID, prefixed `file_`.
        #
        #   @return [String]
        required :id, String

        # @!attribute url
        #   CDN URL for downloading the file.
        #
        #   @return [String]
        required :url, String

        # @!method initialize(id:, url:)
        #   The produced file, usable anywhere attachments are accepted. `null` until the
        #   asset is `ready`.
        #
        #   @param id [String] File ID, prefixed `file_`.
        #
        #   @param url [String] CDN URL for downloading the file.
      end

      # @see WhopSDK::Models::MediaAsset#generation
      class Generation < WhopSDK::Internal::Type::BaseModel
        # @!attribute duration_seconds
        #   Requested video length in seconds. `null` for images.
        #
        #   @return [Float, nil]
        required :duration_seconds, Float, nil?: true

        # @!attribute prompt
        #   What the asset was generated from.
        #
        #   @return [String]
        required :prompt, String

        # @!attribute reference_media
        #
        #   @return [Array<String>]
        required :reference_media, WhopSDK::Internal::Type::ArrayOf[String]

        # @!attribute resolution
        #   Requested video resolution. `null` for images. `1080p` is not supported by
        #   Seedance 2.0 Fast or Mini; `4k` is only supported by Seedance 2.0.
        #
        #   @return [Symbol, WhopSDK::Models::MediaAsset::Generation::Resolution, nil]
        required :resolution, enum: -> { WhopSDK::MediaAsset::Generation::Resolution }, nil?: true

        # @!method initialize(duration_seconds:, prompt:, reference_media:, resolution:)
        #   Some parameter documentations has been truncated, see
        #   {WhopSDK::Models::MediaAsset::Generation} for more details.
        #
        #   The inputs the asset was generated from.
        #
        #   @param duration_seconds [Float, nil] Requested video length in seconds. `null` for images.
        #
        #   @param prompt [String] What the asset was generated from.
        #
        #   @param reference_media [Array<String>]
        #
        #   @param resolution [Symbol, WhopSDK::Models::MediaAsset::Generation::Resolution, nil] Requested video resolution. `null` for images. `1080p` is not supported by Seeda

        # Requested video resolution. `null` for images. `1080p` is not supported by
        # Seedance 2.0 Fast or Mini; `4k` is only supported by Seedance 2.0.
        #
        # @see WhopSDK::Models::MediaAsset::Generation#resolution
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

      # The kind of media this asset holds.
      #
      # @see WhopSDK::Models::MediaAsset#media_type
      module MediaType
        extend WhopSDK::Internal::Type::Enum

        VIDEO = :video
        IMAGE = :image

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # How the asset was created. Always `generated`.
      #
      # @see WhopSDK::Models::MediaAsset#source
      module Source
        extend WhopSDK::Internal::Type::Enum

        GENERATED = :generated

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # Lifecycle state: `processing` while generation runs, `ready` when the file is
      # available, `failed` when generation failed and the charge was refunded.
      #
      # @see WhopSDK::Models::MediaAsset#status
      module Status
        extend WhopSDK::Internal::Type::Enum

        PROCESSING = :processing
        READY = :ready
        FAILED = :failed

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
