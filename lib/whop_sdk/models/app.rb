# frozen_string_literal: true

module WhopSDK
  module Models
    class App < WhopSDK::Internal::Type::BaseModel
      # @!attribute id
      #   The unique identifier for the app.
      #
      #   @return [String]
      required :id, String

      # @!attribute api_key
      #   The API key used to authenticate requests on behalf of this app. Null if no API
      #   key has been generated. Requires the 'developer:manage_api_key' permission.
      #
      #   @return [WhopSDK::Models::App::APIKey, nil]
      required :api_key, -> { WhopSDK::App::APIKey }, nil?: true

      # @!attribute app_type
      #   The target audience classification for this app (e.g., 'b2b_app', 'b2c_app',
      #   'company_app', 'component').
      #
      #   @return [Symbol, WhopSDK::Models::AppType]
      required :app_type, enum: -> { WhopSDK::AppType }

      # @!attribute base_url
      #   The production base URL where the app is hosted. Null if no base URL is
      #   configured.
      #
      #   @return [String, nil]
      required :base_url, String, nil?: true

      # @!attribute company
      #   The company that owns and publishes this app.
      #
      #   @return [WhopSDK::Models::App::Company]
      required :company, -> { WhopSDK::App::Company }

      # @!attribute creator
      #   The user who created and owns the company that published this app.
      #
      #   @return [WhopSDK::Models::App::Creator]
      required :creator, -> { WhopSDK::App::Creator }

      # @!attribute dashboard_path
      #   The URL path template for a specific view of this app, appended to the base
      #   domain (e.g., '/experiences/[experienceId]'). Null if the specified view type is
      #   not configured.
      #
      #   @return [String, nil]
      required :dashboard_path, String, nil?: true

      # @!attribute default_api_key
      #   The app's default API key, used to authenticate requests on behalf of this app.
      #   Null if the app has no default key. Requires the 'developer:manage_api_key'
      #   permission.
      #
      #   @return [WhopSDK::Models::App::DefaultAPIKey, nil]
      required :default_api_key, -> { WhopSDK::App::DefaultAPIKey }, nil?: true

      # @!attribute description
      #   A written description of what this app does, displayed on the app store listing
      #   page. Null if no description has been set.
      #
      #   @return [String, nil]
      required :description, String, nil?: true

      # @!attribute discover_path
      #   The URL path template for a specific view of this app, appended to the base
      #   domain (e.g., '/experiences/[experienceId]'). Null if the specified view type is
      #   not configured.
      #
      #   @return [String, nil]
      required :discover_path, String, nil?: true

      # @!attribute domain_id
      #   The unique subdomain identifier for this app's proxied URL on the Whop platform.
      #   Forms the URL pattern https://{domain_id}.apps.whop.com.
      #
      #   @return [String]
      required :domain_id, String

      # @!attribute experience_path
      #   The URL path template for a specific view of this app, appended to the base
      #   domain (e.g., '/experiences/[experienceId]'). Null if the specified view type is
      #   not configured.
      #
      #   @return [String, nil]
      required :experience_path, String, nil?: true

      # @!attribute hosted_url
      #   The full canonical URL where this app's hosted web build is served. Null if the
      #   app has not claimed a route.
      #
      #   @return [String, nil]
      required :hosted_url, String, nil?: true

      # @!attribute icon
      #   The icon image for this app, displayed on the app store, product pages,
      #   checkout, and as the default icon for experiences using this app.
      #
      #   @return [WhopSDK::Models::App::Icon, nil]
      required :icon, -> { WhopSDK::App::Icon }, nil?: true

      # @!attribute marketplace_status
      #   The available marketplace statuses to choose from.
      #
      #   @return [Symbol, WhopSDK::Models::App::MarketplaceStatus, nil]
      required :marketplace_status, enum: -> { WhopSDK::App::MarketplaceStatus }, nil?: true

      # @!attribute name
      #   The display name of this app shown on the app store and in experience
      #   navigation. Maximum 30 characters.
      #
      #   @return [String]
      required :name, String

      # @!attribute oauth_client_type
      #   How this app authenticates when exchanging OAuth authorization and refresh
      #   grants.
      #
      #   @return [Symbol, WhopSDK::Models::App::OAuthClientType]
      required :oauth_client_type, enum: -> { WhopSDK::App::OAuthClientType }

      # @!attribute openapi_path
      #   The URL path template for a specific view of this app, appended to the base
      #   domain (e.g., '/experiences/[experienceId]'). Null if the specified view type is
      #   not configured.
      #
      #   @return [String, nil]
      required :openapi_path, String, nil?: true

      # @!attribute origin
      #   The full origin URL for this app's proxied domain (e.g.,
      #   'https://myapp.apps.whop.com'). Null if no proxy domain is configured.
      #
      #   @return [String, nil]
      required :origin, String, nil?: true

      # @!attribute product_id
      #   Represents a unique identifier that is Base64 obfuscated. It is often used to
      #   refetch an object or as key for a cache. The ID type appears in a JSON response
      #   as a String; however, it is not intended to be human-readable. When expected as
      #   an input type, any string (such as `"VXNlci0xMA=="`) or integer (such as `4`)
      #   input value will be accepted as an ID.
      #
      #   @return [String, nil]
      required :product_id, String, nil?: true

      # @!attribute production_web_build
      #   The approved app build currently served to users on web. Null if no production
      #   build is deployed for web.
      #
      #   @return [WhopSDK::Models::App::ProductionWebBuild, nil]
      required :production_web_build, -> { WhopSDK::App::ProductionWebBuild }, nil?: true

      # @!attribute redirect_uris
      #   The whitelisted OAuth callback URLs that users are redirected to after
      #   authorizing the app.
      #
      #   @return [Array<String>]
      required :redirect_uris, WhopSDK::Internal::Type::ArrayOf[String]

      # @!attribute requested_permissions
      #   The list of permissions this app requests when installed, including both
      #   required and optional permissions with justifications.
      #
      #   @return [Array<WhopSDK::Models::App::RequestedPermission>]
      required :requested_permissions,
               -> { WhopSDK::Internal::Type::ArrayOf[WhopSDK::App::RequestedPermission] }

      # @!attribute route
      #   The unique subdomain route where this app's hosted web builds are served, such
      #   as 'myapp' for myapp.whop.app. Null if the app has not claimed a route.
      #
      #   @return [String, nil]
      required :route, String, nil?: true

      # @!attribute secrets
      #   The app's secrets as an object of string values. Encrypted at rest and injected
      #   into the app's hosted server runtime as environment bindings. Requires the
      #   'developer:update_app' permission.
      #
      #   @return [Hash{Symbol=>Object}, nil]
      required :secrets, WhopSDK::Internal::Type::HashOf[WhopSDK::Internal::Type::Unknown], nil?: true

      # @!attribute skills_path
      #   The URL path template for a specific view of this app, appended to the base
      #   domain (e.g., '/experiences/[experienceId]'). Null if the specified view type is
      #   not configured.
      #
      #   @return [String, nil]
      required :skills_path, String, nil?: true

      # @!attribute stats
      #   Aggregate usage statistics for this app, including daily, weekly, and monthly
      #   active user counts.
      #
      #   @return [WhopSDK::Models::App::Stats, nil]
      required :stats, -> { WhopSDK::App::Stats }, nil?: true

      # @!attribute status
      #   The current visibility status of this app on the Whop app store. 'live' means
      #   publicly discoverable, 'unlisted' means accessible only via direct link, and
      #   'hidden' means not visible anywhere.
      #
      #   @return [Symbol, WhopSDK::Models::AppStatuses]
      required :status, enum: -> { WhopSDK::AppStatuses }

      # @!attribute verified
      #   Whether this app has been verified by Whop. Verified apps are endorsed by Whop
      #   and displayed in the featured apps section of the app store.
      #
      #   @return [Boolean]
      required :verified, WhopSDK::Internal::Type::Boolean

      # @!method initialize(id:, api_key:, app_type:, base_url:, company:, creator:, dashboard_path:, default_api_key:, description:, discover_path:, domain_id:, experience_path:, hosted_url:, icon:, marketplace_status:, name:, oauth_client_type:, openapi_path:, origin:, product_id:, production_web_build:, redirect_uris:, requested_permissions:, route:, secrets:, skills_path:, stats:, status:, verified:)
      #   Some parameter documentations has been truncated, see {WhopSDK::Models::App} for
      #   more details.
      #
      #   An app is an integration built on Whop. Apps can serve consumers as experiences
      #   within products, or serve companies as business tools.
      #
      #   @param id [String] The unique identifier for the app.
      #
      #   @param api_key [WhopSDK::Models::App::APIKey, nil] The API key used to authenticate requests on behalf of this app. Null if no API
      #
      #   @param app_type [Symbol, WhopSDK::Models::AppType] The target audience classification for this app (e.g., 'b2b_app', 'b2c_app', 'co
      #
      #   @param base_url [String, nil] The production base URL where the app is hosted. Null if no base URL is configur
      #
      #   @param company [WhopSDK::Models::App::Company] The company that owns and publishes this app.
      #
      #   @param creator [WhopSDK::Models::App::Creator] The user who created and owns the company that published this app.
      #
      #   @param dashboard_path [String, nil] The URL path template for a specific view of this app, appended to the base doma
      #
      #   @param default_api_key [WhopSDK::Models::App::DefaultAPIKey, nil] The app's default API key, used to authenticate requests on behalf of this app.
      #
      #   @param description [String, nil] A written description of what this app does, displayed on the app store listing
      #
      #   @param discover_path [String, nil] The URL path template for a specific view of this app, appended to the base doma
      #
      #   @param domain_id [String] The unique subdomain identifier for this app's proxied URL on the Whop platform.
      #
      #   @param experience_path [String, nil] The URL path template for a specific view of this app, appended to the base doma
      #
      #   @param hosted_url [String, nil] The full canonical URL where this app's hosted web build is served. Null if the
      #
      #   @param icon [WhopSDK::Models::App::Icon, nil] The icon image for this app, displayed on the app store, product pages, checkout
      #
      #   @param marketplace_status [Symbol, WhopSDK::Models::App::MarketplaceStatus, nil] The available marketplace statuses to choose from.
      #
      #   @param name [String] The display name of this app shown on the app store and in experience navigation
      #
      #   @param oauth_client_type [Symbol, WhopSDK::Models::App::OAuthClientType] How this app authenticates when exchanging OAuth authorization and refresh grant
      #
      #   @param openapi_path [String, nil] The URL path template for a specific view of this app, appended to the base doma
      #
      #   @param origin [String, nil] The full origin URL for this app's proxied domain (e.g., 'https://myapp.apps.who
      #
      #   @param product_id [String, nil] Represents a unique identifier that is Base64 obfuscated. It is often used to re
      #
      #   @param production_web_build [WhopSDK::Models::App::ProductionWebBuild, nil] The approved app build currently served to users on web. Null if no production b
      #
      #   @param redirect_uris [Array<String>] The whitelisted OAuth callback URLs that users are redirected to after authorizi
      #
      #   @param requested_permissions [Array<WhopSDK::Models::App::RequestedPermission>] The list of permissions this app requests when installed, including both require
      #
      #   @param route [String, nil] The unique subdomain route where this app's hosted web builds are served, such a
      #
      #   @param secrets [Hash{Symbol=>Object}, nil] The app's secrets as an object of string values. Encrypted at rest and injected
      #
      #   @param skills_path [String, nil] The URL path template for a specific view of this app, appended to the base doma
      #
      #   @param stats [WhopSDK::Models::App::Stats, nil] Aggregate usage statistics for this app, including daily, weekly, and monthly ac
      #
      #   @param status [Symbol, WhopSDK::Models::AppStatuses] The current visibility status of this app on the Whop app store. 'live' means pu
      #
      #   @param verified [Boolean] Whether this app has been verified by Whop. Verified apps are endorsed by Whop a

      # @see WhopSDK::Models::App#api_key
      class APIKey < WhopSDK::Internal::Type::BaseModel
        # @!attribute id
        #   The unique identifier for the private api key.
        #
        #   @return [String]
        required :id, String

        # @!attribute token
        #   This is the API key used to authenticate requests
        #
        #   @return [String]
        required :token, String

        # @!attribute created_at
        #   The datetime the private api key was created.
        #
        #   @return [Time]
        required :created_at, Time

        # @!method initialize(id:, token:, created_at:)
        #   The API key used to authenticate requests on behalf of this app. Null if no API
        #   key has been generated. Requires the 'developer:manage_api_key' permission.
        #
        #   @param id [String] The unique identifier for the private api key.
        #
        #   @param token [String] This is the API key used to authenticate requests
        #
        #   @param created_at [Time] The datetime the private api key was created.
      end

      # @see WhopSDK::Models::App#company
      class Company < WhopSDK::Internal::Type::BaseModel
        # @!attribute id
        #   The unique identifier for the company.
        #
        #   @return [String]
        required :id, String

        # @!attribute title
        #   The display name of the company shown to customers.
        #
        #   @return [String]
        required :title, String

        # @!method initialize(id:, title:)
        #   The company that owns and publishes this app.
        #
        #   @param id [String] The unique identifier for the company.
        #
        #   @param title [String] The display name of the company shown to customers.
      end

      # @see WhopSDK::Models::App#creator
      class Creator < WhopSDK::Internal::Type::BaseModel
        # @!attribute id
        #   The unique identifier for the user.
        #
        #   @return [String]
        required :id, String

        # @!attribute name
        #   The user's display name shown on their public profile.
        #
        #   @return [String, nil]
        required :name, String, nil?: true

        # @!attribute username
        #   The user's unique username shown on their public profile.
        #
        #   @return [String]
        required :username, String

        # @!method initialize(id:, name:, username:)
        #   The user who created and owns the company that published this app.
        #
        #   @param id [String] The unique identifier for the user.
        #
        #   @param name [String, nil] The user's display name shown on their public profile.
        #
        #   @param username [String] The user's unique username shown on their public profile.
      end

      # @see WhopSDK::Models::App#default_api_key
      class DefaultAPIKey < WhopSDK::Internal::Type::BaseModel
        # @!attribute id
        #   The unique identifier for the authorized api key.
        #
        #   @return [String]
        required :id, String

        # @!attribute name
        #   A user set name to identify an API key
        #
        #   @return [String, nil]
        required :name, String, nil?: true

        # @!attribute obfuscated_secret_key
        #   A masked version of the secret key used to authenticate requests. This is so
        #   that the owner can easily identify which key it is without being shown the full
        #   secret.
        #
        #   @return [String]
        required :obfuscated_secret_key, String

        # @!attribute secret_key
        #   The secret key used to authenticate requests. This is only available if the
        #   current actor would have been able to create this api key.
        #
        #   @return [String, nil]
        required :secret_key, String, nil?: true

        # @!method initialize(id:, name:, obfuscated_secret_key:, secret_key:)
        #   Some parameter documentations has been truncated, see
        #   {WhopSDK::Models::App::DefaultAPIKey} for more details.
        #
        #   The app's default API key, used to authenticate requests on behalf of this app.
        #   Null if the app has no default key. Requires the 'developer:manage_api_key'
        #   permission.
        #
        #   @param id [String] The unique identifier for the authorized api key.
        #
        #   @param name [String, nil] A user set name to identify an API key
        #
        #   @param obfuscated_secret_key [String] A masked version of the secret key used to authenticate requests. This is so tha
        #
        #   @param secret_key [String, nil] The secret key used to authenticate requests. This is only available if the curr
      end

      # @see WhopSDK::Models::App#icon
      class Icon < WhopSDK::Internal::Type::BaseModel
        # @!attribute url
        #   A pre-optimized URL for rendering this attachment on the client. This should be
        #   used for displaying attachments in apps.
        #
        #   @return [String, nil]
        required :url, String, nil?: true

        # @!method initialize(url:)
        #   Some parameter documentations has been truncated, see
        #   {WhopSDK::Models::App::Icon} for more details.
        #
        #   The icon image for this app, displayed on the app store, product pages,
        #   checkout, and as the default icon for experiences using this app.
        #
        #   @param url [String, nil] A pre-optimized URL for rendering this attachment on the client. This should be
      end

      # The available marketplace statuses to choose from.
      #
      # @see WhopSDK::Models::App#marketplace_status
      module MarketplaceStatus
        extend WhopSDK::Internal::Type::Enum

        NOT_AVAILABLE = :not_available
        PENDING_REVIEW = :pending_review
        LIVE_MARKETPLACE = :live_marketplace

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # How this app authenticates when exchanging OAuth authorization and refresh
      # grants.
      #
      # @see WhopSDK::Models::App#oauth_client_type
      module OAuthClientType
        extend WhopSDK::Internal::Type::Enum

        PUBLIC = :public
        CONFIDENTIAL = :confidential

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # @see WhopSDK::Models::App#production_web_build
      class ProductionWebBuild < WhopSDK::Internal::Type::BaseModel
        # @!attribute id
        #   The unique identifier for the app build.
        #
        #   @return [String]
        required :id, String

        # @!attribute checksum
        #   A SHA-256 hash of the uploaded build file, generated by the client and used to
        #   verify file integrity.
        #
        #   @return [String]
        required :checksum, String

        # @!attribute file_url
        #   A URL to download the app build as a .zip archive.
        #
        #   @return [String]
        required :file_url, String

        # @!attribute source_url
        #   A URL to download the compressed source code archive that produced this build.
        #   Null if the build was uploaded without a source archive.
        #
        #   @return [String, nil]
        required :source_url, String, nil?: true

        # @!attribute status
        #   The current review status of this build.
        #
        #   @return [Symbol, WhopSDK::Models::AppBuildStatuses]
        required :status, enum: -> { WhopSDK::AppBuildStatuses }

        # @!method initialize(id:, checksum:, file_url:, source_url:, status:)
        #   Some parameter documentations has been truncated, see
        #   {WhopSDK::Models::App::ProductionWebBuild} for more details.
        #
        #   The approved app build currently served to users on web. Null if no production
        #   build is deployed for web.
        #
        #   @param id [String] The unique identifier for the app build.
        #
        #   @param checksum [String] A SHA-256 hash of the uploaded build file, generated by the client and used to v
        #
        #   @param file_url [String] A URL to download the app build as a .zip archive.
        #
        #   @param source_url [String, nil] A URL to download the compressed source code archive that produced this build. N
        #
        #   @param status [Symbol, WhopSDK::Models::AppBuildStatuses] The current review status of this build.
      end

      class RequestedPermission < WhopSDK::Internal::Type::BaseModel
        # @!attribute is_required
        #   Whether the action is required for the app to function.
        #
        #   @return [Boolean]
        required :is_required, WhopSDK::Internal::Type::Boolean

        # @!attribute justification
        #   The reason for requesting the action.
        #
        #   @return [String]
        required :justification, String

        # @!attribute permission_action
        #   The action that the app will request off of users when a user installs the app.
        #
        #   @return [WhopSDK::Models::App::RequestedPermission::PermissionAction]
        required :permission_action, -> { WhopSDK::App::RequestedPermission::PermissionAction }

        # @!method initialize(is_required:, justification:, permission_action:)
        #   A permission that the app requests from the admin of a company during the oauth
        #   flow.
        #
        #   @param is_required [Boolean] Whether the action is required for the app to function.
        #
        #   @param justification [String] The reason for requesting the action.
        #
        #   @param permission_action [WhopSDK::Models::App::RequestedPermission::PermissionAction] The action that the app will request off of users when a user installs the app.

        # @see WhopSDK::Models::App::RequestedPermission#permission_action
        class PermissionAction < WhopSDK::Internal::Type::BaseModel
          # @!attribute action
          #   The identifier of the action.
          #
          #   @return [String]
          required :action, String

          # @!attribute name
          #   The human readable name of the action.
          #
          #   @return [String]
          required :name, String

          # @!method initialize(action:, name:)
          #   The action that the app will request off of users when a user installs the app.
          #
          #   @param action [String] The identifier of the action.
          #
          #   @param name [String] The human readable name of the action.
        end
      end

      # @see WhopSDK::Models::App#stats
      class Stats < WhopSDK::Internal::Type::BaseModel
        # @!attribute dau
        #   The number of unique users who have spent time in this app in the last 24 hours.
        #   Returns 0 if no usage data is available.
        #
        #   @return [Integer]
        required :dau, Integer

        # @!attribute mau
        #   The number of unique users who have spent time in this app in the last 28 days.
        #   Returns 0 if no usage data is available.
        #
        #   @return [Integer]
        required :mau, Integer

        # @!attribute time_spent_last24_hours
        #   The total time, in seconds, that all users have spent in this app over the last
        #   24 hours. Returns 0 if no usage data is available.
        #
        #   @return [Integer]
        required :time_spent_last24_hours, Integer

        # @!attribute wau
        #   The number of unique users who have spent time in this app in the last 7 days.
        #   Returns 0 if no usage data is available.
        #
        #   @return [Integer]
        required :wau, Integer

        # @!method initialize(dau:, mau:, time_spent_last24_hours:, wau:)
        #   Some parameter documentations has been truncated, see
        #   {WhopSDK::Models::App::Stats} for more details.
        #
        #   Aggregate usage statistics for this app, including daily, weekly, and monthly
        #   active user counts.
        #
        #   @param dau [Integer] The number of unique users who have spent time in this app in the last 24 hours.
        #
        #   @param mau [Integer] The number of unique users who have spent time in this app in the last 28 days.
        #
        #   @param time_spent_last24_hours [Integer] The total time, in seconds, that all users have spent in this app over the last
        #
        #   @param wau [Integer] The number of unique users who have spent time in this app in the last 7 days. R
      end
    end
  end
end
