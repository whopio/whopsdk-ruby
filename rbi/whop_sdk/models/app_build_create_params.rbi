# typed: strong

module WhopSDK
  module Models
    class AppBuildCreateParams < WhopSDK::Internal::Type::BaseModel
      extend WhopSDK::Internal::Type::RequestParameters::Converter
      include WhopSDK::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(WhopSDK::AppBuildCreateParams, WhopSDK::Internal::AnyHash)
        end

      # The uploaded build file: `{ id }` for an existing file or `{ direct_upload_id }`
      # for a completed direct upload.
      sig { returns(WhopSDK::AppBuildCreateParams::Attachment) }
      attr_reader :attachment

      sig do
        params(
          attachment: WhopSDK::AppBuildCreateParams::Attachment::OrHash
        ).void
      end
      attr_writer :attachment

      # A client-generated checksum of the build file, used to verify file integrity
      # when unpacked.
      sig { returns(String) }
      attr_accessor :checksum

      # The target platform for the build.
      sig { returns(WhopSDK::AppBuildCreateParams::Platform::OrSymbol) }
      attr_accessor :platform

      # The AI prompt that generated this build, if applicable.
      sig { returns(T.nilable(String)) }
      attr_reader :ai_prompt_id

      sig { params(ai_prompt_id: String).void }
      attr_writer :ai_prompt_id

      # The app to create the build for, prefixed `app_`. Defaults to the app behind the
      # presented credential.
      sig { returns(T.nilable(String)) }
      attr_reader :app_id

      sig { params(app_id: String).void }
      attr_writer :app_id

      # An optional compressed archive (.zip or .gz) of the source code that produced
      # this build, stored alongside the build so it can be downloaded later. Referenced
      # like `attachment`, and must be a different file.
      sig do
        returns(T.nilable(WhopSDK::AppBuildCreateParams::SourceAttachment))
      end
      attr_reader :source_attachment

      sig do
        params(
          source_attachment:
            WhopSDK::AppBuildCreateParams::SourceAttachment::OrHash
        ).void
      end
      attr_writer :source_attachment

      # The view types this build supports. Only list the ones its code implements.
      sig do
        returns(
          T.nilable(
            T::Array[
              WhopSDK::AppBuildCreateParams::SupportedAppViewType::OrSymbol
            ]
          )
        )
      end
      attr_reader :supported_app_view_types

      sig do
        params(
          supported_app_view_types:
            T::Array[
              WhopSDK::AppBuildCreateParams::SupportedAppViewType::OrSymbol
            ]
        ).void
      end
      attr_writer :supported_app_view_types

      sig { returns(T.nilable(String)) }
      attr_reader :api_version_date

      sig { params(api_version_date: String).void }
      attr_writer :api_version_date

      sig { returns(T.nilable(String)) }
      attr_reader :idempotency_key

      sig { params(idempotency_key: String).void }
      attr_writer :idempotency_key

      sig do
        params(
          attachment: WhopSDK::AppBuildCreateParams::Attachment::OrHash,
          checksum: String,
          platform: WhopSDK::AppBuildCreateParams::Platform::OrSymbol,
          ai_prompt_id: String,
          app_id: String,
          source_attachment:
            WhopSDK::AppBuildCreateParams::SourceAttachment::OrHash,
          supported_app_view_types:
            T::Array[
              WhopSDK::AppBuildCreateParams::SupportedAppViewType::OrSymbol
            ],
          api_version_date: String,
          idempotency_key: String,
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # The uploaded build file: `{ id }` for an existing file or `{ direct_upload_id }`
        # for a completed direct upload.
        attachment:,
        # A client-generated checksum of the build file, used to verify file integrity
        # when unpacked.
        checksum:,
        # The target platform for the build.
        platform:,
        # The AI prompt that generated this build, if applicable.
        ai_prompt_id: nil,
        # The app to create the build for, prefixed `app_`. Defaults to the app behind the
        # presented credential.
        app_id: nil,
        # An optional compressed archive (.zip or .gz) of the source code that produced
        # this build, stored alongside the build so it can be downloaded later. Referenced
        # like `attachment`, and must be a different file.
        source_attachment: nil,
        # The view types this build supports. Only list the ones its code implements.
        supported_app_view_types: nil,
        api_version_date: nil,
        idempotency_key: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            attachment: WhopSDK::AppBuildCreateParams::Attachment,
            checksum: String,
            platform: WhopSDK::AppBuildCreateParams::Platform::OrSymbol,
            ai_prompt_id: String,
            app_id: String,
            source_attachment: WhopSDK::AppBuildCreateParams::SourceAttachment,
            supported_app_view_types:
              T::Array[
                WhopSDK::AppBuildCreateParams::SupportedAppViewType::OrSymbol
              ],
            api_version_date: String,
            idempotency_key: String,
            request_options: WhopSDK::RequestOptions
          }
        )
      end
      def to_hash
      end

      class Attachment < WhopSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              WhopSDK::AppBuildCreateParams::Attachment,
              WhopSDK::Internal::AnyHash
            )
          end

        # The tag of an already-uploaded file.
        sig { returns(T.nilable(String)) }
        attr_reader :id

        sig { params(id: String).void }
        attr_writer :id

        # The signed id of a completed direct upload.
        sig { returns(T.nilable(String)) }
        attr_reader :direct_upload_id

        sig { params(direct_upload_id: String).void }
        attr_writer :direct_upload_id

        # The uploaded build file: `{ id }` for an existing file or `{ direct_upload_id }`
        # for a completed direct upload.
        sig do
          params(id: String, direct_upload_id: String).returns(T.attached_class)
        end
        def self.new(
          # The tag of an already-uploaded file.
          id: nil,
          # The signed id of a completed direct upload.
          direct_upload_id: nil
        )
        end

        sig { override.returns({ id: String, direct_upload_id: String }) }
        def to_hash
        end
      end

      # The target platform for the build.
      module Platform
        extend WhopSDK::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, WhopSDK::AppBuildCreateParams::Platform)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        IOS = T.let(:ios, WhopSDK::AppBuildCreateParams::Platform::TaggedSymbol)
        ANDROID =
          T.let(:android, WhopSDK::AppBuildCreateParams::Platform::TaggedSymbol)
        WEB = T.let(:web, WhopSDK::AppBuildCreateParams::Platform::TaggedSymbol)

        sig do
          override.returns(
            T::Array[WhopSDK::AppBuildCreateParams::Platform::TaggedSymbol]
          )
        end
        def self.values
        end
      end

      class SourceAttachment < WhopSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              WhopSDK::AppBuildCreateParams::SourceAttachment,
              WhopSDK::Internal::AnyHash
            )
          end

        # The tag of an already-uploaded file.
        sig { returns(T.nilable(String)) }
        attr_reader :id

        sig { params(id: String).void }
        attr_writer :id

        # The signed id of a completed direct upload.
        sig { returns(T.nilable(String)) }
        attr_reader :direct_upload_id

        sig { params(direct_upload_id: String).void }
        attr_writer :direct_upload_id

        # An optional compressed archive (.zip or .gz) of the source code that produced
        # this build, stored alongside the build so it can be downloaded later. Referenced
        # like `attachment`, and must be a different file.
        sig do
          params(id: String, direct_upload_id: String).returns(T.attached_class)
        end
        def self.new(
          # The tag of an already-uploaded file.
          id: nil,
          # The signed id of a completed direct upload.
          direct_upload_id: nil
        )
        end

        sig { override.returns({ id: String, direct_upload_id: String }) }
        def to_hash
        end
      end

      module SupportedAppViewType
        extend WhopSDK::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, WhopSDK::AppBuildCreateParams::SupportedAppViewType)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        HUB =
          T.let(
            :hub,
            WhopSDK::AppBuildCreateParams::SupportedAppViewType::TaggedSymbol
          )
        DISCOVER =
          T.let(
            :discover,
            WhopSDK::AppBuildCreateParams::SupportedAppViewType::TaggedSymbol
          )
        DASH =
          T.let(
            :dash,
            WhopSDK::AppBuildCreateParams::SupportedAppViewType::TaggedSymbol
          )
        DASHBOARD =
          T.let(
            :dashboard,
            WhopSDK::AppBuildCreateParams::SupportedAppViewType::TaggedSymbol
          )
        ANALYTICS =
          T.let(
            :analytics,
            WhopSDK::AppBuildCreateParams::SupportedAppViewType::TaggedSymbol
          )
        SKILLS =
          T.let(
            :skills,
            WhopSDK::AppBuildCreateParams::SupportedAppViewType::TaggedSymbol
          )
        OPENAPI =
          T.let(
            :openapi,
            WhopSDK::AppBuildCreateParams::SupportedAppViewType::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              WhopSDK::AppBuildCreateParams::SupportedAppViewType::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
