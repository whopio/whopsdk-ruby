# typed: strong

module WhopSDK
  module Models
    class AppBuild < WhopSDK::Internal::Type::BaseModel
      OrHash =
        T.type_alias { T.any(WhopSDK::AppBuild, WhopSDK::Internal::AnyHash) }

      # App build ID, prefixed `abld_`.
      sig { returns(String) }
      attr_accessor :id

      # Client-generated checksum of the build file, used to verify file integrity.
      sig { returns(String) }
      attr_accessor :checksum

      # When the build was uploaded, as an ISO 8601 timestamp.
      sig { returns(String) }
      attr_accessor :created_at

      # URL to download the uploaded build artifact.
      sig { returns(T.nilable(String)) }
      attr_accessor :file_url

      # Whether this build is the currently active production build for its platform.
      sig { returns(T::Boolean) }
      attr_accessor :is_production

      # The target platform for this build.
      sig { returns(WhopSDK::AppBuild::Platform::TaggedSymbol) }
      attr_accessor :platform

      # Feedback from the reviewer explaining a rejection, or `null` if the build has
      # not been reviewed or was approved.
      sig { returns(T.nilable(String)) }
      attr_accessor :review_message

      # URL to download the compressed source code archive that produced this build, or
      # `null` when the build was uploaded without a source archive.
      sig { returns(T.nilable(String)) }
      attr_accessor :source_url

      # The build's review status.
      sig { returns(WhopSDK::AppBuild::Status::TaggedSymbol) }
      attr_accessor :status

      sig do
        returns(T::Array[WhopSDK::AppBuild::SupportedAppViewType::TaggedSymbol])
      end
      attr_accessor :supported_app_view_types

      sig do
        params(
          id: String,
          checksum: String,
          created_at: String,
          file_url: T.nilable(String),
          is_production: T::Boolean,
          platform: WhopSDK::AppBuild::Platform::OrSymbol,
          review_message: T.nilable(String),
          source_url: T.nilable(String),
          status: WhopSDK::AppBuild::Status::OrSymbol,
          supported_app_view_types:
            T::Array[WhopSDK::AppBuild::SupportedAppViewType::OrSymbol]
        ).returns(T.attached_class)
      end
      def self.new(
        # App build ID, prefixed `abld_`.
        id:,
        # Client-generated checksum of the build file, used to verify file integrity.
        checksum:,
        # When the build was uploaded, as an ISO 8601 timestamp.
        created_at:,
        # URL to download the uploaded build artifact.
        file_url:,
        # Whether this build is the currently active production build for its platform.
        is_production:,
        # The target platform for this build.
        platform:,
        # Feedback from the reviewer explaining a rejection, or `null` if the build has
        # not been reviewed or was approved.
        review_message:,
        # URL to download the compressed source code archive that produced this build, or
        # `null` when the build was uploaded without a source archive.
        source_url:,
        # The build's review status.
        status:,
        supported_app_view_types:
      )
      end

      sig do
        override.returns(
          {
            id: String,
            checksum: String,
            created_at: String,
            file_url: T.nilable(String),
            is_production: T::Boolean,
            platform: WhopSDK::AppBuild::Platform::TaggedSymbol,
            review_message: T.nilable(String),
            source_url: T.nilable(String),
            status: WhopSDK::AppBuild::Status::TaggedSymbol,
            supported_app_view_types:
              T::Array[WhopSDK::AppBuild::SupportedAppViewType::TaggedSymbol]
          }
        )
      end
      def to_hash
      end

      # The target platform for this build.
      module Platform
        extend WhopSDK::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, WhopSDK::AppBuild::Platform) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        IOS = T.let(:ios, WhopSDK::AppBuild::Platform::TaggedSymbol)
        ANDROID = T.let(:android, WhopSDK::AppBuild::Platform::TaggedSymbol)
        WEB = T.let(:web, WhopSDK::AppBuild::Platform::TaggedSymbol)

        sig do
          override.returns(T::Array[WhopSDK::AppBuild::Platform::TaggedSymbol])
        end
        def self.values
        end
      end

      # The build's review status.
      module Status
        extend WhopSDK::Internal::Type::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, WhopSDK::AppBuild::Status) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        DRAFT = T.let(:draft, WhopSDK::AppBuild::Status::TaggedSymbol)
        PENDING = T.let(:pending, WhopSDK::AppBuild::Status::TaggedSymbol)
        APPROVED = T.let(:approved, WhopSDK::AppBuild::Status::TaggedSymbol)
        REJECTED = T.let(:rejected, WhopSDK::AppBuild::Status::TaggedSymbol)

        sig do
          override.returns(T::Array[WhopSDK::AppBuild::Status::TaggedSymbol])
        end
        def self.values
        end
      end

      # The view types this build supports, as declared by the developer.
      module SupportedAppViewType
        extend WhopSDK::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, WhopSDK::AppBuild::SupportedAppViewType)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        HUB = T.let(:hub, WhopSDK::AppBuild::SupportedAppViewType::TaggedSymbol)
        DISCOVER =
          T.let(
            :discover,
            WhopSDK::AppBuild::SupportedAppViewType::TaggedSymbol
          )
        DASH =
          T.let(:dash, WhopSDK::AppBuild::SupportedAppViewType::TaggedSymbol)
        DASHBOARD =
          T.let(
            :dashboard,
            WhopSDK::AppBuild::SupportedAppViewType::TaggedSymbol
          )
        ANALYTICS =
          T.let(
            :analytics,
            WhopSDK::AppBuild::SupportedAppViewType::TaggedSymbol
          )
        SKILLS =
          T.let(:skills, WhopSDK::AppBuild::SupportedAppViewType::TaggedSymbol)
        OPENAPI =
          T.let(:openapi, WhopSDK::AppBuild::SupportedAppViewType::TaggedSymbol)

        sig do
          override.returns(
            T::Array[WhopSDK::AppBuild::SupportedAppViewType::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
