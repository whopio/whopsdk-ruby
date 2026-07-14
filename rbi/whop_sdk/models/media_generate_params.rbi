# typed: strong

module WhopSDK
  module Models
    class MediaGenerateParams < WhopSDK::Internal::Type::BaseModel
      extend WhopSDK::Internal::Type::RequestParameters::Converter
      include WhopSDK::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(WhopSDK::MediaGenerateParams, WhopSDK::Internal::AnyHash)
        end

      # What to generate. Up to 2,000 characters.
      sig { returns(String) }
      attr_accessor :prompt

      # The kind of media to generate.
      sig { returns(WhopSDK::MediaGenerateParams::Type::OrSymbol) }
      attr_accessor :type

      # Account ID, prefixed `biz_`. Defaults to the account the API key belongs to.
      sig { returns(T.nilable(String)) }
      attr_reader :account_id

      sig { params(account_id: String).void }
      attr_writer :account_id

      # Video length in seconds. Video only; defaults to 5.
      sig do
        returns(
          T.nilable(WhopSDK::MediaGenerateParams::DurationSeconds::OrInteger)
        )
      end
      attr_reader :duration_seconds

      sig do
        params(
          duration_seconds:
            WhopSDK::MediaGenerateParams::DurationSeconds::OrInteger
        ).void
      end
      attr_writer :duration_seconds

      # Optional reference image file IDs (`file_` prefixed), up to 4. For video, a
      # single reference seeds the opening frame; multiple references guide subject and
      # style instead.
      sig { returns(T.nilable(T::Array[String])) }
      attr_reader :reference_media

      sig { params(reference_media: T::Array[String]).void }
      attr_writer :reference_media

      # Video resolution. Video only; defaults to `1080p`. `1080p` is not supported by
      # Seedance 2.0 Fast or Mini; `4k` is only supported by Seedance 2.0.
      sig do
        returns(T.nilable(WhopSDK::MediaGenerateParams::Resolution::OrSymbol))
      end
      attr_reader :resolution

      sig do
        params(
          resolution: WhopSDK::MediaGenerateParams::Resolution::OrSymbol
        ).void
      end
      attr_writer :resolution

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
        ).returns(T.attached_class)
      end
      def self.new(
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

      sig do
        override.returns(
          {
            prompt: String,
            type: WhopSDK::MediaGenerateParams::Type::OrSymbol,
            account_id: String,
            duration_seconds:
              WhopSDK::MediaGenerateParams::DurationSeconds::OrInteger,
            reference_media: T::Array[String],
            resolution: WhopSDK::MediaGenerateParams::Resolution::OrSymbol,
            request_options: WhopSDK::RequestOptions
          }
        )
      end
      def to_hash
      end

      # The kind of media to generate.
      module Type
        extend WhopSDK::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, WhopSDK::MediaGenerateParams::Type) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        VIDEO = T.let(:video, WhopSDK::MediaGenerateParams::Type::TaggedSymbol)
        IMAGE = T.let(:image, WhopSDK::MediaGenerateParams::Type::TaggedSymbol)

        sig do
          override.returns(
            T::Array[WhopSDK::MediaGenerateParams::Type::TaggedSymbol]
          )
        end
        def self.values
        end
      end

      # Video length in seconds. Video only; defaults to 5.
      module DurationSeconds
        extend WhopSDK::Internal::Type::Enum

        TaggedInteger =
          T.type_alias do
            T.all(Integer, WhopSDK::MediaGenerateParams::DurationSeconds)
          end
        OrInteger = T.type_alias { Integer }

        DURATION_SECONDS_5 =
          T.let(5, WhopSDK::MediaGenerateParams::DurationSeconds::TaggedInteger)
        DURATION_SECONDS_10 =
          T.let(
            10,
            WhopSDK::MediaGenerateParams::DurationSeconds::TaggedInteger
          )
        DURATION_SECONDS_15 =
          T.let(
            15,
            WhopSDK::MediaGenerateParams::DurationSeconds::TaggedInteger
          )

        sig do
          override.returns(
            T::Array[
              WhopSDK::MediaGenerateParams::DurationSeconds::TaggedInteger
            ]
          )
        end
        def self.values
        end
      end

      # Video resolution. Video only; defaults to `1080p`. `1080p` is not supported by
      # Seedance 2.0 Fast or Mini; `4k` is only supported by Seedance 2.0.
      module Resolution
        extend WhopSDK::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, WhopSDK::MediaGenerateParams::Resolution)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        RESOLUTION_480P =
          T.let(:"480p", WhopSDK::MediaGenerateParams::Resolution::TaggedSymbol)
        RESOLUTION_720P =
          T.let(:"720p", WhopSDK::MediaGenerateParams::Resolution::TaggedSymbol)
        RESOLUTION_1080P =
          T.let(
            :"1080p",
            WhopSDK::MediaGenerateParams::Resolution::TaggedSymbol
          )
        RESOLUTION_4K =
          T.let(:"4k", WhopSDK::MediaGenerateParams::Resolution::TaggedSymbol)

        sig do
          override.returns(
            T::Array[WhopSDK::MediaGenerateParams::Resolution::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
