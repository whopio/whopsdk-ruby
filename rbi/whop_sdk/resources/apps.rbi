# typed: strong

module WhopSDK
  module Resources
    # An App is software you build on Whop. It can be a hosted web app served at
    # `<route>.whop.site` or an API integration installed as an experience, and it
    # belongs to the account that owns its credentials, settings, builds, and runtime
    # logs.
    #
    # Use the Apps API to manage app configuration, deploy an app's working copy and
    # follow the run on the app's `deployment` field, and, for hosted apps, read
    # server runtime logs for console output, uncaught exceptions, and failed
    # requests. Logs are retained for 7 days and can be filtered by build, level, time
    # window, and message text.
    #
    # Apps are also reusable blueprints. List official blueprints with
    # `app_type=website&verified=true&order=template_usage`, or community blueprints
    # with `app_type=website&verified=false&recommended=true&order=template_usage`.
    # Pass the returned App `id` as `blueprint_id` when creating an Account.
    class Apps
      # Registers a new app on the Whop developer platform. Apps provide custom
      # experiences that can be added to products.
      sig do
        params(
          name: String,
          account_id: String,
          app_type: WhopSDK::AppCreateParams::AppType::OrSymbol,
          base_url: T.nilable(String),
          icon: WhopSDK::AppCreateParams::Icon::OrHash,
          redirect_uris: T::Array[String],
          route: T.nilable(String),
          api_version_date: String,
          idempotency_key: String,
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(WhopSDK::App)
      end
      def create(
        # Body param: The display name for the app, shown to users on the app store and
        # product pages.
        name:,
        # Body param: The account to create the app for (`biz_` tag). Defaults to the
        # account behind the presented credential.
        account_id: nil,
        # Body param: The type of app to create. Defaults to `b2c_app`.
        app_type: nil,
        # Body param: The base production URL where the app is hosted, such as
        # `https://myapp.example.com`.
        base_url: nil,
        # Body param: The icon image for the app in PNG, JPEG, or GIF format, referencing
        # an uploaded file: `{ id }` for an existing attachment or `{ direct_upload_id }`
        # for a new direct upload.
        icon: nil,
        # Body param: The whitelisted OAuth callback URLs that users are redirected to
        # after authorizing the app.
        redirect_uris: nil,
        # Body param: The subdomain route where the app's hosted web builds are served,
        # such as `myapp` for myapp.whop.site.
        route: nil,
        # Header param: Pins the request to a dated API version.
        api_version_date: nil,
        # Header param: A unique key that makes this request safe to retry. See
        # [Idempotent requests](https://docs.whop.com/developer/api/idempotency).
        idempotency_key: nil,
        request_options: {}
      )
      end

      # Retrieves an app by ID, claimed route, or proxy domain id. Credential fields
      # (api_key, default_api_key, secrets) render `null` unless the caller has the
      # corresponding developer permission on the owning account.
      sig do
        params(
          id: String,
          api_version_date: String,
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(WhopSDK::App)
      end
      def retrieve(
        # App ID (prefixed `app_`), the app's claimed route, or its proxy domain id.
        id,
        # Pins the request to a dated API version.
        api_version_date: nil,
        request_options: {}
      )
      end

      # Updates the settings, metadata, or status of an app. Fields that are omitted
      # keep their current value.
      sig do
        params(
          id: String,
          app_store_description: String,
          app_type: WhopSDK::AppUpdateParams::AppType::OrSymbol,
          base_url: T.nilable(String),
          dashboard_path: T.nilable(String),
          description: String,
          discover_path: T.nilable(String),
          experience_path: T.nilable(String),
          icon: WhopSDK::AppUpdateParams::Icon::OrHash,
          name: String,
          oauth_client_type:
            WhopSDK::AppUpdateParams::OAuthClientType::OrSymbol,
          openapi_path: T.nilable(String),
          production_android_build_id: T.nilable(String),
          production_ios_build_id: T.nilable(String),
          production_web_build_id: T.nilable(String),
          redirect_uris: T::Array[String],
          required_scopes: T::Array[String],
          route: String,
          secrets: T.anything,
          skills_path: T.nilable(String),
          status: WhopSDK::AppUpdateParams::Status::OrSymbol,
          api_version_date: String,
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(WhopSDK::App)
      end
      def update(
        # Path param: App ID (prefixed `app_`), the app's claimed route, or its proxy
        # domain id.
        id,
        # Body param: The detailed description shown on the app store's in-depth app view
        # page.
        app_store_description: nil,
        # Body param: The type of end-user the app is built for. Cannot be changed on an
        # app whose type is already `website`.
        app_type: nil,
        # Body param: The base production URL where the app is hosted. Set to `null` to
        # take the app proxy offline.
        base_url: nil,
        # Body param: The URL path for the account dashboard view.
        dashboard_path: nil,
        # Body param: A short description of the app shown in listings and search results.
        description: nil,
        # Body param: The URL path for the discover view.
        discover_path: nil,
        # Body param: The URL path for the member-facing hub view, such as
        # `/experiences/[experienceId]`.
        experience_path: nil,
        # Body param: The icon image for the app in PNG, JPEG, or GIF format, referencing
        # an uploaded file: `{ id }` for an existing attachment or `{ direct_upload_id }`
        # for a new direct upload.
        icon: nil,
        # Body param: The display name for the app, shown to users on the app store and
        # product pages.
        name: nil,
        # Body param: How the app authenticates at the OAuth token endpoint.
        oauth_client_type: nil,
        # Body param: The URL path to the app's OpenAPI spec file (requires the ai_chat
        # capability).
        openapi_path: nil,
        # Body param: The app build (`abld_` tag) to serve as the Android production
        # build, or `null` to unassign it. Same rules as `production_web_build_id`.
        production_android_build_id: nil,
        # Body param: The app build (`abld_` tag) to serve as the iOS production build, or
        # `null` to unassign it. Same rules as `production_web_build_id`.
        production_ios_build_id: nil,
        # Body param: The app build (`abld_` tag) to serve as the web production build, or
        # `null` to unassign it. The build must belong to this app, target web, and be in
        # the draft or approved status; a draft build is queued for approval and takes
        # over once approved. Requires the `developer:manage_builds` scope.
        production_web_build_id: nil,
        # Body param: The whitelisted OAuth callback URLs users are redirected to after
        # authorizing the app.
        redirect_uris: nil,
        # Body param: The OAuth scopes the app requests from users when they install it.
        required_scopes: nil,
        # Body param: The subdomain route where the app's hosted web builds are served.
        route: nil,
        # Body param: Secrets to add or overwrite on the app, as an object of string
        # values. Keys not included are left untouched; pass null or an empty string as
        # the value to delete a secret. Encrypted at rest and injected into the app's
        # hosted server runtime.
        secrets: nil,
        # Body param: The URL path to the app's skills directory (requires the ai_chat
        # capability).
        skills_path: nil,
        # Body param: Controls whether the app is published on Whop discovery or
        # accessible only through its direct link. Publishing requires a name, icon, and
        # description.
        status: nil,
        # Header param: Pins the request to a dated API version.
        api_version_date: nil,
        request_options: {}
      )
      end

      # Lists apps on the Whop platform: the app store's live apps, or — with
      # `account_id` and developer access to that account — every app the account owns.
      # Requires authentication except for Whop's public app and website discovery
      # lists. Public website discovery includes built official blueprints (verified
      # apps with a product) and built, live community blueprints that Whop recommends.
      sig do
        params(
          account_id: String,
          after: String,
          app_type: WhopSDK::AppListParams::AppType::OrSymbol,
          before: String,
          direction: WhopSDK::AppListParams::Direction::OrSymbol,
          first: Integer,
          last: Integer,
          order: WhopSDK::AppListParams::Order::OrSymbol,
          query: String,
          recommended: T::Boolean,
          verified: T::Boolean,
          verified_apps_only: T::Boolean,
          view_type: WhopSDK::AppListParams::ViewType::OrSymbol,
          api_version_date: String,
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(
          WhopSDK::Internal::CursorPage[WhopSDK::Models::AppListResponse]
        )
      end
      def list(
        # Query param: Only return apps created by this account (`biz_` tag). With
        # developer access to the account this includes its unlisted and hidden apps.
        account_id: nil,
        # Query param: A cursor; returns apps after this position.
        after: nil,
        # Query param: Filter apps by the type of end-user they are built for. Apps of
        # type `website` are left out unless you ask for them by name.
        app_type: nil,
        # Query param: A cursor; returns apps before this position.
        before: nil,
        # Query param: Sort direction.
        direction: nil,
        # Query param: The number of apps to return (default 20, max 100).
        first: nil,
        # Query param: The number of apps to return from the end of the range.
        last: nil,
        # Query param: The field to sort apps by. Defaults to discoverable_at, showing the
        # most recently published apps first. `template_usage` ranks Whop-verified apps
        # first, then by how many businesses created apps from each app as a template.
        order: nil,
        # Query param: A search string matched against app names.
        query: nil,
        # Query param: Only return apps Whop recommends (or, with `false`, only those it
        # does not), independently of verification status.
        recommended: nil,
        # Query param: Only return apps whose Whop verification status matches this value.
        # Omit this filter to include every verification status the caller can see.
        verified: nil,
        # Query param: Legacy compatibility filter. Use `verified` for field equality.
        # `true` returns verified apps; clients pinned before `2026-08-25-2` retain the
        # earlier public website discovery behavior.
        verified_apps_only: nil,
        # Query param: Only return apps supporting this view type, such as `dashboard` or
        # `hub`.
        view_type: nil,
        # Header param: Pins the request to a dated API version.
        api_version_date: nil,
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
