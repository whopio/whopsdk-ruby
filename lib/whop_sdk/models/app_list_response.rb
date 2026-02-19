# frozen_string_literal: true

module WhopSDK
  module Models
    # @see WhopSDK::Resources::Apps#list
    class AppListResponse < WhopSDK::Internal::Type::BaseModel
      # @!attribute id
      #   The unique identifier for the app.
      #
      #   @return [String]
      required :id, String

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
      #   @return [WhopSDK::Models::AppListResponse::Company]
      required :company, -> { WhopSDK::Models::AppListResponse::Company }

      # @!attribute creator
      #   The user who created and owns the company that published this app.
      #
      #   @return [WhopSDK::Models::AppListResponse::Creator]
      required :creator, -> { WhopSDK::Models::AppListResponse::Creator }

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
      #   @return [WhopSDK::Models::AppListResponse::Icon, nil]
      required :icon, -> { WhopSDK::Models::AppListResponse::Icon }, nil?: true

      # @!attribute name
      #   The display name of this app shown on the app store and in experience
      #   navigation. Maximum 30 characters.
      #
      #   @return [String]
      required :name, String

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

      # @!method initialize(id:, app_type:, base_url:, company:, creator:, dashboard_path:, description:, discover_path:, domain_id:, experience_path:, icon:, name:, status:, verified:)
      #   Some parameter documentations has been truncated, see
      #   {WhopSDK::Models::AppListResponse} for more details.
      #
      #   An app is an integration built on Whop. Apps can serve consumers as experiences
      #   within products, or serve companies as business tools.
      #
      #   @param id [String] The unique identifier for the app.
      #
      #   @param app_type [Symbol, WhopSDK::Models::AppType] The target audience classification for this app (e.g., 'b2b_app', 'b2c_app', 'co
      #
      #   @param base_url [String, nil] The production base URL where the app is hosted. Null if no base URL is configur
      #
      #   @param company [WhopSDK::Models::AppListResponse::Company] The company that owns and publishes this app.
      #
      #   @param creator [WhopSDK::Models::AppListResponse::Creator] The user who created and owns the company that published this app.
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
      #   @param icon [WhopSDK::Models::AppListResponse::Icon, nil] The icon image for this app, displayed on the app store, product pages, checkout
      #
      #   @param name [String] The display name of this app shown on the app store and in experience navigation
      #
      #   @param status [Symbol, WhopSDK::Models::AppStatuses] The current visibility status of this app on the Whop app store. 'live' means pu
      #
      #   @param verified [Boolean] Whether this app has been verified by Whop. Verified apps are endorsed by Whop a

      # @see WhopSDK::Models::AppListResponse#company
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

      # @see WhopSDK::Models::AppListResponse#creator
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

      # @see WhopSDK::Models::AppListResponse#icon
      class Icon < WhopSDK::Internal::Type::BaseModel
        # @!attribute url
        #   A pre-optimized URL for rendering this attachment on the client. This should be
        #   used for displaying attachments in apps.
        #
        #   @return [String, nil]
        required :url, String, nil?: true

        # @!method initialize(url:)
        #   Some parameter documentations has been truncated, see
        #   {WhopSDK::Models::AppListResponse::Icon} for more details.
        #
        #   The icon image for this app, displayed on the app store, product pages,
        #   checkout, and as the default icon for experiences using this app.
        #
        #   @param url [String, nil] A pre-optimized URL for rendering this attachment on the client. This should be
      end
    end
  end
end
