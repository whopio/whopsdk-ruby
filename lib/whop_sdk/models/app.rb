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

      # @!attribute icon
      #   The icon image for this app, displayed on the app store, product pages,
      #   checkout, and as the default icon for experiences using this app.
      #
      #   @return [WhopSDK::Models::App::Icon, nil]
      required :icon, -> { WhopSDK::App::Icon }, nil?: true

      # @!attribute name
      #   The display name of this app shown on the app store and in experience
      #   navigation. Maximum 30 characters.
      #
      #   @return [String]
      required :name, String

      # @!attribute requested_permissions
      #   The list of permissions this app requests when installed, including both
      #   required and optional permissions with justifications.
      #
      #   @return [Array<WhopSDK::Models::App::RequestedPermission>]
      required :requested_permissions,
               -> { WhopSDK::Internal::Type::ArrayOf[WhopSDK::App::RequestedPermission] }

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

      # @!method initialize(id:, api_key:, app_type:, base_url:, company:, creator:, dashboard_path:, description:, discover_path:, domain_id:, experience_path:, icon:, name:, requested_permissions:, stats:, status:, verified:)
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
      #   @param description [String, nil] A written description of what this app does, displayed on the app store listing
      #
      #   @param discover_path [String, nil] The URL path template for a specific view of this app, appended to the base doma
      #
      #   @param domain_id [String] The unique subdomain identifier for this app's proxied URL on the Whop platform.
      #
      #   @param experience_path [String, nil] The URL path template for a specific view of this app, appended to the base doma
      #
      #   @param icon [WhopSDK::Models::App::Icon, nil] The icon image for this app, displayed on the app store, product pages, checkout
      #
      #   @param name [String] The display name of this app shown on the app store and in experience navigation
      #
      #   @param requested_permissions [Array<WhopSDK::Models::App::RequestedPermission>] The list of permissions this app requests when installed, including both require
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
