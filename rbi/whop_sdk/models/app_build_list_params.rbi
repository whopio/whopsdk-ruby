# typed: strong

module WhopSDK
  module Models
    class AppBuildListParams < WhopSDK::Internal::Type::BaseModel
      extend WhopSDK::Internal::Type::RequestParameters::Converter
      include WhopSDK::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(WhopSDK::AppBuildListParams, WhopSDK::Internal::AnyHash)
        end

      # The app to list builds for, prefixed `app_`.
      sig { returns(String) }
      attr_accessor :app_id

      # A cursor; returns builds after this position.
      sig { returns(T.nilable(String)) }
      attr_reader :after

      sig { params(after: String).void }
      attr_writer :after

      # A cursor; returns builds before this position.
      sig { returns(T.nilable(String)) }
      attr_reader :before

      sig { params(before: String).void }
      attr_writer :before

      # Only return builds created after this ISO 8601 timestamp.
      sig do
        returns(T.nilable(WhopSDK::AppBuildListParams::CreatedAfter::Variants))
      end
      attr_reader :created_after

      sig do
        params(
          created_after: WhopSDK::AppBuildListParams::CreatedAfter::Variants
        ).void
      end
      attr_writer :created_after

      # Only return builds created before this ISO 8601 timestamp.
      sig do
        returns(T.nilable(WhopSDK::AppBuildListParams::CreatedBefore::Variants))
      end
      attr_reader :created_before

      sig do
        params(
          created_before: WhopSDK::AppBuildListParams::CreatedBefore::Variants
        ).void
      end
      attr_writer :created_before

      # The number of builds to return (default 20, max 100).
      sig { returns(T.nilable(Integer)) }
      attr_reader :first

      sig { params(first: Integer).void }
      attr_writer :first

      # The number of builds to return from the end of the range.
      sig { returns(T.nilable(Integer)) }
      attr_reader :last

      sig { params(last: Integer).void }
      attr_writer :last

      # Filter builds by target platform.
      sig do
        returns(T.nilable(WhopSDK::AppBuildListParams::Platform::OrSymbol))
      end
      attr_reader :platform

      sig do
        params(platform: WhopSDK::AppBuildListParams::Platform::OrSymbol).void
      end
      attr_writer :platform

      # Filter builds by review status.
      sig { returns(T.nilable(WhopSDK::AppBuildListParams::Status::OrSymbol)) }
      attr_reader :status

      sig { params(status: WhopSDK::AppBuildListParams::Status::OrSymbol).void }
      attr_writer :status

      sig { returns(T.nilable(String)) }
      attr_reader :api_version_date

      sig { params(api_version_date: String).void }
      attr_writer :api_version_date

      sig do
        params(
          app_id: String,
          after: String,
          before: String,
          created_after: WhopSDK::AppBuildListParams::CreatedAfter::Variants,
          created_before: WhopSDK::AppBuildListParams::CreatedBefore::Variants,
          first: Integer,
          last: Integer,
          platform: WhopSDK::AppBuildListParams::Platform::OrSymbol,
          status: WhopSDK::AppBuildListParams::Status::OrSymbol,
          api_version_date: String,
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # The app to list builds for, prefixed `app_`.
        app_id:,
        # A cursor; returns builds after this position.
        after: nil,
        # A cursor; returns builds before this position.
        before: nil,
        # Only return builds created after this ISO 8601 timestamp.
        created_after: nil,
        # Only return builds created before this ISO 8601 timestamp.
        created_before: nil,
        # The number of builds to return (default 20, max 100).
        first: nil,
        # The number of builds to return from the end of the range.
        last: nil,
        # Filter builds by target platform.
        platform: nil,
        # Filter builds by review status.
        status: nil,
        api_version_date: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            app_id: String,
            after: String,
            before: String,
            created_after: WhopSDK::AppBuildListParams::CreatedAfter::Variants,
            created_before:
              WhopSDK::AppBuildListParams::CreatedBefore::Variants,
            first: Integer,
            last: Integer,
            platform: WhopSDK::AppBuildListParams::Platform::OrSymbol,
            status: WhopSDK::AppBuildListParams::Status::OrSymbol,
            api_version_date: String,
            request_options: WhopSDK::RequestOptions
          }
        )
      end
      def to_hash
      end

      # Only return builds created after this ISO 8601 timestamp.
      module CreatedAfter
        extend WhopSDK::Internal::Type::Union

        Variants = T.type_alias { T.any(Integer, String) }

        sig do
          override.returns(
            T::Array[WhopSDK::AppBuildListParams::CreatedAfter::Variants]
          )
        end
        def self.variants
        end
      end

      # Only return builds created before this ISO 8601 timestamp.
      module CreatedBefore
        extend WhopSDK::Internal::Type::Union

        Variants = T.type_alias { T.any(Integer, String) }

        sig do
          override.returns(
            T::Array[WhopSDK::AppBuildListParams::CreatedBefore::Variants]
          )
        end
        def self.variants
        end
      end

      # Filter builds by target platform.
      module Platform
        extend WhopSDK::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, WhopSDK::AppBuildListParams::Platform) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        IOS = T.let(:ios, WhopSDK::AppBuildListParams::Platform::TaggedSymbol)
        ANDROID =
          T.let(:android, WhopSDK::AppBuildListParams::Platform::TaggedSymbol)
        WEB = T.let(:web, WhopSDK::AppBuildListParams::Platform::TaggedSymbol)

        sig do
          override.returns(
            T::Array[WhopSDK::AppBuildListParams::Platform::TaggedSymbol]
          )
        end
        def self.values
        end
      end

      # Filter builds by review status.
      module Status
        extend WhopSDK::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, WhopSDK::AppBuildListParams::Status) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        DRAFT = T.let(:draft, WhopSDK::AppBuildListParams::Status::TaggedSymbol)
        PENDING =
          T.let(:pending, WhopSDK::AppBuildListParams::Status::TaggedSymbol)
        APPROVED =
          T.let(:approved, WhopSDK::AppBuildListParams::Status::TaggedSymbol)
        REJECTED =
          T.let(:rejected, WhopSDK::AppBuildListParams::Status::TaggedSymbol)

        sig do
          override.returns(
            T::Array[WhopSDK::AppBuildListParams::Status::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
