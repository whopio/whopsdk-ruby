# frozen_string_literal: true

module WhopSDK
  module Resources
    class Apps
      # Some parameter documentations has been truncated, see
      # {WhopSDK::Models::AppCreateParams} for more details.
      #
      # Register a new app on the Whop developer platform. Apps provide custom
      # experiences that can be added to products.
      #
      # Required permissions:
      #
      # - `developer:create_app`
      # - `developer:manage_api_key`
      #
      # @overload create(company_id:, name:, base_url: nil, icon: nil, request_options: {})
      #
      # @param company_id [String] The unique identifier of the company to create the app for, starting with
      # 'biz\_'
      #
      # @param name [String] The display name for the app, shown to users on the app store and product pages.
      #
      # @param base_url [String, nil] The base production URL where the app is hosted, such as 'https://myapp.example.
      #
      # @param icon [WhopSDK::Models::AppCreateParams::Icon, nil] The icon image for the app in PNG, JPEG, or GIF format.
      #
      # @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [WhopSDK::Models::App]
      #
      # @see WhopSDK::Models::AppCreateParams
      def create(params)
        parsed, options = WhopSDK::AppCreateParams.dump_request(params)
        @client.request(method: :post, path: "apps", body: parsed, model: WhopSDK::App, options: options)
      end

      # Retrieves the details of an existing app.
      #
      # Required permissions:
      #
      # - `developer:manage_api_key`
      #
      # @overload retrieve(id, request_options: {})
      #
      # @param id [String] The unique identifier of the app to retrieve.
      #
      # @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [WhopSDK::Models::App]
      #
      # @see WhopSDK::Models::AppRetrieveParams
      def retrieve(id, params = {})
        @client.request(
          method: :get,
          path: ["apps/%1$s", id],
          model: WhopSDK::App,
          options: params[:request_options]
        )
      end

      # Some parameter documentations has been truncated, see
      # {WhopSDK::Models::AppUpdateParams} for more details.
      #
      # Update the settings, metadata, or status of an existing app on the Whop
      # developer platform.
      #
      # Required permissions:
      #
      # - `developer:update_app`
      # - `developer:manage_api_key`
      #
      # @overload update(id, app_store_description: nil, app_type: nil, base_url: nil, dashboard_path: nil, description: nil, discover_path: nil, experience_path: nil, icon: nil, name: nil, required_scopes: nil, status: nil, request_options: {})
      #
      # @param id [String] The unique identifier of the app to update, starting with 'app\_'.
      #
      # @param app_store_description [String, nil] The detailed description shown on the app store's in-depth app view page.
      #
      # @param app_type [Symbol, WhopSDK::Models::AppType, nil] The type of end-user an app is built for
      #
      # @param base_url [String, nil] The base production URL where the app is hosted, such as 'https://myapp.example.
      #
      # @param dashboard_path [String, nil] The URL path for the company dashboard view of the app, such as '/dashboard'.
      #
      # @param description [String, nil] A short description of the app shown in listings and search results.
      #
      # @param discover_path [String, nil] The URL path for the discover view of the app, such as '/discover'.
      #
      # @param experience_path [String, nil] The URL path for the member-facing hub view of the app, such as '/experiences/[e
      #
      # @param icon [WhopSDK::Models::AppUpdateParams::Icon, nil] The icon image for the app, used in listings and navigation.
      #
      # @param name [String, nil] The display name for the app, shown to users on the app store and product pages.
      #
      # @param required_scopes [Array<Symbol, WhopSDK::Models::AppUpdateParams::RequiredScope>, nil] The permission scopes the app will request from users when they install it.
      #
      # @param status [Symbol, WhopSDK::Models::AppStatuses, nil] The status of an experience interface
      #
      # @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [WhopSDK::Models::App]
      #
      # @see WhopSDK::Models::AppUpdateParams
      def update(id, params = {})
        parsed, options = WhopSDK::AppUpdateParams.dump_request(params)
        @client.request(
          method: :patch,
          path: ["apps/%1$s", id],
          body: parsed,
          model: WhopSDK::App,
          options: options
        )
      end

      # Some parameter documentations has been truncated, see
      # {WhopSDK::Models::AppListParams} for more details.
      #
      # Returns a paginated list of apps on the Whop platform, with optional filtering
      # by company, type, view support, and search query.
      #
      # @overload list(after: nil, app_type: nil, before: nil, company_id: nil, direction: nil, first: nil, last: nil, order: nil, query: nil, verified_apps_only: nil, view_type: nil, request_options: {})
      #
      # @param after [String, nil] Returns the elements in the list that come after the specified cursor.
      #
      # @param app_type [Symbol, WhopSDK::Models::AppType, nil] The type of end-user an app is built for
      #
      # @param before [String, nil] Returns the elements in the list that come before the specified cursor.
      #
      # @param company_id [String, nil] Filter apps to only those created by this company, starting with 'biz\_'.
      #
      # @param direction [Symbol, WhopSDK::Models::Direction, nil] The direction of the sort.
      #
      # @param first [Integer, nil] Returns the first _n_ elements from the list.
      #
      # @param last [Integer, nil] Returns the last _n_ elements from the list.
      #
      # @param order [Symbol, WhopSDK::Models::AppListParams::Order, nil] The order to fetch the apps in for discovery.
      #
      # @param query [String, nil] A search string to filter apps by name, such as 'chat' or 'analytics'.
      #
      # @param verified_apps_only [Boolean, nil] Whether to only return apps that have been verified by Whop. Useful for populati
      #
      # @param view_type [Symbol, WhopSDK::Models::AppViewType, nil] The different types of an app view
      #
      # @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [WhopSDK::Internal::CursorPage<WhopSDK::Models::AppListResponse>]
      #
      # @see WhopSDK::Models::AppListParams
      def list(params = {})
        parsed, options = WhopSDK::AppListParams.dump_request(params)
        @client.request(
          method: :get,
          path: "apps",
          query: parsed,
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
