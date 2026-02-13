# typed: strong

module WhopSDK
  module Resources
    class Apps
      # Register a new app on the Whop developer platform. Apps provide custom
      # experiences that can be added to products.
      #
      # Required permissions:
      #
      # - `developer:create_app`
      # - `developer:manage_api_key`
      sig do
        params(
          company_id: String,
          name: String,
          base_url: T.nilable(String),
          icon: T.nilable(WhopSDK::AppCreateParams::Icon::OrHash),
          redirect_uris: T.nilable(T::Array[String]),
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(WhopSDK::App)
      end
      def create(
        # The unique identifier of the company to create the app for, starting with
        # 'biz\_'.
        company_id:,
        # The display name for the app, shown to users on the app store and product pages.
        name:,
        # The base production URL where the app is hosted, such as
        # 'https://myapp.example.com'.
        base_url: nil,
        # The icon image for the app in PNG, JPEG, or GIF format.
        icon: nil,
        # The whitelisted OAuth callback URLs that users are redirected to after
        # authorizing the app.
        redirect_uris: nil,
        request_options: {}
      )
      end

      # Retrieves the details of an existing app.
      #
      # Required permissions:
      #
      # - `developer:manage_api_key`
      sig do
        params(
          id: String,
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(WhopSDK::App)
      end
      def retrieve(
        # The unique identifier of the app to retrieve.
        id,
        request_options: {}
      )
      end

      # Update the settings, metadata, or status of an existing app on the Whop
      # developer platform.
      #
      # Required permissions:
      #
      # - `developer:update_app`
      # - `developer:manage_api_key`
      sig do
        params(
          id: String,
          app_store_description: T.nilable(String),
          app_type: T.nilable(WhopSDK::AppType::OrSymbol),
          base_url: T.nilable(String),
          dashboard_path: T.nilable(String),
          description: T.nilable(String),
          discover_path: T.nilable(String),
          experience_path: T.nilable(String),
          icon: T.nilable(WhopSDK::AppUpdateParams::Icon::OrHash),
          name: T.nilable(String),
          redirect_uris: T.nilable(T::Array[String]),
          required_scopes:
            T.nilable(
              T::Array[WhopSDK::AppUpdateParams::RequiredScope::OrSymbol]
            ),
          status: T.nilable(WhopSDK::AppStatuses::OrSymbol),
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(WhopSDK::App)
      end
      def update(
        # The unique identifier of the app to update, starting with 'app\_'.
        id,
        # The detailed description shown on the app store's in-depth app view page.
        app_store_description: nil,
        # The type of end-user an app is built for
        app_type: nil,
        # The base production URL where the app is hosted, such as
        # 'https://myapp.example.com'.
        base_url: nil,
        # The URL path for the company dashboard view of the app, such as '/dashboard'.
        dashboard_path: nil,
        # A short description of the app shown in listings and search results.
        description: nil,
        # The URL path for the discover view of the app, such as '/discover'.
        discover_path: nil,
        # The URL path for the member-facing hub view of the app, such as
        # '/experiences/[experienceId]'.
        experience_path: nil,
        # The icon image for the app, used in listings and navigation.
        icon: nil,
        # The display name for the app, shown to users on the app store and product pages.
        name: nil,
        # The whitelisted OAuth callback URLs that users are redirected to after
        # authorizing the app
        redirect_uris: nil,
        # The permission scopes the app will request from users when they install it.
        required_scopes: nil,
        # The status of an experience interface
        status: nil,
        request_options: {}
      )
      end

      # Returns a paginated list of apps on the Whop platform, with optional filtering
      # by company, type, view support, and search query.
      sig do
        params(
          after: T.nilable(String),
          app_type: T.nilable(WhopSDK::AppType::OrSymbol),
          before: T.nilable(String),
          company_id: T.nilable(String),
          direction: T.nilable(WhopSDK::Direction::OrSymbol),
          first: T.nilable(Integer),
          last: T.nilable(Integer),
          order: T.nilable(WhopSDK::AppListParams::Order::OrSymbol),
          query: T.nilable(String),
          verified_apps_only: T.nilable(T::Boolean),
          view_type: T.nilable(WhopSDK::AppViewType::OrSymbol),
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(
          WhopSDK::Internal::CursorPage[WhopSDK::Models::AppListResponse]
        )
      end
      def list(
        # Returns the elements in the list that come after the specified cursor.
        after: nil,
        # The type of end-user an app is built for
        app_type: nil,
        # Returns the elements in the list that come before the specified cursor.
        before: nil,
        # Filter apps to only those created by this company, starting with 'biz\_'.
        company_id: nil,
        # The direction of the sort.
        direction: nil,
        # Returns the first _n_ elements from the list.
        first: nil,
        # Returns the last _n_ elements from the list.
        last: nil,
        # The order to fetch the apps in for discovery.
        order: nil,
        # A search string to filter apps by name, such as 'chat' or 'analytics'.
        query: nil,
        # Whether to only return apps that have been verified by Whop. Useful for
        # populating a featured apps section.
        verified_apps_only: nil,
        # The different types of an app view
        view_type: nil,
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
