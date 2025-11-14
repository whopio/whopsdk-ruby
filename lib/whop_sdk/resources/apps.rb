# frozen_string_literal: true

module WhopSDK
  module Resources
    class Apps
      # Create a new App
      #
      # Required permissions:
      #
      # - `developer:create_app`
      # - `developer:manage_api_key`
      #
      # @overload create(company_id:, name:, base_url: nil, request_options: {})
      #
      # @param company_id [String] The ID of the company to create the app for
      #
      # @param name [String] The name of the app to be created
      #
      # @param base_url [String, nil] The base URL of the app to be created
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

      # Retrieves an app by ID
      #
      # Required permissions:
      #
      # - `developer:manage_api_key`
      #
      # @overload retrieve(id, request_options: {})
      #
      # @param id [String] The ID of the app
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

      # Update an existing App
      #
      # Required permissions:
      #
      # - `developer:update_app`
      # - `developer:manage_api_key`
      #
      # @overload update(id, app_store_description: nil, app_type: nil, base_url: nil, dashboard_path: nil, description: nil, discover_path: nil, experience_path: nil, icon: nil, name: nil, required_scopes: nil, status: nil, request_options: {})
      #
      # @param id [String] The ID of the app
      #
      # @param app_store_description [String, nil] The description of the app for the app store in-depth app view.
      #
      # @param app_type [Symbol, WhopSDK::Models::AppUpdateParams::AppType, nil] The type of end-user an app is built for
      #
      # @param base_url [String, nil] The base production url of the app
      #
      # @param dashboard_path [String, nil] The path for the dashboard view of the app
      #
      # @param description [String, nil] The description of the app
      #
      # @param discover_path [String, nil] The path for the discover view of the app
      #
      # @param experience_path [String, nil] The path for the hub view of the app
      #
      # @param icon [WhopSDK::Models::AppUpdateParams::Icon::AttachmentInputWithDirectUploadID, WhopSDK::Models::AppUpdateParams::Icon::AttachmentInputWithID, nil] The icon for the app
      #
      # @param name [String, nil] The name of the app
      #
      # @param required_scopes [Array<Symbol, WhopSDK::Models::AppUpdateParams::RequiredScope>, nil] The scopes that the app will request off of users when a user installs the app.
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
      # Fetches a list of apps
      #
      # @overload list(after: nil, app_type: nil, before: nil, company_id: nil, direction: nil, first: nil, last: nil, order: nil, query: nil, verified_apps_only: nil, view_type: nil, request_options: {})
      #
      # @param after [String, nil] Returns the elements in the list that come after the specified cursor.
      #
      # @param app_type [Symbol, WhopSDK::Models::AppListParams::AppType, nil] The type of end-user an app is built for
      #
      # @param before [String, nil] Returns the elements in the list that come before the specified cursor.
      #
      # @param company_id [String, nil] The ID of the company to filter apps by
      #
      # @param direction [Symbol, WhopSDK::Models::Direction, nil] The direction of the sort.
      #
      # @param first [Integer, nil] Returns the first _n_ elements from the list.
      #
      # @param last [Integer, nil] Returns the last _n_ elements from the list.
      #
      # @param order [Symbol, WhopSDK::Models::AppListParams::Order, nil] The order to fetch the apps in for discovery.
      #
      # @param query [String, nil] The query to search for apps by name.
      #
      # @param verified_apps_only [Boolean, nil] If true, you will only get apps that are verified by Whop. Use this to populate
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
