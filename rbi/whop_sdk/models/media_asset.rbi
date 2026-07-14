# typed: strong

module WhopSDK
  module Models
    class MediaAsset < WhopSDK::Internal::Type::BaseModel
      OrHash =
        T.type_alias { T.any(WhopSDK::MediaAsset, WhopSDK::Internal::AnyHash) }

      # Media asset ID, prefixed `media_`.
      sig { returns(String) }
      attr_accessor :id

      # USD amount charged to the account's balance for this generation. `null` if the
      # generation wasn't billed.
      sig { returns(T.nilable(Float)) }
      attr_accessor :amount_charged

      # ISO 8601 timestamp when the asset reached a terminal state. `null` while
      # `processing`.
      sig { returns(T.nilable(String)) }
      attr_accessor :completed_at

      # ISO 8601 timestamp when the generation was requested.
      sig { returns(String) }
      attr_accessor :created_at

      # Currency of `amount_charged`. Always `usd`.
      sig { returns(String) }
      attr_accessor :currency

      # Why generation failed. `null` unless status is `failed`.
      sig { returns(T.nilable(String)) }
      attr_accessor :error_message

      # The produced file, usable anywhere attachments are accepted. `null` until the
      # asset is `ready`.
      sig { returns(T.nilable(WhopSDK::MediaAsset::File)) }
      attr_reader :file

      sig { params(file: T.nilable(WhopSDK::MediaAsset::File::OrHash)).void }
      attr_writer :file

      # The inputs the asset was generated from.
      sig { returns(WhopSDK::MediaAsset::Generation) }
      attr_reader :generation

      sig { params(generation: WhopSDK::MediaAsset::Generation::OrHash).void }
      attr_writer :generation

      # The kind of media this asset holds.
      sig { returns(WhopSDK::MediaAsset::MediaType::TaggedSymbol) }
      attr_accessor :media_type

      # How the asset was created. Always `generated`.
      sig { returns(WhopSDK::MediaAsset::Source::TaggedSymbol) }
      attr_accessor :source

      # Lifecycle state: `processing` while generation runs, `ready` when the file is
      # available, `failed` when generation failed and the charge was refunded.
      sig { returns(WhopSDK::MediaAsset::Status::TaggedSymbol) }
      attr_accessor :status

      sig do
        params(
          id: String,
          amount_charged: T.nilable(Float),
          completed_at: T.nilable(String),
          created_at: String,
          currency: String,
          error_message: T.nilable(String),
          file: T.nilable(WhopSDK::MediaAsset::File::OrHash),
          generation: WhopSDK::MediaAsset::Generation::OrHash,
          media_type: WhopSDK::MediaAsset::MediaType::OrSymbol,
          source: WhopSDK::MediaAsset::Source::OrSymbol,
          status: WhopSDK::MediaAsset::Status::OrSymbol
        ).returns(T.attached_class)
      end
      def self.new(
        # Media asset ID, prefixed `media_`.
        id:,
        # USD amount charged to the account's balance for this generation. `null` if the
        # generation wasn't billed.
        amount_charged:,
        # ISO 8601 timestamp when the asset reached a terminal state. `null` while
        # `processing`.
        completed_at:,
        # ISO 8601 timestamp when the generation was requested.
        created_at:,
        # Currency of `amount_charged`. Always `usd`.
        currency:,
        # Why generation failed. `null` unless status is `failed`.
        error_message:,
        # The produced file, usable anywhere attachments are accepted. `null` until the
        # asset is `ready`.
        file:,
        # The inputs the asset was generated from.
        generation:,
        # The kind of media this asset holds.
        media_type:,
        # How the asset was created. Always `generated`.
        source:,
        # Lifecycle state: `processing` while generation runs, `ready` when the file is
        # available, `failed` when generation failed and the charge was refunded.
        status:
      )
      end

      sig do
        override.returns(
          {
            id: String,
            amount_charged: T.nilable(Float),
            completed_at: T.nilable(String),
            created_at: String,
            currency: String,
            error_message: T.nilable(String),
            file: T.nilable(WhopSDK::MediaAsset::File),
            generation: WhopSDK::MediaAsset::Generation,
            media_type: WhopSDK::MediaAsset::MediaType::TaggedSymbol,
            source: WhopSDK::MediaAsset::Source::TaggedSymbol,
            status: WhopSDK::MediaAsset::Status::TaggedSymbol
          }
        )
      end
      def to_hash
      end

      class File < WhopSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(WhopSDK::MediaAsset::File, WhopSDK::Internal::AnyHash)
          end

        # File ID, prefixed `file_`.
        sig { returns(String) }
        attr_accessor :id

        # CDN URL for downloading the file.
        sig { returns(String) }
        attr_accessor :url

        # The produced file, usable anywhere attachments are accepted. `null` until the
        # asset is `ready`.
        sig { params(id: String, url: String).returns(T.attached_class) }
        def self.new(
          # File ID, prefixed `file_`.
          id:,
          # CDN URL for downloading the file.
          url:
        )
        end

        sig { override.returns({ id: String, url: String }) }
        def to_hash
        end
      end

      class Generation < WhopSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(WhopSDK::MediaAsset::Generation, WhopSDK::Internal::AnyHash)
          end

        # Requested video length in seconds. `null` for images.
        sig { returns(T.nilable(Float)) }
        attr_accessor :duration_seconds

        # What the asset was generated from.
        sig { returns(String) }
        attr_accessor :prompt

        sig { returns(T::Array[String]) }
        attr_accessor :reference_media

        # Requested video resolution. `null` for images. `1080p` is not supported by
        # Seedance 2.0 Fast or Mini; `4k` is only supported by Seedance 2.0.
        sig do
          returns(
            T.nilable(WhopSDK::MediaAsset::Generation::Resolution::TaggedSymbol)
          )
        end
        attr_accessor :resolution

        # The inputs the asset was generated from.
        sig do
          params(
            duration_seconds: T.nilable(Float),
            prompt: String,
            reference_media: T::Array[String],
            resolution:
              T.nilable(WhopSDK::MediaAsset::Generation::Resolution::OrSymbol)
          ).returns(T.attached_class)
        end
        def self.new(
          # Requested video length in seconds. `null` for images.
          duration_seconds:,
          # What the asset was generated from.
          prompt:,
          reference_media:,
          # Requested video resolution. `null` for images. `1080p` is not supported by
          # Seedance 2.0 Fast or Mini; `4k` is only supported by Seedance 2.0.
          resolution:
        )
        end

        sig do
          override.returns(
            {
              duration_seconds: T.nilable(Float),
              prompt: String,
              reference_media: T::Array[String],
              resolution:
                T.nilable(
                  WhopSDK::MediaAsset::Generation::Resolution::TaggedSymbol
                )
            }
          )
        end
        def to_hash
        end

        # Requested video resolution. `null` for images. `1080p` is not supported by
        # Seedance 2.0 Fast or Mini; `4k` is only supported by Seedance 2.0.
        module Resolution
          extend WhopSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, WhopSDK::MediaAsset::Generation::Resolution)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          RESOLUTION_480P =
            T.let(
              :"480p",
              WhopSDK::MediaAsset::Generation::Resolution::TaggedSymbol
            )
          RESOLUTION_720P =
            T.let(
              :"720p",
              WhopSDK::MediaAsset::Generation::Resolution::TaggedSymbol
            )
          RESOLUTION_1080P =
            T.let(
              :"1080p",
              WhopSDK::MediaAsset::Generation::Resolution::TaggedSymbol
            )
          RESOLUTION_4K =
            T.let(
              :"4k",
              WhopSDK::MediaAsset::Generation::Resolution::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                WhopSDK::MediaAsset::Generation::Resolution::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end
      end

      # The kind of media this asset holds.
      module MediaType
        extend WhopSDK::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, WhopSDK::MediaAsset::MediaType) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        VIDEO = T.let(:video, WhopSDK::MediaAsset::MediaType::TaggedSymbol)
        IMAGE = T.let(:image, WhopSDK::MediaAsset::MediaType::TaggedSymbol)

        sig do
          override.returns(
            T::Array[WhopSDK::MediaAsset::MediaType::TaggedSymbol]
          )
        end
        def self.values
        end
      end

      # How the asset was created. Always `generated`.
      module Source
        extend WhopSDK::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, WhopSDK::MediaAsset::Source) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        GENERATED = T.let(:generated, WhopSDK::MediaAsset::Source::TaggedSymbol)

        sig do
          override.returns(T::Array[WhopSDK::MediaAsset::Source::TaggedSymbol])
        end
        def self.values
        end
      end

      # Lifecycle state: `processing` while generation runs, `ready` when the file is
      # available, `failed` when generation failed and the charge was refunded.
      module Status
        extend WhopSDK::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, WhopSDK::MediaAsset::Status) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        PROCESSING =
          T.let(:processing, WhopSDK::MediaAsset::Status::TaggedSymbol)
        READY = T.let(:ready, WhopSDK::MediaAsset::Status::TaggedSymbol)
        FAILED = T.let(:failed, WhopSDK::MediaAsset::Status::TaggedSymbol)

        sig do
          override.returns(T::Array[WhopSDK::MediaAsset::Status::TaggedSymbol])
        end
        def self.values
        end
      end
    end
  end
end
