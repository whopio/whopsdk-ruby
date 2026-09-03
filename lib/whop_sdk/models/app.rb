# frozen_string_literal: true

module WhopSDK
  module Models
    class App < WhopSDK::Internal::Type::BaseModel
      # @!attribute id
      #   App ID, prefixed `app_`.
      #
      #   @return [String]
      required :id, String

      # @!attribute account
      #   The account that owns the app.
      #
      #   @return [WhopSDK::Models::App::Account]
      required :account, -> { WhopSDK::App::Account }

      # @!attribute api_key
      #   Legacy app API key used to authenticate requests on the app's behalf. `null`
      #   when no key exists or the caller lacks the `developer:manage_api_key`
      #   permission.
      #
      #   @return [WhopSDK::Models::App::APIKey, nil]
      required :api_key, -> { WhopSDK::App::APIKey }, nil?: true

      # @!attribute app_store_description
      #   Detailed description shown on the app store's in-depth app page, or `null` when
      #   none has been set.
      #
      #   @return [String, nil]
      required :app_store_description, String, nil?: true

      # @!attribute app_type
      #   The type of end-user the app is built for.
      #
      #   @return [Symbol, WhopSDK::Models::App::AppType]
      required :app_type, enum: -> { WhopSDK::App::AppType }

      # @!attribute banner_image
      #   Banner image from the app's product listing, or `null` when none is uploaded.
      #
      #   @return [WhopSDK::Models::App::BannerImage, nil]
      required :banner_image, -> { WhopSDK::App::BannerImage }, nil?: true

      # @!attribute base_url
      #   The production base URL where the app is hosted. `null` if no base URL is
      #   configured, if the caller lacks the `developer:basic:read` permission on the
      #   app's account, or on list responses, which never expose it.
      #
      #   @return [String, nil]
      required :base_url, String, nil?: true

      # @!attribute businesses_created_count
      #   Website businesses created from this app as a template.
      #
      #   @return [Integer]
      required :businesses_created_count, Integer

      # @!attribute businesses_created_logo_urls
      #
      #   @return [Array<String>]
      required :businesses_created_logo_urls, WhopSDK::Internal::Type::ArrayOf[String]

      # @!attribute creator
      #   The user who owns the publishing account.
      #
      #   @return [WhopSDK::Models::App::Creator]
      required :creator, -> { WhopSDK::App::Creator }

      # @!attribute dashboard_path
      #   URL path for the account dashboard view, or `null` when not configured.
      #
      #   @return [String, nil]
      required :dashboard_path, String, nil?: true

      # @!attribute default_api_key
      #   The app's default API key. `null` when the app has no default key or the caller
      #   lacks the `developer:manage_api_key` permission; `secret_key` is additionally
      #   `null` unless the caller could have created the key themselves.
      #
      #   @return [WhopSDK::Models::App::DefaultAPIKey, nil]
      required :default_api_key, -> { WhopSDK::App::DefaultAPIKey }, nil?: true

      # @!attribute deployment
      #   What the app has left to publish, and how a publish in flight is going —
      #   `status` is only ever `unpublished`, `publishing`, or `failed` here. `null`
      #   means there is nothing to report: the app is fully published, there is no
      #   working copy to publish from, or the caller cannot deploy this app. Tell those
      #   apart from the app's own `production_web_build`.
      #
      #   @return [WhopSDK::Models::App::Deployment, nil]
      required :deployment, -> { WhopSDK::App::Deployment }, nil?: true

      # @!attribute description
      #   Short description shown in listings and search results, or `null` if none has
      #   been set.
      #
      #   @return [String, nil]
      required :description, String, nil?: true

      # @!attribute discover_path
      #   URL path for the discover view, or `null` when not configured.
      #
      #   @return [String, nil]
      required :discover_path, String, nil?: true

      # @!attribute domain_id
      #   Subdomain identifier for the app's proxied URL, forming
      #   https://{domain_id}.apps.whop.com.
      #
      #   @return [String]
      required :domain_id, String

      # @!attribute elements_used
      #
      #   @return [Array<Symbol, WhopSDK::Models::App::ElementsUsed>]
      required :elements_used, -> { WhopSDK::Internal::Type::ArrayOf[enum: WhopSDK::App::ElementsUsed] }

      # @!attribute experience_path
      #   URL path for the member-facing hub view, or `null` when not configured.
      #
      #   @return [String, nil]
      required :experience_path, String, nil?: true

      # @!attribute hosted_url
      #   Full URL where the app's hosted web build is served, or `null` if no route is
      #   claimed.
      #
      #   @return [String, nil]
      required :hosted_url, String, nil?: true

      # @!attribute icon
      #   The app's icon. Falls back to the default app icon when none is uploaded.
      #
      #   @return [WhopSDK::Models::App::Icon]
      required :icon, -> { WhopSDK::App::Icon }

      # @!attribute marketplace_status
      #   Approval status of the app's product listing on the Whop app store, or `null`
      #   when the app has no associated product.
      #
      #   @return [Symbol, WhopSDK::Models::App::MarketplaceStatus, nil]
      required :marketplace_status, enum: -> { WhopSDK::App::MarketplaceStatus }, nil?: true

      # @!attribute name
      #   Display name shown on the app store and in experience navigation.
      #
      #   @return [String]
      required :name, String

      # @!attribute oauth_client_type
      #   How the app authenticates at the OAuth token endpoint.
      #
      #   @return [Symbol, WhopSDK::Models::App::OAuthClientType]
      required :oauth_client_type, enum: -> { WhopSDK::App::OAuthClientType }

      # @!attribute openapi_path
      #   URL path to the app's OpenAPI spec file, or `null` when not configured.
      #
      #   @return [String, nil]
      required :openapi_path, String, nil?: true

      # @!attribute origin
      #   Full origin URL of the app's proxied domain, for example
      #   https://ab1c2d3e4f.apps.whop.com.
      #
      #   @return [String, nil]
      required :origin, String, nil?: true

      # @!attribute preview_token
      #   A short-lived signed pass scoping the caller to this app's gated preview hosts —
      #   every build preview and the live dev-server sandbox. Add it to a preview host as
      #   the `__whop_preview` query param (or `x-whop-preview-token` header). `null`
      #   unless the caller is a team member who can read the app's developer settings.
      #
      #   @return [String, nil]
      required :preview_token, String, nil?: true

      # @!attribute previous_hosted_urls
      #
      #   @return [Array<String>]
      required :previous_hosted_urls, WhopSDK::Internal::Type::ArrayOf[String]

      # @!attribute product_id
      #   ID of the app's product listing on the Whop app store, or `null` when the app
      #   has no associated product.
      #
      #   @return [String, nil]
      required :product_id, String, nil?: true

      # @!attribute production_android_build
      #   The approved build currently served on Android, or `null` when none is deployed.
      #
      #   @return [WhopSDK::Models::App::ProductionAndroidBuild, nil]
      required :production_android_build, -> { WhopSDK::App::ProductionAndroidBuild }, nil?: true

      # @!attribute production_ios_build
      #   The approved build currently served on iOS, or `null` when none is deployed.
      #
      #   @return [WhopSDK::Models::App::ProductionIosBuild, nil]
      required :production_ios_build, -> { WhopSDK::App::ProductionIosBuild }, nil?: true

      # @!attribute production_web_build
      #   The approved build currently served on web, or `null` when none is deployed.
      #
      #   @return [WhopSDK::Models::App::ProductionWebBuild, nil]
      required :production_web_build, -> { WhopSDK::App::ProductionWebBuild }, nil?: true

      # @!attribute redirect_uris
      #
      #   @return [Array<String>]
      required :redirect_uris, WhopSDK::Internal::Type::ArrayOf[String]

      # @!attribute requested_permissions
      #
      #   @return [Array<WhopSDK::Models::App::RequestedPermission>]
      required :requested_permissions,
               -> { WhopSDK::Internal::Type::ArrayOf[WhopSDK::App::RequestedPermission] }

      # @!attribute required_scopes
      #
      #   @return [Array<Symbol, WhopSDK::Models::App::RequiredScope>]
      required :required_scopes, -> { WhopSDK::Internal::Type::ArrayOf[enum: WhopSDK::App::RequiredScope] }

      # @!attribute route
      #   Claimed subdomain route where hosted web builds are served (`myapp` for
      #   myapp.whop.site), or `null` if no route is claimed.
      #
      #   @return [String, nil]
      required :route, String, nil?: true

      # @!attribute secrets
      #   The app's production secrets as an object of string values, injected into the
      #   hosted server runtime. `null` when the caller lacks the `developer:update_app`
      #   permission.
      #
      #   @return [Object, nil]
      required :secrets, WhopSDK::Internal::Type::Unknown, nil?: true

      # @!attribute skills_path
      #   URL path to the app's skills directory, or `null` when not configured.
      #
      #   @return [String, nil]
      required :skills_path, String, nil?: true

      # @!attribute status
      #   Visibility on the Whop app store: `live` is publicly discoverable, `unlisted` is
      #   accessible only via direct link, `hidden` is not visible anywhere.
      #
      #   @return [Symbol, WhopSDK::Models::App::Status]
      required :status, enum: -> { WhopSDK::App::Status }

      # @!attribute verified
      #   Whether the app has been verified by Whop and is eligible for the featured apps
      #   section.
      #
      #   @return [Boolean]
      required :verified, WhopSDK::Internal::Type::Boolean

      # @!method initialize(id:, account:, api_key:, app_store_description:, app_type:, banner_image:, base_url:, businesses_created_count:, businesses_created_logo_urls:, creator:, dashboard_path:, default_api_key:, deployment:, description:, discover_path:, domain_id:, elements_used:, experience_path:, hosted_url:, icon:, marketplace_status:, name:, oauth_client_type:, openapi_path:, origin:, preview_token:, previous_hosted_urls:, product_id:, production_android_build:, production_ios_build:, production_web_build:, redirect_uris:, requested_permissions:, required_scopes:, route:, secrets:, skills_path:, status:, verified:)
      #   Some parameter documentations has been truncated, see {WhopSDK::Models::App} for
      #   more details.
      #
      #   @param id [String] App ID, prefixed `app_`.
      #
      #   @param account [WhopSDK::Models::App::Account] The account that owns the app.
      #
      #   @param api_key [WhopSDK::Models::App::APIKey, nil] Legacy app API key used to authenticate requests on the app's behalf. `null` whe
      #
      #   @param app_store_description [String, nil] Detailed description shown on the app store's in-depth app page, or `null` when
      #
      #   @param app_type [Symbol, WhopSDK::Models::App::AppType] The type of end-user the app is built for.
      #
      #   @param banner_image [WhopSDK::Models::App::BannerImage, nil] Banner image from the app's product listing, or `null` when none is uploaded.
      #
      #   @param base_url [String, nil] The production base URL where the app is hosted. `null` if no base URL is config
      #
      #   @param businesses_created_count [Integer] Website businesses created from this app as a template.
      #
      #   @param businesses_created_logo_urls [Array<String>]
      #
      #   @param creator [WhopSDK::Models::App::Creator] The user who owns the publishing account.
      #
      #   @param dashboard_path [String, nil] URL path for the account dashboard view, or `null` when not configured.
      #
      #   @param default_api_key [WhopSDK::Models::App::DefaultAPIKey, nil] The app's default API key. `null` when the app has no default key or the caller
      #
      #   @param deployment [WhopSDK::Models::App::Deployment, nil] What the app has left to publish, and how a publish in flight is going — `status
      #
      #   @param description [String, nil] Short description shown in listings and search results, or `null` if none has be
      #
      #   @param discover_path [String, nil] URL path for the discover view, or `null` when not configured.
      #
      #   @param domain_id [String] Subdomain identifier for the app's proxied URL, forming https://{domain_id}.apps
      #
      #   @param elements_used [Array<Symbol, WhopSDK::Models::App::ElementsUsed>]
      #
      #   @param experience_path [String, nil] URL path for the member-facing hub view, or `null` when not configured.
      #
      #   @param hosted_url [String, nil] Full URL where the app's hosted web build is served, or `null` if no route is cl
      #
      #   @param icon [WhopSDK::Models::App::Icon] The app's icon. Falls back to the default app icon when none is uploaded.
      #
      #   @param marketplace_status [Symbol, WhopSDK::Models::App::MarketplaceStatus, nil] Approval status of the app's product listing on the Whop app store, or `null` wh
      #
      #   @param name [String] Display name shown on the app store and in experience navigation.
      #
      #   @param oauth_client_type [Symbol, WhopSDK::Models::App::OAuthClientType] How the app authenticates at the OAuth token endpoint.
      #
      #   @param openapi_path [String, nil] URL path to the app's OpenAPI spec file, or `null` when not configured.
      #
      #   @param origin [String, nil] Full origin URL of the app's proxied domain, for example https://ab1c2d3e4f.apps
      #
      #   @param preview_token [String, nil] A short-lived signed pass scoping the caller to this app's gated preview hosts —
      #
      #   @param previous_hosted_urls [Array<String>]
      #
      #   @param product_id [String, nil] ID of the app's product listing on the Whop app store, or `null` when the app ha
      #
      #   @param production_android_build [WhopSDK::Models::App::ProductionAndroidBuild, nil] The approved build currently served on Android, or `null` when none is deployed.
      #
      #   @param production_ios_build [WhopSDK::Models::App::ProductionIosBuild, nil] The approved build currently served on iOS, or `null` when none is deployed.
      #
      #   @param production_web_build [WhopSDK::Models::App::ProductionWebBuild, nil] The approved build currently served on web, or `null` when none is deployed.
      #
      #   @param redirect_uris [Array<String>]
      #
      #   @param requested_permissions [Array<WhopSDK::Models::App::RequestedPermission>]
      #
      #   @param required_scopes [Array<Symbol, WhopSDK::Models::App::RequiredScope>]
      #
      #   @param route [String, nil] Claimed subdomain route where hosted web builds are served (`myapp` for myapp.wh
      #
      #   @param secrets [Object, nil] The app's production secrets as an object of string values, injected into the ho
      #
      #   @param skills_path [String, nil] URL path to the app's skills directory, or `null` when not configured.
      #
      #   @param status [Symbol, WhopSDK::Models::App::Status] Visibility on the Whop app store: `live` is publicly discoverable, `unlisted` is
      #
      #   @param verified [Boolean] Whether the app has been verified by Whop and is eligible for the featured apps

      # @see WhopSDK::Models::App#account
      class Account < WhopSDK::Internal::Type::BaseModel
        # @!attribute id
        #   Account ID, prefixed `biz_`.
        #
        #   @return [String]
        required :id, String

        # @!attribute logo_url
        #   Account logo image URL.
        #
        #   @return [String, nil]
        required :logo_url, String, nil?: true

        # @!attribute route
        #   Account public route identifier.
        #
        #   @return [String]
        required :route, String

        # @!attribute title
        #   Account display name.
        #
        #   @return [String]
        required :title, String

        # @!method initialize(id:, logo_url:, route:, title:)
        #   The account that owns the app.
        #
        #   @param id [String] Account ID, prefixed `biz_`.
        #
        #   @param logo_url [String, nil] Account logo image URL.
        #
        #   @param route [String] Account public route identifier.
        #
        #   @param title [String] Account display name.
      end

      # @see WhopSDK::Models::App#api_key
      class APIKey < WhopSDK::Internal::Type::BaseModel
        # @!attribute token
        #   The key's secret token, sent as a bearer token to authenticate requests on the
        #   app's behalf.
        #
        #   @return [String]
        required :token, String

        # @!attribute created_at
        #   When the key was created, as an ISO 8601 timestamp.
        #
        #   @return [String]
        required :created_at, String

        # @!method initialize(token:, created_at:)
        #   Some parameter documentations has been truncated, see
        #   {WhopSDK::Models::App::APIKey} for more details.
        #
        #   Legacy app API key used to authenticate requests on the app's behalf. `null`
        #   when no key exists or the caller lacks the `developer:manage_api_key`
        #   permission.
        #
        #   @param token [String] The key's secret token, sent as a bearer token to authenticate requests on the a
        #
        #   @param created_at [String] When the key was created, as an ISO 8601 timestamp.
      end

      # The type of end-user the app is built for.
      #
      # @see WhopSDK::Models::App#app_type
      module AppType
        extend WhopSDK::Internal::Type::Enum

        B2B_APP = :b2b_app
        B2C_APP = :b2c_app
        COMPANY_APP = :company_app
        COMPONENT = :component
        WEBSITE = :website

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # @see WhopSDK::Models::App#banner_image
      class BannerImage < WhopSDK::Internal::Type::BaseModel
        # @!attribute url
        #   Banner image URL, taken from the app's product listing.
        #
        #   @return [String]
        required :url, String

        # @!method initialize(url:)
        #   Banner image from the app's product listing, or `null` when none is uploaded.
        #
        #   @param url [String] Banner image URL, taken from the app's product listing.
      end

      # @see WhopSDK::Models::App#creator
      class Creator < WhopSDK::Internal::Type::BaseModel
        # @!attribute id
        #   User ID, prefixed `user_`.
        #
        #   @return [String]
        required :id, String

        # @!attribute name
        #   Display name.
        #
        #   @return [String, nil]
        required :name, String, nil?: true

        # @!attribute username
        #   Public username.
        #
        #   @return [String]
        required :username, String

        # @!method initialize(id:, name:, username:)
        #   The user who owns the publishing account.
        #
        #   @param id [String] User ID, prefixed `user_`.
        #
        #   @param name [String, nil] Display name.
        #
        #   @param username [String] Public username.
      end

      # @see WhopSDK::Models::App#default_api_key
      class DefaultAPIKey < WhopSDK::Internal::Type::BaseModel
        # @!attribute id
        #   API key ID, prefixed `apik_`.
        #
        #   @return [String]
        required :id, String

        # @!attribute name
        #   Human-readable name identifying the API key, or `null` when none was set.
        #
        #   @return [String, nil]
        required :name, String, nil?: true

        # @!attribute obfuscated_secret_key
        #   Masked version of the secret key, so the key can be recognized without revealing
        #   the full secret.
        #
        #   @return [String]
        required :obfuscated_secret_key, String

        # @!attribute secret_key
        #   The full secret used to authenticate requests. `null` unless the caller could
        #   have created the key themselves.
        #
        #   @return [String, nil]
        required :secret_key, String, nil?: true

        # @!method initialize(id:, name:, obfuscated_secret_key:, secret_key:)
        #   Some parameter documentations has been truncated, see
        #   {WhopSDK::Models::App::DefaultAPIKey} for more details.
        #
        #   The app's default API key. `null` when the app has no default key or the caller
        #   lacks the `developer:manage_api_key` permission; `secret_key` is additionally
        #   `null` unless the caller could have created the key themselves.
        #
        #   @param id [String] API key ID, prefixed `apik_`.
        #
        #   @param name [String, nil] Human-readable name identifying the API key, or `null` when none was set.
        #
        #   @param obfuscated_secret_key [String] Masked version of the secret key, so the key can be recognized without revealing
        #
        #   @param secret_key [String, nil] The full secret used to authenticate requests. `null` unless the caller could ha
      end

      # @see WhopSDK::Models::App#deployment
      class Deployment < WhopSDK::Internal::Type::BaseModel
        # @!attribute app_id
        #   The app being deployed, prefixed `app_`.
        #
        #   @return [String]
        required :app_id, String

        # @!attribute build_id
        #   The build the deployment produced, prefixed `abld_`, or `null` until it
        #   succeeds.
        #
        #   @return [String, nil]
        required :build_id, String, nil?: true

        # @!attribute draft
        #   Whether the running or last deployment uploaded a build without making it live.
        #
        #   @return [Boolean]
        required :draft, WhopSDK::Internal::Type::Boolean

        # @!attribute error
        #   Why the deployment failed, or `null` when it did not.
        #
        #   @return [String, nil]
        required :error, String, nil?: true

        # @!attribute estimated_duration_ms
        #   How long this deployment is expected to take in total, estimated from previous
        #   runs.
        #
        #   @return [Integer, nil]
        required :estimated_duration_ms, Integer, nil?: true

        # @!attribute estimated_remaining_ms
        #   How much longer the deployment is expected to take. Held above zero until it
        #   actually finishes.
        #
        #   @return [Integer, nil]
        required :estimated_remaining_ms, Integer, nil?: true

        # @!attribute finished_at
        #   When the deployment ended, in milliseconds since the epoch, or `null` while it
        #   is still running.
        #
        #   @return [Integer, nil]
        required :finished_at, Integer, nil?: true

        # @!attribute phase
        #   The stage a running deployment has reached, or `null` when none is running.
        #   Later phases dominate the wall clock: `process_archive` waits on the upload
        #   pipeline and `promote` waits for the build to go live.
        #
        #   @return [Symbol, WhopSDK::Models::App::Deployment::Phase, nil]
        required :phase, enum: -> { WhopSDK::App::Deployment::Phase }, nil?: true

        # @!attribute progress
        #   Fraction of the deployment estimated to be complete, from 0 to 1. Stops just
        #   short of 1 until the run ends.
        #
        #   @return [Float, nil]
        required :progress, Float, nil?: true

        # @!attribute started_at
        #   When the deployment began, in milliseconds since the epoch, or `null` when none
        #   has run.
        #
        #   @return [Integer, nil]
        required :started_at, Integer, nil?: true

        # @!attribute status
        #   Whether the app has anything to publish, and what a publish in flight is doing.
        #   `unpublished` means publishing would ship something new; `no_source` means the
        #   sandbox holds no copy of this app, so there is nothing to publish from.
        #
        #   @return [Symbol, WhopSDK::Models::App::Deployment::Status]
        required :status, enum: -> { WhopSDK::App::Deployment::Status }

        # @!attribute url
        #   Where the deployed site is served, or `null` unless the deployment went live.
        #
        #   @return [String, nil]
        required :url, String, nil?: true

        # @!method initialize(app_id:, build_id:, draft:, error:, estimated_duration_ms:, estimated_remaining_ms:, finished_at:, phase:, progress:, started_at:, status:, url:)
        #   Some parameter documentations has been truncated, see
        #   {WhopSDK::Models::App::Deployment} for more details.
        #
        #   What the app has left to publish, and how a publish in flight is going —
        #   `status` is only ever `unpublished`, `publishing`, or `failed` here. `null`
        #   means there is nothing to report: the app is fully published, there is no
        #   working copy to publish from, or the caller cannot deploy this app. Tell those
        #   apart from the app's own `production_web_build`.
        #
        #   @param app_id [String] The app being deployed, prefixed `app_`.
        #
        #   @param build_id [String, nil] The build the deployment produced, prefixed `abld_`, or `null` until it succeeds
        #
        #   @param draft [Boolean] Whether the running or last deployment uploaded a build without making it live.
        #
        #   @param error [String, nil] Why the deployment failed, or `null` when it did not.
        #
        #   @param estimated_duration_ms [Integer, nil] How long this deployment is expected to take in total, estimated from previous r
        #
        #   @param estimated_remaining_ms [Integer, nil] How much longer the deployment is expected to take. Held above zero until it act
        #
        #   @param finished_at [Integer, nil] When the deployment ended, in milliseconds since the epoch, or `null` while it i
        #
        #   @param phase [Symbol, WhopSDK::Models::App::Deployment::Phase, nil] The stage a running deployment has reached, or `null` when none is running. Late
        #
        #   @param progress [Float, nil] Fraction of the deployment estimated to be complete, from 0 to 1. Stops just sho
        #
        #   @param started_at [Integer, nil] When the deployment began, in milliseconds since the epoch, or `null` when none
        #
        #   @param status [Symbol, WhopSDK::Models::App::Deployment::Status] Whether the app has anything to publish, and what a publish in flight is doing.
        #
        #   @param url [String, nil] Where the deployed site is served, or `null` unless the deployment went live.

        # The stage a running deployment has reached, or `null` when none is running.
        # Later phases dominate the wall clock: `process_archive` waits on the upload
        # pipeline and `promote` waits for the build to go live.
        #
        # @see WhopSDK::Models::App::Deployment#phase
        module Phase
          extend WhopSDK::Internal::Type::Enum

          INSTALL = :install
          BUILD = :build
          TYPECHECK = :typecheck
          UPLOAD_BUILD = :upload_build
          UPLOAD_SOURCE = :upload_source
          PROCESS_ARCHIVE = :process_archive
          CREATE_BUILD = :create_build
          PROMOTE = :promote

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # Whether the app has anything to publish, and what a publish in flight is doing.
        # `unpublished` means publishing would ship something new; `no_source` means the
        # sandbox holds no copy of this app, so there is nothing to publish from.
        #
        # @see WhopSDK::Models::App::Deployment#status
        module Status
          extend WhopSDK::Internal::Type::Enum

          PUBLISHED = :published
          UNPUBLISHED = :unpublished
          PUBLISHING = :publishing
          FAILED = :failed
          NO_SOURCE = :no_source

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end

      # Whop Elements the app's production web build mounts, as `<namespace>.<element>`
      # keys (sub-controller children take a third segment, e.g.
      # `payments.cardFields.cardNumber`). A bare namespace means the build reaches that
      # namespace but the individual elements could not be resolved. Empty when the
      # build mounts none, when it has not been scanned yet, or when the app has no
      # production web build.
      module ElementsUsed
        extend WhopSDK::Internal::Type::Enum

        ADS = :ads
        ADS_BILLING_SETUP = :"ads.billing-setup"
        ADS_CAMPAIGN_CREATOR = :"ads.campaign-creator"
        ADS_REPORTING = :"ads.reporting"
        ADS_REPORTING_CHART = :"ads.reporting.chart"
        ADS_REPORTING_TABLE = :"ads.reporting.table"
        CHECKOUT = :checkout
        CHECKOUT_CHECKOUT = :"checkout.checkout"
        CHECKOUT_EXPRESS_CHECKOUT = :"checkout.expressCheckout"
        PAYMENTS = :payments
        PAYMENTS_ADDRESS = :"payments.address"
        PAYMENTS_BRANDING = :"payments.branding"
        PAYMENTS_CARD = :"payments.card"
        PAYMENTS_CARD_FIELDS = :"payments.cardFields"
        PAYMENTS_CARD_FIELDS_CARD_CVC = :"payments.cardFields.cardCvc"
        PAYMENTS_CARD_FIELDS_CARD_EXPIRY = :"payments.cardFields.cardExpiry"
        PAYMENTS_CARD_FIELDS_CARD_NUMBER = :"payments.cardFields.cardNumber"
        PAYMENTS_EMAIL = :"payments.email"
        PAYMENTS_PAYMENT = :"payments.payment"
        PAYMENTS_TAX_ID = :"payments.taxId"
        TRACKING = :tracking
        TRACKING_EVENTS = :"tracking.events"
        TRACKING_PEOPLE = :"tracking.people"
        WALLET = :wallet
        WALLET_ACTIVITY = :"wallet.activity"
        WALLET_BALANCES = :"wallet.balances"
        WALLET_BALANCES_BALANCE = :"wallet.balances.balance"
        WALLET_BALANCES_LIST = :"wallet.balances.list"
        WALLET_CARDS = :"wallet.cards"
        WALLET_DEPOSIT = :"wallet.deposit"
        WALLET_SEND = :"wallet.send"
        WALLET_WITHDRAW = :"wallet.withdraw"
        WEBSITES = :websites
        WEBSITES_PIXEL_SETUP = :"websites.pixel-setup"
        WEBSITES_WEBSITES = :"websites.websites"

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # @see WhopSDK::Models::App#icon
      class Icon < WhopSDK::Internal::Type::BaseModel
        # @!attribute url
        #   Icon image URL. Always present — the default app icon when none is uploaded.
        #
        #   @return [String]
        required :url, String

        # @!method initialize(url:)
        #   The app's icon. Falls back to the default app icon when none is uploaded.
        #
        #   @param url [String] Icon image URL. Always present — the default app icon when none is uploaded.
      end

      # Approval status of the app's product listing on the Whop app store, or `null`
      # when the app has no associated product.
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

      # How the app authenticates at the OAuth token endpoint.
      #
      # @see WhopSDK::Models::App#oauth_client_type
      module OAuthClientType
        extend WhopSDK::Internal::Type::Enum

        PUBLIC = :public
        CONFIDENTIAL = :confidential

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # @see WhopSDK::Models::App#production_android_build
      class ProductionAndroidBuild < WhopSDK::Internal::Type::BaseModel
        # @!attribute id
        #   App build ID, prefixed `abld_`.
        #
        #   @return [String]
        required :id, String

        # @!attribute checksum
        #   Client-generated checksum of the build file, used to verify file integrity.
        #
        #   @return [String, nil]
        required :checksum, String, nil?: true

        # @!attribute file_url
        #   URL to download the uploaded build artifact.
        #
        #   @return [String, nil]
        required :file_url, String, nil?: true

        # @!attribute source_url
        #   URL to download the compressed source code archive that produced this build, or
        #   `null` when the build was uploaded without a source archive.
        #
        #   @return [String, nil]
        required :source_url, String, nil?: true

        # @!attribute status
        #   The build's review status.
        #
        #   @return [Symbol, WhopSDK::Models::App::ProductionAndroidBuild::Status]
        required :status, enum: -> { WhopSDK::App::ProductionAndroidBuild::Status }

        # @!method initialize(id:, checksum:, file_url:, source_url:, status:)
        #   Some parameter documentations has been truncated, see
        #   {WhopSDK::Models::App::ProductionAndroidBuild} for more details.
        #
        #   The approved build currently served on Android, or `null` when none is deployed.
        #
        #   @param id [String] App build ID, prefixed `abld_`.
        #
        #   @param checksum [String, nil] Client-generated checksum of the build file, used to verify file integrity.
        #
        #   @param file_url [String, nil] URL to download the uploaded build artifact.
        #
        #   @param source_url [String, nil] URL to download the compressed source code archive that produced this build, or
        #
        #   @param status [Symbol, WhopSDK::Models::App::ProductionAndroidBuild::Status] The build's review status.

        # The build's review status.
        #
        # @see WhopSDK::Models::App::ProductionAndroidBuild#status
        module Status
          extend WhopSDK::Internal::Type::Enum

          DRAFT = :draft
          PENDING = :pending
          APPROVED = :approved
          REJECTED = :rejected

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end

      # @see WhopSDK::Models::App#production_ios_build
      class ProductionIosBuild < WhopSDK::Internal::Type::BaseModel
        # @!attribute id
        #   App build ID, prefixed `abld_`.
        #
        #   @return [String]
        required :id, String

        # @!attribute checksum
        #   Client-generated checksum of the build file, used to verify file integrity.
        #
        #   @return [String, nil]
        required :checksum, String, nil?: true

        # @!attribute file_url
        #   URL to download the uploaded build artifact.
        #
        #   @return [String, nil]
        required :file_url, String, nil?: true

        # @!attribute source_url
        #   URL to download the compressed source code archive that produced this build, or
        #   `null` when the build was uploaded without a source archive.
        #
        #   @return [String, nil]
        required :source_url, String, nil?: true

        # @!attribute status
        #   The build's review status.
        #
        #   @return [Symbol, WhopSDK::Models::App::ProductionIosBuild::Status]
        required :status, enum: -> { WhopSDK::App::ProductionIosBuild::Status }

        # @!method initialize(id:, checksum:, file_url:, source_url:, status:)
        #   Some parameter documentations has been truncated, see
        #   {WhopSDK::Models::App::ProductionIosBuild} for more details.
        #
        #   The approved build currently served on iOS, or `null` when none is deployed.
        #
        #   @param id [String] App build ID, prefixed `abld_`.
        #
        #   @param checksum [String, nil] Client-generated checksum of the build file, used to verify file integrity.
        #
        #   @param file_url [String, nil] URL to download the uploaded build artifact.
        #
        #   @param source_url [String, nil] URL to download the compressed source code archive that produced this build, or
        #
        #   @param status [Symbol, WhopSDK::Models::App::ProductionIosBuild::Status] The build's review status.

        # The build's review status.
        #
        # @see WhopSDK::Models::App::ProductionIosBuild#status
        module Status
          extend WhopSDK::Internal::Type::Enum

          DRAFT = :draft
          PENDING = :pending
          APPROVED = :approved
          REJECTED = :rejected

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end

      # @see WhopSDK::Models::App#production_web_build
      class ProductionWebBuild < WhopSDK::Internal::Type::BaseModel
        # @!attribute id
        #   App build ID, prefixed `abld_`.
        #
        #   @return [String]
        required :id, String

        # @!attribute checksum
        #   Client-generated checksum of the build file, used to verify file integrity.
        #
        #   @return [String, nil]
        required :checksum, String, nil?: true

        # @!attribute file_url
        #   URL to download the uploaded build artifact.
        #
        #   @return [String, nil]
        required :file_url, String, nil?: true

        # @!attribute source_url
        #   URL to download the compressed source code archive that produced this build, or
        #   `null` when the build was uploaded without a source archive.
        #
        #   @return [String, nil]
        required :source_url, String, nil?: true

        # @!attribute status
        #   The build's review status.
        #
        #   @return [Symbol, WhopSDK::Models::App::ProductionWebBuild::Status]
        required :status, enum: -> { WhopSDK::App::ProductionWebBuild::Status }

        # @!method initialize(id:, checksum:, file_url:, source_url:, status:)
        #   Some parameter documentations has been truncated, see
        #   {WhopSDK::Models::App::ProductionWebBuild} for more details.
        #
        #   The approved build currently served on web, or `null` when none is deployed.
        #
        #   @param id [String] App build ID, prefixed `abld_`.
        #
        #   @param checksum [String, nil] Client-generated checksum of the build file, used to verify file integrity.
        #
        #   @param file_url [String, nil] URL to download the uploaded build artifact.
        #
        #   @param source_url [String, nil] URL to download the compressed source code archive that produced this build, or
        #
        #   @param status [Symbol, WhopSDK::Models::App::ProductionWebBuild::Status] The build's review status.

        # The build's review status.
        #
        # @see WhopSDK::Models::App::ProductionWebBuild#status
        module Status
          extend WhopSDK::Internal::Type::Enum

          DRAFT = :draft
          PENDING = :pending
          APPROVED = :approved
          REJECTED = :rejected

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end

      class RequestedPermission < WhopSDK::Internal::Type::BaseModel
        # @!attribute is_required
        #   Whether the app requires the permission to be granted on install, as opposed to
        #   requesting it optionally.
        #
        #   @return [Boolean]
        required :is_required, WhopSDK::Internal::Type::Boolean

        # @!attribute justification
        #   The developer's explanation of why the app needs the permission, or `null` when
        #   none was provided.
        #
        #   @return [String, nil]
        required :justification, String, nil?: true

        # @!attribute permission_action
        #   The permission action the app requests.
        #
        #   @return [WhopSDK::Models::App::RequestedPermission::PermissionAction]
        required :permission_action, -> { WhopSDK::App::RequestedPermission::PermissionAction }

        # @!method initialize(is_required:, justification:, permission_action:)
        #   Some parameter documentations has been truncated, see
        #   {WhopSDK::Models::App::RequestedPermission} for more details.
        #
        #   Permissions the app requests on install.
        #
        #   @param is_required [Boolean] Whether the app requires the permission to be granted on install, as opposed to
        #
        #   @param justification [String, nil] The developer's explanation of why the app needs the permission, or `null` when
        #
        #   @param permission_action [WhopSDK::Models::App::RequestedPermission::PermissionAction] The permission action the app requests.

        # @see WhopSDK::Models::App::RequestedPermission#permission_action
        class PermissionAction < WhopSDK::Internal::Type::BaseModel
          # @!attribute action
          #   The permission action's identifier, for example `company:basic:read`.
          #
          #   @return [String]
          required :action, String

          # @!attribute name
          #   Human-readable name of the action.
          #
          #   @return [String]
          required :name, String

          # @!method initialize(action:, name:)
          #   The permission action the app requests.
          #
          #   @param action [String] The permission action's identifier, for example `company:basic:read`.
          #
          #   @param name [String] Human-readable name of the action.
        end
      end

      # Scopes the app asks a user to grant when they authorize it, shown on the consent
      # screen.
      module RequiredScope
        extend WhopSDK::Internal::Type::Enum

        READ_USER = :read_user

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # Visibility on the Whop app store: `live` is publicly discoverable, `unlisted` is
      # accessible only via direct link, `hidden` is not visible anywhere.
      #
      # @see WhopSDK::Models::App#status
      module Status
        extend WhopSDK::Internal::Type::Enum

        LIVE = :live
        UNLISTED = :unlisted
        HIDDEN = :hidden

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
