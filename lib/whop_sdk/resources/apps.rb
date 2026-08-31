# frozen_string_literal: true

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
      # Some parameter documentations has been truncated, see
      # {WhopSDK::Models::AppCreateParams} for more details.
      #
      # Registers a new app on the Whop developer platform. Apps provide custom
      # experiences that can be added to products.
      #
      # @overload create(name:, account_id: nil, app_type: nil, base_url: nil, icon: nil, redirect_uris: nil, route: nil, api_version_date: nil, idempotency_key: nil, request_options: {})
      #
      # @param name [String] Body param: The display name for the app, shown to users on the app store and pr
      #
      # @param account_id [String] Body param: The account to create the app for (`biz_` tag). Defaults to the acco
      #
      # @param app_type [Symbol, WhopSDK::Models::AppCreateParams::AppType] Body param: The type of app to create. Defaults to `b2c_app`.
      #
      # @param base_url [String, nil] Body param: The base production URL where the app is hosted, such as `https://my
      #
      # @param icon [WhopSDK::Models::AppCreateParams::Icon] Body param: The icon image for the app in PNG, JPEG, or GIF format, referencing
      #
      # @param redirect_uris [Array<String>] Body param: The whitelisted OAuth callback URLs that users are redirected to aft
      #
      # @param route [String, nil] Body param: The subdomain route where the app's hosted web builds are served, su
      #
      # @param api_version_date [String] Header param: Pins the request to a dated API version.
      #
      # @param idempotency_key [String] Header param: A unique key that makes this request safe to retry. See [Idempoten
      #
      # @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [WhopSDK::Models::App]
      #
      # @see WhopSDK::Models::AppCreateParams
      def create(params)
        parsed, options = WhopSDK::AppCreateParams.dump_request(params)
        header_params = {api_version_date: "api-version-date", idempotency_key: "idempotency-key"}
        @client.request(
          method: :post,
          path: "apps",
          headers: parsed.slice(*header_params.keys).transform_keys(header_params),
          body: parsed.except(*header_params.keys),
          model: WhopSDK::App,
          options: options
        )
      end

      # Retrieves an app by ID, claimed route, or proxy domain id. Credential fields
      # (api_key, default_api_key, secrets) render `null` unless the caller has the
      # corresponding developer permission on the owning account.
      #
      # @overload retrieve(id, api_version_date: nil, request_options: {})
      #
      # @param id [String] App ID (prefixed `app_`), the app's claimed route, or its proxy domain id.
      #
      # @param api_version_date [String] Pins the request to a dated API version.
      #
      # @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [WhopSDK::Models::App]
      #
      # @see WhopSDK::Models::AppRetrieveParams
      def retrieve(id, params = {})
        parsed, options = WhopSDK::AppRetrieveParams.dump_request(params)
        @client.request(
          method: :get,
          path: ["apps/%1$s", id],
          headers: parsed.transform_keys(api_version_date: "api-version-date"),
          model: WhopSDK::App,
          options: options
        )
      end

      # Some parameter documentations has been truncated, see
      # {WhopSDK::Models::AppUpdateParams} for more details.
      #
      # Updates the settings, metadata, or status of an app. Fields that are omitted
      # keep their current value.
      #
      # @overload update(id, app_store_description: nil, app_type: nil, base_url: nil, dashboard_path: nil, description: nil, discover_path: nil, experience_path: nil, icon: nil, name: nil, oauth_client_type: nil, openapi_path: nil, production_android_build_id: nil, production_ios_build_id: nil, production_web_build_id: nil, redirect_uris: nil, required_scopes: nil, route: nil, secrets: nil, skills_path: nil, status: nil, api_version_date: nil, request_options: {})
      #
      # @param id [String] Path param: App ID (prefixed `app_`), the app's claimed route, or its proxy doma
      #
      # @param app_store_description [String] Body param: The detailed description shown on the app store's in-depth app view
      #
      # @param app_type [Symbol, WhopSDK::Models::AppUpdateParams::AppType] Body param: The type of end-user the app is built for. Cannot be changed on an a
      #
      # @param base_url [String, nil] Body param: The base production URL where the app is hosted. Set to `null` to ta
      #
      # @param dashboard_path [String, nil] Body param: The URL path for the account dashboard view.
      #
      # @param description [String] Body param: A short description of the app shown in listings and search results.
      #
      # @param discover_path [String, nil] Body param: The URL path for the discover view.
      #
      # @param experience_path [String, nil] Body param: The URL path for the member-facing hub view, such as `/experiences/[
      #
      # @param icon [WhopSDK::Models::AppUpdateParams::Icon] Body param: The icon image for the app in PNG, JPEG, or GIF format, referencing
      #
      # @param name [String] Body param: The display name for the app, shown to users on the app store and pr
      #
      # @param oauth_client_type [Symbol, WhopSDK::Models::AppUpdateParams::OAuthClientType] Body param: How the app authenticates at the OAuth token endpoint.
      #
      # @param openapi_path [String, nil] Body param: The URL path to the app's OpenAPI spec file (requires the ai_chat ca
      #
      # @param production_android_build_id [String, nil] Body param: The app build (`abld_` tag) to serve as the Android production build
      #
      # @param production_ios_build_id [String, nil] Body param: The app build (`abld_` tag) to serve as the iOS production build, or
      #
      # @param production_web_build_id [String, nil] Body param: The app build (`abld_` tag) to serve as the web production build, or
      #
      # @param redirect_uris [Array<String>] Body param: The whitelisted OAuth callback URLs users are redirected to after au
      #
      # @param required_scopes [Array<String>] Body param: The OAuth scopes the app requests from users when they install it.
      #
      # @param route [String] Body param: The subdomain route where the app's hosted web builds are served.
      #
      # @param secrets [Object] Body param: Secrets to add or overwrite on the app, as an object of string value
      #
      # @param skills_path [String, nil] Body param: The URL path to the app's skills directory (requires the ai_chat cap
      #
      # @param status [Symbol, WhopSDK::Models::AppUpdateParams::Status] Body param: Controls whether the app is published on Whop discovery or accessibl
      #
      # @param api_version_date [String] Header param: Pins the request to a dated API version.
      #
      # @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [WhopSDK::Models::App]
      #
      # @see WhopSDK::Models::AppUpdateParams
      def update(id, params = {})
        parsed, options = WhopSDK::AppUpdateParams.dump_request(params)
        header_params = {api_version_date: "api-version-date"}
        @client.request(
          method: :patch,
          path: ["apps/%1$s", id],
          headers: parsed.slice(*header_params.keys).transform_keys(header_params),
          body: parsed.except(*header_params.keys),
          model: WhopSDK::App,
          options: options
        )
      end

      # Some parameter documentations has been truncated, see
      # {WhopSDK::Models::AppListParams} for more details.
      #
      # Lists apps on the Whop platform: the app store's live apps, or — with
      # `account_id` and developer access to that account — every app the account owns.
      # Requires authentication except for Whop's public app and website discovery
      # lists. Public website discovery includes built official blueprints (verified
      # apps with a product) and built, live community blueprints that Whop recommends.
      #
      # @overload list(account_id: nil, after: nil, app_type: nil, before: nil, direction: nil, first: nil, last: nil, order: nil, query: nil, recommended: nil, verified: nil, verified_apps_only: nil, view_type: nil, api_version_date: nil, request_options: {})
      #
      # @param account_id [String] Query param: Only return apps created by this account (`biz_` tag). With develop
      #
      # @param after [String] Query param: A cursor; returns apps after this position.
      #
      # @param app_type [Symbol, WhopSDK::Models::AppListParams::AppType] Query param: Filter apps by the type of end-user they are built for. Apps of typ
      #
      # @param before [String] Query param: A cursor; returns apps before this position.
      #
      # @param direction [Symbol, WhopSDK::Models::AppListParams::Direction] Query param: Sort direction.
      #
      # @param first [Integer] Query param: The number of apps to return (default 20, max 100).
      #
      # @param last [Integer] Query param: The number of apps to return from the end of the range.
      #
      # @param order [Symbol, WhopSDK::Models::AppListParams::Order] Query param: The field to sort apps by. Defaults to discoverable_at, showing the
      #
      # @param query [String] Query param: A search string matched against app names.
      #
      # @param recommended [Boolean] Query param: Only return apps Whop recommends (or, with `false`, only those it d
      #
      # @param verified [Boolean] Query param: Only return apps whose Whop verification status matches this value.
      #
      # @param verified_apps_only [Boolean] Query param: Legacy compatibility filter. Use `verified` for field equality. `tr
      #
      # @param view_type [Symbol, WhopSDK::Models::AppListParams::ViewType] Query param: Only return apps supporting this view type, such as `dashboard` or
      #
      # @param api_version_date [String] Header param: Pins the request to a dated API version.
      #
      # @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [WhopSDK::Internal::CursorPage<WhopSDK::Models::AppListResponse>]
      #
      # @see WhopSDK::Models::AppListParams
      def list(params = {})
        query_params =
          [
            :account_id,
            :after,
            :app_type,
            :before,
            :direction,
            :first,
            :last,
            :order,
            :query,
            :recommended,
            :verified,
            :verified_apps_only,
            :view_type
          ]
        parsed, options = WhopSDK::AppListParams.dump_request(params)
        query = WhopSDK::Internal::Util.encode_query_params(parsed.slice(*query_params))
        @client.request(
          method: :get,
          path: "apps",
          query: query,
          headers: parsed.except(*query_params).transform_keys(api_version_date: "api-version-date"),
          page: WhopSDK::Internal::CursorPage,
          model: WhopSDK::Models::AppListResponse,
          options: options
        )
      end

      # @api private
      #
      # @param client [WhopSDK::Client]
      def initialize(client:)
        @client = client
      end
    end
  end
end
