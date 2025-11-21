# typed: strong

module WhopSDK
  module Resources
    class Apps
      # Create a new App
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
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(WhopSDK::App)
      end
      def create(
        # The ID of the company to create the app for
        company_id:,
        # The name of the app to be created
        name:,
        # The base URL of the app to be created
        base_url: nil,
        request_options: {}
      )
      end

      # Retrieves an app by ID
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
        # The ID of the app
        id,
        request_options: {}
      )
      end

      # Update an existing App
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
          icon:
            T.nilable(
              T.any(
                WhopSDK::AppUpdateParams::Icon::AttachmentInputWithDirectUploadID::OrHash,
                WhopSDK::AppUpdateParams::Icon::AttachmentInputWithID::OrHash
              )
            ),
          name: T.nilable(String),
          required_scopes:
            T.nilable(
              T::Array[WhopSDK::AppUpdateParams::RequiredScope::OrSymbol]
            ),
          status: T.nilable(WhopSDK::AppStatuses::OrSymbol),
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(WhopSDK::App)
      end
      def update(
        # The ID of the app
        id,
        # The description of the app for the app store in-depth app view.
        app_store_description: nil,
        # The type of end-user an app is built for
        app_type: nil,
        # The base production url of the app
        base_url: nil,
        # The path for the dashboard view of the app
        dashboard_path: nil,
        # The description of the app
        description: nil,
        # The path for the discover view of the app
        discover_path: nil,
        # The path for the hub view of the app
        experience_path: nil,
        # The icon for the app
        icon: nil,
        # The name of the app
        name: nil,
        # The scopes that the app will request off of users when a user installs the app.
        required_scopes: nil,
        # The status of an experience interface
        status: nil,
        request_options: {}
      )
      end

      # Fetches a list of apps
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
        # The ID of the company to filter apps by
        company_id: nil,
        # The direction of the sort.
        direction: nil,
        # Returns the first _n_ elements from the list.
        first: nil,
        # Returns the last _n_ elements from the list.
        last: nil,
        # The order to fetch the apps in for discovery.
        order: nil,
        # The query to search for apps by name.
        query: nil,
        # If true, you will only get apps that are verified by Whop. Use this to populate
        # a 'featured apps' section on the app store.
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
