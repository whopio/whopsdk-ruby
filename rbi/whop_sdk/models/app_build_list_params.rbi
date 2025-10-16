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

      # The ID of the app to filter app builds by
      sig { returns(String) }
      attr_accessor :app_id

      # Returns the elements in the list that come after the specified cursor.
      sig { returns(T.nilable(String)) }
      attr_accessor :after

      # Returns the elements in the list that come before the specified cursor.
      sig { returns(T.nilable(String)) }
      attr_accessor :before

      # Returns the first _n_ elements from the list.
      sig { returns(T.nilable(Integer)) }
      attr_accessor :first

      # Returns the last _n_ elements from the list.
      sig { returns(T.nilable(Integer)) }
      attr_accessor :last

      # The different platforms an app build can target.
      sig { returns(T.nilable(WhopSDK::AppBuildPlatforms::OrSymbol)) }
      attr_accessor :platform

      # The different statuses an AppBuild can be in.
      sig { returns(T.nilable(WhopSDK::AppBuildStatuses::OrSymbol)) }
      attr_accessor :status

      sig do
        params(
          app_id: String,
          after: T.nilable(String),
          before: T.nilable(String),
          first: T.nilable(Integer),
          last: T.nilable(Integer),
          platform: T.nilable(WhopSDK::AppBuildPlatforms::OrSymbol),
          status: T.nilable(WhopSDK::AppBuildStatuses::OrSymbol),
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # The ID of the app to filter app builds by
        app_id:,
        # Returns the elements in the list that come after the specified cursor.
        after: nil,
        # Returns the elements in the list that come before the specified cursor.
        before: nil,
        # Returns the first _n_ elements from the list.
        first: nil,
        # Returns the last _n_ elements from the list.
        last: nil,
        # The different platforms an app build can target.
        platform: nil,
        # The different statuses an AppBuild can be in.
        status: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            app_id: String,
            after: T.nilable(String),
            before: T.nilable(String),
            first: T.nilable(Integer),
            last: T.nilable(Integer),
            platform: T.nilable(WhopSDK::AppBuildPlatforms::OrSymbol),
            status: T.nilable(WhopSDK::AppBuildStatuses::OrSymbol),
            request_options: WhopSDK::RequestOptions
          }
        )
      end
      def to_hash
      end
    end
  end
end
