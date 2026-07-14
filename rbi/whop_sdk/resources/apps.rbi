# typed: strong

module WhopSDK
  module Resources
    # An App is software you build on Whop. It can be a hosted web app served at
    # `<route>.whop.app` or an API integration installed as an experience, and it
    # belongs to the account that owns its credentials, settings, builds, and runtime
    # logs.
    #
    # Use the Apps API to manage app configuration and, for hosted apps, read server
    # runtime logs for console output, uncaught exceptions, and failed requests. Logs
    # are retained for 7 days and can be filtered by build, level, time window, and
    # message text.
    class Apps
      # Register a new app on the Whop developer platform. Apps provide custom
      # experiences that can be added to products.
      #
      # Required permissions:
      #
      # - `developer:create_app`
      # - `developer:manage_api_key`
      # - `developer:update_app`
      sig do
        params(
          company_id: String,
          name: String,
          base_url: T.nilable(String),
          icon: T.nilable(WhopSDK::AppCreateParams::Icon::OrHash),
          redirect_uris: T.nilable(T::Array[String]),
          route: T.nilable(String),
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
        # The unique subdomain route where the app's hosted web builds are served, such as
        # 'myapp' for myapp.whop.app.
        route: nil,
        request_options: {}
      )
      end

      # Retrieves the details of an existing app.
      #
      # Required permissions:
      #
      # - `developer:manage_api_key`
      # - `developer:update_app`
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
          oauth_client_type:
            T.nilable(WhopSDK::AppUpdateParams::OAuthClientType::OrSymbol),
          openapi_path: T.nilable(String),
          redirect_uris: T.nilable(T::Array[String]),
          required_scopes:
            T.nilable(
              T::Array[WhopSDK::AppUpdateParams::RequiredScope::OrSymbol]
            ),
          route: T.nilable(String),
          secrets: T.nilable(T::Hash[Symbol, T.anything]),
          skills_path: T.nilable(String),
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
        # How this app authenticates at the OAuth token endpoint.
        oauth_client_type: nil,
        # The URL path to the OpenAPI spec file of the app, such as
        # '/assets/openapi.json'.
        openapi_path: nil,
        # The whitelisted OAuth callback URLs that users are redirected to after
        # authorizing the app
        redirect_uris: nil,
        # The permission scopes the app will request from users when they install it.
        required_scopes: nil,
        # The unique subdomain route where the app's hosted web builds are served, such as
        # 'myapp' for myapp.whop.app.
        route: nil,
        # Secrets to add or overwrite on the app, as an object of string values (e.g.
        # {"MAIL_API_KEY": "..."}). Keys not included are left untouched. Pass null or an
        # empty string as the value to delete a secret. Secrets are encrypted at rest and
        # injected into the app's hosted server runtime as environment bindings.
        secrets: nil,
        # The URL path to the skills directory of the app, such as '/assets/skills/'.
        skills_path: nil,
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

      # Lists a hosted app's server runtime logs, most recent first: console output,
      # uncaught exceptions, and failed-request summaries captured on whop.app hosting.
      # Logs are retained for 7 days.
      sig do
        params(
          id: String,
          after: String,
          app_build_id: String,
          before: String,
          created_after: Time,
          created_before: Time,
          first: Integer,
          level: WhopSDK::AppLogsParams::Level::OrSymbol,
          query: String,
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(WhopSDK::Models::AppLogsResponse)
      end
      def logs(
        # The ID of the app, which will look like app\_******\*******.
        id,
        # A cursor for fetching logs after a previous page.
        after: nil,
        # Only return logs from this build.
        app_build_id: nil,
        # A cursor for fetching logs before a later page.
        before: nil,
        # Start of the time window as an ISO 8601 timestamp. Defaults to 7 days before
        # created_before.
        created_after: nil,
        # End of the time window as an ISO 8601 timestamp. Defaults to now.
        created_before: nil,
        # The number of log lines to return (max 500).
        first: nil,
        # Only return console lines of this level.
        level: nil,
        # Only return logs whose message contains this text (case-insensitive).
        query: nil,
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
