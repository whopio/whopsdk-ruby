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

      # The unique identifier of the app to list builds for.
      sig { returns(String) }
      attr_accessor :app_id

      # Returns the elements in the list that come after the specified cursor.
      sig { returns(T.nilable(String)) }
      attr_reader :after

      sig { params(after: String).void }
      attr_writer :after

      # Returns the elements in the list that come before the specified cursor.
      sig { returns(T.nilable(String)) }
      attr_reader :before

      sig { params(before: String).void }
      attr_writer :before

      # Only return builds created after this timestamp.
      sig { returns(T.nilable(Time)) }
      attr_reader :created_after

      sig { params(created_after: Time).void }
      attr_writer :created_after

      # Only return builds created before this timestamp.
      sig { returns(T.nilable(Time)) }
      attr_reader :created_before

      sig { params(created_before: Time).void }
      attr_writer :created_before

      # Returns the first _n_ elements from the list.
      sig { returns(T.nilable(Integer)) }
      attr_reader :first

      sig { params(first: Integer).void }
      attr_writer :first

      # Returns the last _n_ elements from the list.
      sig { returns(T.nilable(Integer)) }
      attr_reader :last

      sig { params(last: Integer).void }
      attr_writer :last

      # Filter builds by target platform.
      sig { returns(T.nilable(WhopSDK::AppBuildPlatforms::OrSymbol)) }
      attr_reader :platform

      sig { params(platform: WhopSDK::AppBuildPlatforms::OrSymbol).void }
      attr_writer :platform

      # Filter builds by review status.
      sig { returns(T.nilable(WhopSDK::AppBuildStatuses::OrSymbol)) }
      attr_reader :status

      sig { params(status: WhopSDK::AppBuildStatuses::OrSymbol).void }
      attr_writer :status

      sig do
        params(
          app_id: String,
          after: String,
          before: String,
          created_after: Time,
          created_before: Time,
          first: Integer,
          last: Integer,
          platform: WhopSDK::AppBuildPlatforms::OrSymbol,
          status: WhopSDK::AppBuildStatuses::OrSymbol,
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # The unique identifier of the app to list builds for.
        app_id:,
        # Returns the elements in the list that come after the specified cursor.
        after: nil,
        # Returns the elements in the list that come before the specified cursor.
        before: nil,
        # Only return builds created after this timestamp.
        created_after: nil,
        # Only return builds created before this timestamp.
        created_before: nil,
        # Returns the first _n_ elements from the list.
        first: nil,
        # Returns the last _n_ elements from the list.
        last: nil,
        # Filter builds by target platform.
        platform: nil,
        # Filter builds by review status.
        status: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            app_id: String,
            after: String,
            before: String,
            created_after: Time,
            created_before: Time,
            first: Integer,
            last: Integer,
            platform: WhopSDK::AppBuildPlatforms::OrSymbol,
            status: WhopSDK::AppBuildStatuses::OrSymbol,
            request_options: WhopSDK::RequestOptions
          }
        )
      end
      def to_hash
      end
    end
  end
end
