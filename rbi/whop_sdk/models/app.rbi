# typed: strong

module WhopSDK
  module Models
    class App < WhopSDK::Internal::Type::BaseModel
      OrHash = T.type_alias { T.any(WhopSDK::App, WhopSDK::Internal::AnyHash) }

      # App ID, prefixed `app_`.
      sig { returns(String) }
      attr_accessor :id

      # The account that owns the app.
      sig { returns(WhopSDK::App::Account) }
      attr_reader :account

      sig { params(account: WhopSDK::App::Account::OrHash).void }
      attr_writer :account

      # Legacy app API key used to authenticate requests on the app's behalf. `null`
      # when no key exists or the caller lacks the `developer:manage_api_key`
      # permission.
      sig { returns(T.nilable(WhopSDK::App::APIKey)) }
      attr_reader :api_key

      sig { params(api_key: T.nilable(WhopSDK::App::APIKey::OrHash)).void }
      attr_writer :api_key

      # Detailed description shown on the app store's in-depth app page, or `null` when
      # none has been set.
      sig { returns(T.nilable(String)) }
      attr_accessor :app_store_description

      # The type of end-user the app is built for.
      sig { returns(WhopSDK::App::AppType::TaggedSymbol) }
      attr_accessor :app_type

      # Banner image from the app's product listing, or `null` when none is uploaded.
      sig { returns(T.nilable(WhopSDK::App::BannerImage)) }
      attr_reader :banner_image

      sig do
        params(banner_image: T.nilable(WhopSDK::App::BannerImage::OrHash)).void
      end
      attr_writer :banner_image

      # The production base URL where the app is hosted. `null` if no base URL is
      # configured, if the caller lacks the `developer:basic:read` permission on the
      # app's account, or on list responses, which never expose it.
      sig { returns(T.nilable(String)) }
      attr_accessor :base_url

      # Website businesses created from this app as a template.
      sig { returns(Integer) }
      attr_accessor :businesses_created_count

      sig { returns(T::Array[String]) }
      attr_accessor :businesses_created_logo_urls

      # The user who owns the publishing account.
      sig { returns(WhopSDK::App::Creator) }
      attr_reader :creator

      sig { params(creator: WhopSDK::App::Creator::OrHash).void }
      attr_writer :creator

      # URL path for the account dashboard view, or `null` when not configured.
      sig { returns(T.nilable(String)) }
      attr_accessor :dashboard_path

      # The app's default API key. `null` when the app has no default key or the caller
      # lacks the `developer:manage_api_key` permission; `secret_key` is additionally
      # `null` unless the caller could have created the key themselves.
      sig { returns(T.nilable(WhopSDK::App::DefaultAPIKey)) }
      attr_reader :default_api_key

      sig do
        params(
          default_api_key: T.nilable(WhopSDK::App::DefaultAPIKey::OrHash)
        ).void
      end
      attr_writer :default_api_key

      # What the app has left to publish, and how a publish in flight is going —
      # `status` is only ever `unpublished`, `publishing`, or `failed` here. `null`
      # means there is nothing to report: the app is fully published, there is no
      # working copy to publish from, or the caller cannot deploy this app. Tell those
      # apart from the app's own `production_web_build`.
      sig { returns(T.nilable(WhopSDK::App::Deployment)) }
      attr_reader :deployment

      sig do
        params(deployment: T.nilable(WhopSDK::App::Deployment::OrHash)).void
      end
      attr_writer :deployment

      # Short description shown in listings and search results, or `null` if none has
      # been set.
      sig { returns(T.nilable(String)) }
      attr_accessor :description

      # URL path for the discover view, or `null` when not configured.
      sig { returns(T.nilable(String)) }
      attr_accessor :discover_path

      # Subdomain identifier for the app's proxied URL, forming
      # https://{domain_id}.apps.whop.com.
      sig { returns(String) }
      attr_accessor :domain_id

      sig { returns(T::Array[WhopSDK::App::ElementsUsed::TaggedSymbol]) }
      attr_accessor :elements_used

      # URL path for the member-facing hub view, or `null` when not configured.
      sig { returns(T.nilable(String)) }
      attr_accessor :experience_path

      # Full URL where the app's hosted web build is served, or `null` if no route is
      # claimed.
      sig { returns(T.nilable(String)) }
      attr_accessor :hosted_url

      # The app's icon. Falls back to the default app icon when none is uploaded.
      sig { returns(WhopSDK::App::Icon) }
      attr_reader :icon

      sig { params(icon: WhopSDK::App::Icon::OrHash).void }
      attr_writer :icon

      # Approval status of the app's product listing on the Whop app store, or `null`
      # when the app has no associated product.
      sig { returns(T.nilable(WhopSDK::App::MarketplaceStatus::TaggedSymbol)) }
      attr_accessor :marketplace_status

      # Display name shown on the app store and in experience navigation.
      sig { returns(String) }
      attr_accessor :name

      # How the app authenticates at the OAuth token endpoint.
      sig { returns(WhopSDK::App::OAuthClientType::TaggedSymbol) }
      attr_accessor :oauth_client_type

      # URL path to the app's OpenAPI spec file, or `null` when not configured.
      sig { returns(T.nilable(String)) }
      attr_accessor :openapi_path

      # Full origin URL of the app's proxied domain, for example
      # https://ab1c2d3e4f.apps.whop.com.
      sig { returns(T.nilable(String)) }
      attr_accessor :origin

      # A short-lived signed pass scoping the caller to this app's gated preview hosts —
      # every build preview and the live dev-server sandbox. Add it to a preview host as
      # the `__whop_preview` query param (or `x-whop-preview-token` header). `null`
      # unless the caller is a team member who can read the app's developer settings.
      sig { returns(T.nilable(String)) }
      attr_accessor :preview_token

      sig { returns(T::Array[String]) }
      attr_accessor :previous_hosted_urls

      # ID of the app's product listing on the Whop app store, or `null` when the app
      # has no associated product.
      sig { returns(T.nilable(String)) }
      attr_accessor :product_id

      # The approved build currently served on Android, or `null` when none is deployed.
      sig { returns(T.nilable(WhopSDK::App::ProductionAndroidBuild)) }
      attr_reader :production_android_build

      sig do
        params(
          production_android_build:
            T.nilable(WhopSDK::App::ProductionAndroidBuild::OrHash)
        ).void
      end
      attr_writer :production_android_build

      # The approved build currently served on iOS, or `null` when none is deployed.
      sig { returns(T.nilable(WhopSDK::App::ProductionIosBuild)) }
      attr_reader :production_ios_build

      sig do
        params(
          production_ios_build:
            T.nilable(WhopSDK::App::ProductionIosBuild::OrHash)
        ).void
      end
      attr_writer :production_ios_build

      # The approved build currently served on web, or `null` when none is deployed.
      sig { returns(T.nilable(WhopSDK::App::ProductionWebBuild)) }
      attr_reader :production_web_build

      sig do
        params(
          production_web_build:
            T.nilable(WhopSDK::App::ProductionWebBuild::OrHash)
        ).void
      end
      attr_writer :production_web_build

      sig { returns(T::Array[String]) }
      attr_accessor :redirect_uris

      sig { returns(T::Array[WhopSDK::App::RequestedPermission]) }
      attr_accessor :requested_permissions

      sig { returns(T::Array[WhopSDK::App::RequiredScope::TaggedSymbol]) }
      attr_accessor :required_scopes

      # Claimed subdomain route where hosted web builds are served (`myapp` for
      # myapp.whop.site), or `null` if no route is claimed.
      sig { returns(T.nilable(String)) }
      attr_accessor :route

      # The app's production secrets as an object of string values, injected into the
      # hosted server runtime. `null` when the caller lacks the `developer:update_app`
      # permission.
      sig { returns(T.nilable(T.anything)) }
      attr_accessor :secrets

      # URL path to the app's skills directory, or `null` when not configured.
      sig { returns(T.nilable(String)) }
      attr_accessor :skills_path

      # Visibility on the Whop app store: `live` is publicly discoverable, `unlisted` is
      # accessible only via direct link, `hidden` is not visible anywhere.
      sig { returns(WhopSDK::App::Status::TaggedSymbol) }
      attr_accessor :status

      # Whether the app has been verified by Whop and is eligible for the featured apps
      # section.
      sig { returns(T::Boolean) }
      attr_accessor :verified

      sig do
        params(
          id: String,
          account: WhopSDK::App::Account::OrHash,
          api_key: T.nilable(WhopSDK::App::APIKey::OrHash),
          app_store_description: T.nilable(String),
          app_type: WhopSDK::App::AppType::OrSymbol,
          banner_image: T.nilable(WhopSDK::App::BannerImage::OrHash),
          base_url: T.nilable(String),
          businesses_created_count: Integer,
          businesses_created_logo_urls: T::Array[String],
          creator: WhopSDK::App::Creator::OrHash,
          dashboard_path: T.nilable(String),
          default_api_key: T.nilable(WhopSDK::App::DefaultAPIKey::OrHash),
          deployment: T.nilable(WhopSDK::App::Deployment::OrHash),
          description: T.nilable(String),
          discover_path: T.nilable(String),
          domain_id: String,
          elements_used: T::Array[WhopSDK::App::ElementsUsed::OrSymbol],
          experience_path: T.nilable(String),
          hosted_url: T.nilable(String),
          icon: WhopSDK::App::Icon::OrHash,
          marketplace_status:
            T.nilable(WhopSDK::App::MarketplaceStatus::OrSymbol),
          name: String,
          oauth_client_type: WhopSDK::App::OAuthClientType::OrSymbol,
          openapi_path: T.nilable(String),
          origin: T.nilable(String),
          preview_token: T.nilable(String),
          previous_hosted_urls: T::Array[String],
          product_id: T.nilable(String),
          production_android_build:
            T.nilable(WhopSDK::App::ProductionAndroidBuild::OrHash),
          production_ios_build:
            T.nilable(WhopSDK::App::ProductionIosBuild::OrHash),
          production_web_build:
            T.nilable(WhopSDK::App::ProductionWebBuild::OrHash),
          redirect_uris: T::Array[String],
          requested_permissions:
            T::Array[WhopSDK::App::RequestedPermission::OrHash],
          required_scopes: T::Array[WhopSDK::App::RequiredScope::OrSymbol],
          route: T.nilable(String),
          secrets: T.nilable(T.anything),
          skills_path: T.nilable(String),
          status: WhopSDK::App::Status::OrSymbol,
          verified: T::Boolean
        ).returns(T.attached_class)
      end
      def self.new(
        # App ID, prefixed `app_`.
        id:,
        # The account that owns the app.
        account:,
        # Legacy app API key used to authenticate requests on the app's behalf. `null`
        # when no key exists or the caller lacks the `developer:manage_api_key`
        # permission.
        api_key:,
        # Detailed description shown on the app store's in-depth app page, or `null` when
        # none has been set.
        app_store_description:,
        # The type of end-user the app is built for.
        app_type:,
        # Banner image from the app's product listing, or `null` when none is uploaded.
        banner_image:,
        # The production base URL where the app is hosted. `null` if no base URL is
        # configured, if the caller lacks the `developer:basic:read` permission on the
        # app's account, or on list responses, which never expose it.
        base_url:,
        # Website businesses created from this app as a template.
        businesses_created_count:,
        businesses_created_logo_urls:,
        # The user who owns the publishing account.
        creator:,
        # URL path for the account dashboard view, or `null` when not configured.
        dashboard_path:,
        # The app's default API key. `null` when the app has no default key or the caller
        # lacks the `developer:manage_api_key` permission; `secret_key` is additionally
        # `null` unless the caller could have created the key themselves.
        default_api_key:,
        # What the app has left to publish, and how a publish in flight is going —
        # `status` is only ever `unpublished`, `publishing`, or `failed` here. `null`
        # means there is nothing to report: the app is fully published, there is no
        # working copy to publish from, or the caller cannot deploy this app. Tell those
        # apart from the app's own `production_web_build`.
        deployment:,
        # Short description shown in listings and search results, or `null` if none has
        # been set.
        description:,
        # URL path for the discover view, or `null` when not configured.
        discover_path:,
        # Subdomain identifier for the app's proxied URL, forming
        # https://{domain_id}.apps.whop.com.
        domain_id:,
        elements_used:,
        # URL path for the member-facing hub view, or `null` when not configured.
        experience_path:,
        # Full URL where the app's hosted web build is served, or `null` if no route is
        # claimed.
        hosted_url:,
        # The app's icon. Falls back to the default app icon when none is uploaded.
        icon:,
        # Approval status of the app's product listing on the Whop app store, or `null`
        # when the app has no associated product.
        marketplace_status:,
        # Display name shown on the app store and in experience navigation.
        name:,
        # How the app authenticates at the OAuth token endpoint.
        oauth_client_type:,
        # URL path to the app's OpenAPI spec file, or `null` when not configured.
        openapi_path:,
        # Full origin URL of the app's proxied domain, for example
        # https://ab1c2d3e4f.apps.whop.com.
        origin:,
        # A short-lived signed pass scoping the caller to this app's gated preview hosts —
        # every build preview and the live dev-server sandbox. Add it to a preview host as
        # the `__whop_preview` query param (or `x-whop-preview-token` header). `null`
        # unless the caller is a team member who can read the app's developer settings.
        preview_token:,
        previous_hosted_urls:,
        # ID of the app's product listing on the Whop app store, or `null` when the app
        # has no associated product.
        product_id:,
        # The approved build currently served on Android, or `null` when none is deployed.
        production_android_build:,
        # The approved build currently served on iOS, or `null` when none is deployed.
        production_ios_build:,
        # The approved build currently served on web, or `null` when none is deployed.
        production_web_build:,
        redirect_uris:,
        requested_permissions:,
        required_scopes:,
        # Claimed subdomain route where hosted web builds are served (`myapp` for
        # myapp.whop.site), or `null` if no route is claimed.
        route:,
        # The app's production secrets as an object of string values, injected into the
        # hosted server runtime. `null` when the caller lacks the `developer:update_app`
        # permission.
        secrets:,
        # URL path to the app's skills directory, or `null` when not configured.
        skills_path:,
        # Visibility on the Whop app store: `live` is publicly discoverable, `unlisted` is
        # accessible only via direct link, `hidden` is not visible anywhere.
        status:,
        # Whether the app has been verified by Whop and is eligible for the featured apps
        # section.
        verified:
      )
      end

      sig do
        override.returns(
          {
            id: String,
            account: WhopSDK::App::Account,
            api_key: T.nilable(WhopSDK::App::APIKey),
            app_store_description: T.nilable(String),
            app_type: WhopSDK::App::AppType::TaggedSymbol,
            banner_image: T.nilable(WhopSDK::App::BannerImage),
            base_url: T.nilable(String),
            businesses_created_count: Integer,
            businesses_created_logo_urls: T::Array[String],
            creator: WhopSDK::App::Creator,
            dashboard_path: T.nilable(String),
            default_api_key: T.nilable(WhopSDK::App::DefaultAPIKey),
            deployment: T.nilable(WhopSDK::App::Deployment),
            description: T.nilable(String),
            discover_path: T.nilable(String),
            domain_id: String,
            elements_used: T::Array[WhopSDK::App::ElementsUsed::TaggedSymbol],
            experience_path: T.nilable(String),
            hosted_url: T.nilable(String),
            icon: WhopSDK::App::Icon,
            marketplace_status:
              T.nilable(WhopSDK::App::MarketplaceStatus::TaggedSymbol),
            name: String,
            oauth_client_type: WhopSDK::App::OAuthClientType::TaggedSymbol,
            openapi_path: T.nilable(String),
            origin: T.nilable(String),
            preview_token: T.nilable(String),
            previous_hosted_urls: T::Array[String],
            product_id: T.nilable(String),
            production_android_build:
              T.nilable(WhopSDK::App::ProductionAndroidBuild),
            production_ios_build: T.nilable(WhopSDK::App::ProductionIosBuild),
            production_web_build: T.nilable(WhopSDK::App::ProductionWebBuild),
            redirect_uris: T::Array[String],
            requested_permissions: T::Array[WhopSDK::App::RequestedPermission],
            required_scopes:
              T::Array[WhopSDK::App::RequiredScope::TaggedSymbol],
            route: T.nilable(String),
            secrets: T.nilable(T.anything),
            skills_path: T.nilable(String),
            status: WhopSDK::App::Status::TaggedSymbol,
            verified: T::Boolean
          }
        )
      end
      def to_hash
      end

      class Account < WhopSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(WhopSDK::App::Account, WhopSDK::Internal::AnyHash)
          end

        # Account ID, prefixed `biz_`.
        sig { returns(String) }
        attr_accessor :id

        # Account logo image URL.
        sig { returns(T.nilable(String)) }
        attr_accessor :logo_url

        # Account public route identifier.
        sig { returns(String) }
        attr_accessor :route

        # Account display name.
        sig { returns(String) }
        attr_accessor :title

        # The account that owns the app.
        sig do
          params(
            id: String,
            logo_url: T.nilable(String),
            route: String,
            title: String
          ).returns(T.attached_class)
        end
        def self.new(
          # Account ID, prefixed `biz_`.
          id:,
          # Account logo image URL.
          logo_url:,
          # Account public route identifier.
          route:,
          # Account display name.
          title:
        )
        end

        sig do
          override.returns(
            {
              id: String,
              logo_url: T.nilable(String),
              route: String,
              title: String
            }
          )
        end
        def to_hash
        end
      end

      class APIKey < WhopSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(WhopSDK::App::APIKey, WhopSDK::Internal::AnyHash)
          end

        # The key's secret token, sent as a bearer token to authenticate requests on the
        # app's behalf.
        sig { returns(String) }
        attr_accessor :token

        # When the key was created, as an ISO 8601 timestamp.
        sig { returns(String) }
        attr_accessor :created_at

        # Legacy app API key used to authenticate requests on the app's behalf. `null`
        # when no key exists or the caller lacks the `developer:manage_api_key`
        # permission.
        sig do
          params(token: String, created_at: String).returns(T.attached_class)
        end
        def self.new(
          # The key's secret token, sent as a bearer token to authenticate requests on the
          # app's behalf.
          token:,
          # When the key was created, as an ISO 8601 timestamp.
          created_at:
        )
        end

        sig { override.returns({ token: String, created_at: String }) }
        def to_hash
        end
      end

      # The type of end-user the app is built for.
      module AppType
        extend WhopSDK::Internal::Type::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, WhopSDK::App::AppType) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        B2B_APP = T.let(:b2b_app, WhopSDK::App::AppType::TaggedSymbol)
        B2C_APP = T.let(:b2c_app, WhopSDK::App::AppType::TaggedSymbol)
        COMPANY_APP = T.let(:company_app, WhopSDK::App::AppType::TaggedSymbol)
        COMPONENT = T.let(:component, WhopSDK::App::AppType::TaggedSymbol)
        WEBSITE = T.let(:website, WhopSDK::App::AppType::TaggedSymbol)

        sig { override.returns(T::Array[WhopSDK::App::AppType::TaggedSymbol]) }
        def self.values
        end
      end

      class BannerImage < WhopSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(WhopSDK::App::BannerImage, WhopSDK::Internal::AnyHash)
          end

        # Banner image URL, taken from the app's product listing.
        sig { returns(String) }
        attr_accessor :url

        # Banner image from the app's product listing, or `null` when none is uploaded.
        sig { params(url: String).returns(T.attached_class) }
        def self.new(
          # Banner image URL, taken from the app's product listing.
          url:
        )
        end

        sig { override.returns({ url: String }) }
        def to_hash
        end
      end

      class Creator < WhopSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(WhopSDK::App::Creator, WhopSDK::Internal::AnyHash)
          end

        # User ID, prefixed `user_`.
        sig { returns(String) }
        attr_accessor :id

        # Display name.
        sig { returns(T.nilable(String)) }
        attr_accessor :name

        # Public username.
        sig { returns(String) }
        attr_accessor :username

        # The user who owns the publishing account.
        sig do
          params(id: String, name: T.nilable(String), username: String).returns(
            T.attached_class
          )
        end
        def self.new(
          # User ID, prefixed `user_`.
          id:,
          # Display name.
          name:,
          # Public username.
          username:
        )
        end

        sig do
          override.returns(
            { id: String, name: T.nilable(String), username: String }
          )
        end
        def to_hash
        end
      end

      class DefaultAPIKey < WhopSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(WhopSDK::App::DefaultAPIKey, WhopSDK::Internal::AnyHash)
          end

        # API key ID, prefixed `apik_`.
        sig { returns(String) }
        attr_accessor :id

        # Human-readable name identifying the API key, or `null` when none was set.
        sig { returns(T.nilable(String)) }
        attr_accessor :name

        # Masked version of the secret key, so the key can be recognized without revealing
        # the full secret.
        sig { returns(String) }
        attr_accessor :obfuscated_secret_key

        # The full secret used to authenticate requests. `null` unless the caller could
        # have created the key themselves.
        sig { returns(T.nilable(String)) }
        attr_accessor :secret_key

        # The app's default API key. `null` when the app has no default key or the caller
        # lacks the `developer:manage_api_key` permission; `secret_key` is additionally
        # `null` unless the caller could have created the key themselves.
        sig do
          params(
            id: String,
            name: T.nilable(String),
            obfuscated_secret_key: String,
            secret_key: T.nilable(String)
          ).returns(T.attached_class)
        end
        def self.new(
          # API key ID, prefixed `apik_`.
          id:,
          # Human-readable name identifying the API key, or `null` when none was set.
          name:,
          # Masked version of the secret key, so the key can be recognized without revealing
          # the full secret.
          obfuscated_secret_key:,
          # The full secret used to authenticate requests. `null` unless the caller could
          # have created the key themselves.
          secret_key:
        )
        end

        sig do
          override.returns(
            {
              id: String,
              name: T.nilable(String),
              obfuscated_secret_key: String,
              secret_key: T.nilable(String)
            }
          )
        end
        def to_hash
        end
      end

      class Deployment < WhopSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(WhopSDK::App::Deployment, WhopSDK::Internal::AnyHash)
          end

        # The app being deployed, prefixed `app_`.
        sig { returns(String) }
        attr_accessor :app_id

        # The build the deployment produced, prefixed `abld_`, or `null` until it
        # succeeds.
        sig { returns(T.nilable(String)) }
        attr_accessor :build_id

        # Whether the running or last deployment uploaded a build without making it live.
        sig { returns(T::Boolean) }
        attr_accessor :draft

        # Why the deployment failed, or `null` when it did not.
        sig { returns(T.nilable(String)) }
        attr_accessor :error

        # How long this deployment is expected to take in total, estimated from previous
        # runs.
        sig { returns(T.nilable(Integer)) }
        attr_accessor :estimated_duration_ms

        # How much longer the deployment is expected to take. Held above zero until it
        # actually finishes.
        sig { returns(T.nilable(Integer)) }
        attr_accessor :estimated_remaining_ms

        # When the deployment ended, in milliseconds since the epoch, or `null` while it
        # is still running.
        sig { returns(T.nilable(Integer)) }
        attr_accessor :finished_at

        # The stage a running deployment has reached, or `null` when none is running.
        # Later phases dominate the wall clock: `process_archive` waits on the upload
        # pipeline and `promote` waits for the build to go live.
        sig do
          returns(T.nilable(WhopSDK::App::Deployment::Phase::TaggedSymbol))
        end
        attr_accessor :phase

        # Fraction of the deployment estimated to be complete, from 0 to 1. Stops just
        # short of 1 until the run ends.
        sig { returns(T.nilable(Float)) }
        attr_accessor :progress

        # When the deployment began, in milliseconds since the epoch, or `null` when none
        # has run.
        sig { returns(T.nilable(Integer)) }
        attr_accessor :started_at

        # Whether the app has anything to publish, and what a publish in flight is doing.
        # `unpublished` means publishing would ship something new; `no_source` means the
        # sandbox holds no copy of this app, so there is nothing to publish from.
        sig { returns(WhopSDK::App::Deployment::Status::TaggedSymbol) }
        attr_accessor :status

        # Where the deployed site is served, or `null` unless the deployment went live.
        sig { returns(T.nilable(String)) }
        attr_accessor :url

        # What the app has left to publish, and how a publish in flight is going —
        # `status` is only ever `unpublished`, `publishing`, or `failed` here. `null`
        # means there is nothing to report: the app is fully published, there is no
        # working copy to publish from, or the caller cannot deploy this app. Tell those
        # apart from the app's own `production_web_build`.
        sig do
          params(
            app_id: String,
            build_id: T.nilable(String),
            draft: T::Boolean,
            error: T.nilable(String),
            estimated_duration_ms: T.nilable(Integer),
            estimated_remaining_ms: T.nilable(Integer),
            finished_at: T.nilable(Integer),
            phase: T.nilable(WhopSDK::App::Deployment::Phase::OrSymbol),
            progress: T.nilable(Float),
            started_at: T.nilable(Integer),
            status: WhopSDK::App::Deployment::Status::OrSymbol,
            url: T.nilable(String)
          ).returns(T.attached_class)
        end
        def self.new(
          # The app being deployed, prefixed `app_`.
          app_id:,
          # The build the deployment produced, prefixed `abld_`, or `null` until it
          # succeeds.
          build_id:,
          # Whether the running or last deployment uploaded a build without making it live.
          draft:,
          # Why the deployment failed, or `null` when it did not.
          error:,
          # How long this deployment is expected to take in total, estimated from previous
          # runs.
          estimated_duration_ms:,
          # How much longer the deployment is expected to take. Held above zero until it
          # actually finishes.
          estimated_remaining_ms:,
          # When the deployment ended, in milliseconds since the epoch, or `null` while it
          # is still running.
          finished_at:,
          # The stage a running deployment has reached, or `null` when none is running.
          # Later phases dominate the wall clock: `process_archive` waits on the upload
          # pipeline and `promote` waits for the build to go live.
          phase:,
          # Fraction of the deployment estimated to be complete, from 0 to 1. Stops just
          # short of 1 until the run ends.
          progress:,
          # When the deployment began, in milliseconds since the epoch, or `null` when none
          # has run.
          started_at:,
          # Whether the app has anything to publish, and what a publish in flight is doing.
          # `unpublished` means publishing would ship something new; `no_source` means the
          # sandbox holds no copy of this app, so there is nothing to publish from.
          status:,
          # Where the deployed site is served, or `null` unless the deployment went live.
          url:
        )
        end

        sig do
          override.returns(
            {
              app_id: String,
              build_id: T.nilable(String),
              draft: T::Boolean,
              error: T.nilable(String),
              estimated_duration_ms: T.nilable(Integer),
              estimated_remaining_ms: T.nilable(Integer),
              finished_at: T.nilable(Integer),
              phase: T.nilable(WhopSDK::App::Deployment::Phase::TaggedSymbol),
              progress: T.nilable(Float),
              started_at: T.nilable(Integer),
              status: WhopSDK::App::Deployment::Status::TaggedSymbol,
              url: T.nilable(String)
            }
          )
        end
        def to_hash
        end

        # The stage a running deployment has reached, or `null` when none is running.
        # Later phases dominate the wall clock: `process_archive` waits on the upload
        # pipeline and `promote` waits for the build to go live.
        module Phase
          extend WhopSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias { T.all(Symbol, WhopSDK::App::Deployment::Phase) }
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          INSTALL =
            T.let(:install, WhopSDK::App::Deployment::Phase::TaggedSymbol)
          BUILD = T.let(:build, WhopSDK::App::Deployment::Phase::TaggedSymbol)
          TYPECHECK =
            T.let(:typecheck, WhopSDK::App::Deployment::Phase::TaggedSymbol)
          UPLOAD_BUILD =
            T.let(:upload_build, WhopSDK::App::Deployment::Phase::TaggedSymbol)
          UPLOAD_SOURCE =
            T.let(:upload_source, WhopSDK::App::Deployment::Phase::TaggedSymbol)
          PROCESS_ARCHIVE =
            T.let(
              :process_archive,
              WhopSDK::App::Deployment::Phase::TaggedSymbol
            )
          CREATE_BUILD =
            T.let(:create_build, WhopSDK::App::Deployment::Phase::TaggedSymbol)
          PROMOTE =
            T.let(:promote, WhopSDK::App::Deployment::Phase::TaggedSymbol)

          sig do
            override.returns(
              T::Array[WhopSDK::App::Deployment::Phase::TaggedSymbol]
            )
          end
          def self.values
          end
        end

        # Whether the app has anything to publish, and what a publish in flight is doing.
        # `unpublished` means publishing would ship something new; `no_source` means the
        # sandbox holds no copy of this app, so there is nothing to publish from.
        module Status
          extend WhopSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias { T.all(Symbol, WhopSDK::App::Deployment::Status) }
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          PUBLISHED =
            T.let(:published, WhopSDK::App::Deployment::Status::TaggedSymbol)
          UNPUBLISHED =
            T.let(:unpublished, WhopSDK::App::Deployment::Status::TaggedSymbol)
          PUBLISHING =
            T.let(:publishing, WhopSDK::App::Deployment::Status::TaggedSymbol)
          FAILED =
            T.let(:failed, WhopSDK::App::Deployment::Status::TaggedSymbol)
          NO_SOURCE =
            T.let(:no_source, WhopSDK::App::Deployment::Status::TaggedSymbol)

          sig do
            override.returns(
              T::Array[WhopSDK::App::Deployment::Status::TaggedSymbol]
            )
          end
          def self.values
          end
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

        TaggedSymbol =
          T.type_alias { T.all(Symbol, WhopSDK::App::ElementsUsed) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        ADS = T.let(:ads, WhopSDK::App::ElementsUsed::TaggedSymbol)
        ADS_BILLING_SETUP =
          T.let(:"ads.billing-setup", WhopSDK::App::ElementsUsed::TaggedSymbol)
        ADS_CAMPAIGN_CREATOR =
          T.let(
            :"ads.campaign-creator",
            WhopSDK::App::ElementsUsed::TaggedSymbol
          )
        ADS_REPORTING =
          T.let(:"ads.reporting", WhopSDK::App::ElementsUsed::TaggedSymbol)
        ADS_REPORTING_CHART =
          T.let(
            :"ads.reporting.chart",
            WhopSDK::App::ElementsUsed::TaggedSymbol
          )
        ADS_REPORTING_TABLE =
          T.let(
            :"ads.reporting.table",
            WhopSDK::App::ElementsUsed::TaggedSymbol
          )
        CHECKOUT = T.let(:checkout, WhopSDK::App::ElementsUsed::TaggedSymbol)
        CHECKOUT_CHECKOUT =
          T.let(:"checkout.checkout", WhopSDK::App::ElementsUsed::TaggedSymbol)
        CHECKOUT_EXPRESS_CHECKOUT =
          T.let(
            :"checkout.expressCheckout",
            WhopSDK::App::ElementsUsed::TaggedSymbol
          )
        PAYMENTS = T.let(:payments, WhopSDK::App::ElementsUsed::TaggedSymbol)
        PAYMENTS_ADDRESS =
          T.let(:"payments.address", WhopSDK::App::ElementsUsed::TaggedSymbol)
        PAYMENTS_BRANDING =
          T.let(:"payments.branding", WhopSDK::App::ElementsUsed::TaggedSymbol)
        PAYMENTS_CARD =
          T.let(:"payments.card", WhopSDK::App::ElementsUsed::TaggedSymbol)
        PAYMENTS_CARD_FIELDS =
          T.let(
            :"payments.cardFields",
            WhopSDK::App::ElementsUsed::TaggedSymbol
          )
        PAYMENTS_CARD_FIELDS_CARD_CVC =
          T.let(
            :"payments.cardFields.cardCvc",
            WhopSDK::App::ElementsUsed::TaggedSymbol
          )
        PAYMENTS_CARD_FIELDS_CARD_EXPIRY =
          T.let(
            :"payments.cardFields.cardExpiry",
            WhopSDK::App::ElementsUsed::TaggedSymbol
          )
        PAYMENTS_CARD_FIELDS_CARD_NUMBER =
          T.let(
            :"payments.cardFields.cardNumber",
            WhopSDK::App::ElementsUsed::TaggedSymbol
          )
        PAYMENTS_EMAIL =
          T.let(:"payments.email", WhopSDK::App::ElementsUsed::TaggedSymbol)
        PAYMENTS_PAYMENT =
          T.let(:"payments.payment", WhopSDK::App::ElementsUsed::TaggedSymbol)
        PAYMENTS_TAX_ID =
          T.let(:"payments.taxId", WhopSDK::App::ElementsUsed::TaggedSymbol)
        TRACKING = T.let(:tracking, WhopSDK::App::ElementsUsed::TaggedSymbol)
        TRACKING_EVENTS =
          T.let(:"tracking.events", WhopSDK::App::ElementsUsed::TaggedSymbol)
        TRACKING_PEOPLE =
          T.let(:"tracking.people", WhopSDK::App::ElementsUsed::TaggedSymbol)
        WALLET = T.let(:wallet, WhopSDK::App::ElementsUsed::TaggedSymbol)
        WALLET_ACTIVITY =
          T.let(:"wallet.activity", WhopSDK::App::ElementsUsed::TaggedSymbol)
        WALLET_BALANCES =
          T.let(:"wallet.balances", WhopSDK::App::ElementsUsed::TaggedSymbol)
        WALLET_BALANCES_BALANCE =
          T.let(
            :"wallet.balances.balance",
            WhopSDK::App::ElementsUsed::TaggedSymbol
          )
        WALLET_BALANCES_LIST =
          T.let(
            :"wallet.balances.list",
            WhopSDK::App::ElementsUsed::TaggedSymbol
          )
        WALLET_CARDS =
          T.let(:"wallet.cards", WhopSDK::App::ElementsUsed::TaggedSymbol)
        WALLET_DEPOSIT =
          T.let(:"wallet.deposit", WhopSDK::App::ElementsUsed::TaggedSymbol)
        WALLET_SEND =
          T.let(:"wallet.send", WhopSDK::App::ElementsUsed::TaggedSymbol)
        WALLET_WITHDRAW =
          T.let(:"wallet.withdraw", WhopSDK::App::ElementsUsed::TaggedSymbol)
        WEBSITES = T.let(:websites, WhopSDK::App::ElementsUsed::TaggedSymbol)
        WEBSITES_PIXEL_SETUP =
          T.let(
            :"websites.pixel-setup",
            WhopSDK::App::ElementsUsed::TaggedSymbol
          )
        WEBSITES_WEBSITES =
          T.let(:"websites.websites", WhopSDK::App::ElementsUsed::TaggedSymbol)

        sig do
          override.returns(T::Array[WhopSDK::App::ElementsUsed::TaggedSymbol])
        end
        def self.values
        end
      end

      class Icon < WhopSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias { T.any(WhopSDK::App::Icon, WhopSDK::Internal::AnyHash) }

        # Icon image URL. Always present — the default app icon when none is uploaded.
        sig { returns(String) }
        attr_accessor :url

        # The app's icon. Falls back to the default app icon when none is uploaded.
        sig { params(url: String).returns(T.attached_class) }
        def self.new(
          # Icon image URL. Always present — the default app icon when none is uploaded.
          url:
        )
        end

        sig { override.returns({ url: String }) }
        def to_hash
        end
      end

      # Approval status of the app's product listing on the Whop app store, or `null`
      # when the app has no associated product.
      module MarketplaceStatus
        extend WhopSDK::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, WhopSDK::App::MarketplaceStatus) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        NOT_AVAILABLE =
          T.let(:not_available, WhopSDK::App::MarketplaceStatus::TaggedSymbol)
        PENDING_REVIEW =
          T.let(:pending_review, WhopSDK::App::MarketplaceStatus::TaggedSymbol)
        LIVE_MARKETPLACE =
          T.let(
            :live_marketplace,
            WhopSDK::App::MarketplaceStatus::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[WhopSDK::App::MarketplaceStatus::TaggedSymbol]
          )
        end
        def self.values
        end
      end

      # How the app authenticates at the OAuth token endpoint.
      module OAuthClientType
        extend WhopSDK::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, WhopSDK::App::OAuthClientType) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        PUBLIC = T.let(:public, WhopSDK::App::OAuthClientType::TaggedSymbol)
        CONFIDENTIAL =
          T.let(:confidential, WhopSDK::App::OAuthClientType::TaggedSymbol)

        sig do
          override.returns(
            T::Array[WhopSDK::App::OAuthClientType::TaggedSymbol]
          )
        end
        def self.values
        end
      end

      class ProductionAndroidBuild < WhopSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              WhopSDK::App::ProductionAndroidBuild,
              WhopSDK::Internal::AnyHash
            )
          end

        # App build ID, prefixed `abld_`.
        sig { returns(String) }
        attr_accessor :id

        # Client-generated checksum of the build file, used to verify file integrity.
        sig { returns(T.nilable(String)) }
        attr_accessor :checksum

        # URL to download the uploaded build artifact.
        sig { returns(T.nilable(String)) }
        attr_accessor :file_url

        # URL to download the compressed source code archive that produced this build, or
        # `null` when the build was uploaded without a source archive.
        sig { returns(T.nilable(String)) }
        attr_accessor :source_url

        # The build's review status.
        sig do
          returns(WhopSDK::App::ProductionAndroidBuild::Status::TaggedSymbol)
        end
        attr_accessor :status

        # The approved build currently served on Android, or `null` when none is deployed.
        sig do
          params(
            id: String,
            checksum: T.nilable(String),
            file_url: T.nilable(String),
            source_url: T.nilable(String),
            status: WhopSDK::App::ProductionAndroidBuild::Status::OrSymbol
          ).returns(T.attached_class)
        end
        def self.new(
          # App build ID, prefixed `abld_`.
          id:,
          # Client-generated checksum of the build file, used to verify file integrity.
          checksum:,
          # URL to download the uploaded build artifact.
          file_url:,
          # URL to download the compressed source code archive that produced this build, or
          # `null` when the build was uploaded without a source archive.
          source_url:,
          # The build's review status.
          status:
        )
        end

        sig do
          override.returns(
            {
              id: String,
              checksum: T.nilable(String),
              file_url: T.nilable(String),
              source_url: T.nilable(String),
              status: WhopSDK::App::ProductionAndroidBuild::Status::TaggedSymbol
            }
          )
        end
        def to_hash
        end

        # The build's review status.
        module Status
          extend WhopSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, WhopSDK::App::ProductionAndroidBuild::Status)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          DRAFT =
            T.let(
              :draft,
              WhopSDK::App::ProductionAndroidBuild::Status::TaggedSymbol
            )
          PENDING =
            T.let(
              :pending,
              WhopSDK::App::ProductionAndroidBuild::Status::TaggedSymbol
            )
          APPROVED =
            T.let(
              :approved,
              WhopSDK::App::ProductionAndroidBuild::Status::TaggedSymbol
            )
          REJECTED =
            T.let(
              :rejected,
              WhopSDK::App::ProductionAndroidBuild::Status::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                WhopSDK::App::ProductionAndroidBuild::Status::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end
      end

      class ProductionIosBuild < WhopSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(WhopSDK::App::ProductionIosBuild, WhopSDK::Internal::AnyHash)
          end

        # App build ID, prefixed `abld_`.
        sig { returns(String) }
        attr_accessor :id

        # Client-generated checksum of the build file, used to verify file integrity.
        sig { returns(T.nilable(String)) }
        attr_accessor :checksum

        # URL to download the uploaded build artifact.
        sig { returns(T.nilable(String)) }
        attr_accessor :file_url

        # URL to download the compressed source code archive that produced this build, or
        # `null` when the build was uploaded without a source archive.
        sig { returns(T.nilable(String)) }
        attr_accessor :source_url

        # The build's review status.
        sig { returns(WhopSDK::App::ProductionIosBuild::Status::TaggedSymbol) }
        attr_accessor :status

        # The approved build currently served on iOS, or `null` when none is deployed.
        sig do
          params(
            id: String,
            checksum: T.nilable(String),
            file_url: T.nilable(String),
            source_url: T.nilable(String),
            status: WhopSDK::App::ProductionIosBuild::Status::OrSymbol
          ).returns(T.attached_class)
        end
        def self.new(
          # App build ID, prefixed `abld_`.
          id:,
          # Client-generated checksum of the build file, used to verify file integrity.
          checksum:,
          # URL to download the uploaded build artifact.
          file_url:,
          # URL to download the compressed source code archive that produced this build, or
          # `null` when the build was uploaded without a source archive.
          source_url:,
          # The build's review status.
          status:
        )
        end

        sig do
          override.returns(
            {
              id: String,
              checksum: T.nilable(String),
              file_url: T.nilable(String),
              source_url: T.nilable(String),
              status: WhopSDK::App::ProductionIosBuild::Status::TaggedSymbol
            }
          )
        end
        def to_hash
        end

        # The build's review status.
        module Status
          extend WhopSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, WhopSDK::App::ProductionIosBuild::Status)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          DRAFT =
            T.let(
              :draft,
              WhopSDK::App::ProductionIosBuild::Status::TaggedSymbol
            )
          PENDING =
            T.let(
              :pending,
              WhopSDK::App::ProductionIosBuild::Status::TaggedSymbol
            )
          APPROVED =
            T.let(
              :approved,
              WhopSDK::App::ProductionIosBuild::Status::TaggedSymbol
            )
          REJECTED =
            T.let(
              :rejected,
              WhopSDK::App::ProductionIosBuild::Status::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[WhopSDK::App::ProductionIosBuild::Status::TaggedSymbol]
            )
          end
          def self.values
          end
        end
      end

      class ProductionWebBuild < WhopSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(WhopSDK::App::ProductionWebBuild, WhopSDK::Internal::AnyHash)
          end

        # App build ID, prefixed `abld_`.
        sig { returns(String) }
        attr_accessor :id

        # Client-generated checksum of the build file, used to verify file integrity.
        sig { returns(T.nilable(String)) }
        attr_accessor :checksum

        # URL to download the uploaded build artifact.
        sig { returns(T.nilable(String)) }
        attr_accessor :file_url

        # URL to download the compressed source code archive that produced this build, or
        # `null` when the build was uploaded without a source archive.
        sig { returns(T.nilable(String)) }
        attr_accessor :source_url

        # The build's review status.
        sig { returns(WhopSDK::App::ProductionWebBuild::Status::TaggedSymbol) }
        attr_accessor :status

        # The approved build currently served on web, or `null` when none is deployed.
        sig do
          params(
            id: String,
            checksum: T.nilable(String),
            file_url: T.nilable(String),
            source_url: T.nilable(String),
            status: WhopSDK::App::ProductionWebBuild::Status::OrSymbol
          ).returns(T.attached_class)
        end
        def self.new(
          # App build ID, prefixed `abld_`.
          id:,
          # Client-generated checksum of the build file, used to verify file integrity.
          checksum:,
          # URL to download the uploaded build artifact.
          file_url:,
          # URL to download the compressed source code archive that produced this build, or
          # `null` when the build was uploaded without a source archive.
          source_url:,
          # The build's review status.
          status:
        )
        end

        sig do
          override.returns(
            {
              id: String,
              checksum: T.nilable(String),
              file_url: T.nilable(String),
              source_url: T.nilable(String),
              status: WhopSDK::App::ProductionWebBuild::Status::TaggedSymbol
            }
          )
        end
        def to_hash
        end

        # The build's review status.
        module Status
          extend WhopSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, WhopSDK::App::ProductionWebBuild::Status)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          DRAFT =
            T.let(
              :draft,
              WhopSDK::App::ProductionWebBuild::Status::TaggedSymbol
            )
          PENDING =
            T.let(
              :pending,
              WhopSDK::App::ProductionWebBuild::Status::TaggedSymbol
            )
          APPROVED =
            T.let(
              :approved,
              WhopSDK::App::ProductionWebBuild::Status::TaggedSymbol
            )
          REJECTED =
            T.let(
              :rejected,
              WhopSDK::App::ProductionWebBuild::Status::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[WhopSDK::App::ProductionWebBuild::Status::TaggedSymbol]
            )
          end
          def self.values
          end
        end
      end

      class RequestedPermission < WhopSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(WhopSDK::App::RequestedPermission, WhopSDK::Internal::AnyHash)
          end

        # Whether the app requires the permission to be granted on install, as opposed to
        # requesting it optionally.
        sig { returns(T::Boolean) }
        attr_accessor :is_required

        # The developer's explanation of why the app needs the permission, or `null` when
        # none was provided.
        sig { returns(T.nilable(String)) }
        attr_accessor :justification

        # The permission action the app requests.
        sig { returns(WhopSDK::App::RequestedPermission::PermissionAction) }
        attr_reader :permission_action

        sig do
          params(
            permission_action:
              WhopSDK::App::RequestedPermission::PermissionAction::OrHash
          ).void
        end
        attr_writer :permission_action

        # Permissions the app requests on install.
        sig do
          params(
            is_required: T::Boolean,
            justification: T.nilable(String),
            permission_action:
              WhopSDK::App::RequestedPermission::PermissionAction::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          # Whether the app requires the permission to be granted on install, as opposed to
          # requesting it optionally.
          is_required:,
          # The developer's explanation of why the app needs the permission, or `null` when
          # none was provided.
          justification:,
          # The permission action the app requests.
          permission_action:
        )
        end

        sig do
          override.returns(
            {
              is_required: T::Boolean,
              justification: T.nilable(String),
              permission_action:
                WhopSDK::App::RequestedPermission::PermissionAction
            }
          )
        end
        def to_hash
        end

        class PermissionAction < WhopSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                WhopSDK::App::RequestedPermission::PermissionAction,
                WhopSDK::Internal::AnyHash
              )
            end

          # The permission action's identifier, for example `company:basic:read`.
          sig { returns(String) }
          attr_accessor :action

          # Human-readable name of the action.
          sig { returns(String) }
          attr_accessor :name

          # The permission action the app requests.
          sig { params(action: String, name: String).returns(T.attached_class) }
          def self.new(
            # The permission action's identifier, for example `company:basic:read`.
            action:,
            # Human-readable name of the action.
            name:
          )
          end

          sig { override.returns({ action: String, name: String }) }
          def to_hash
          end
        end
      end

      # Scopes the app asks a user to grant when they authorize it, shown on the consent
      # screen.
      module RequiredScope
        extend WhopSDK::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, WhopSDK::App::RequiredScope) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        READ_USER = T.let(:read_user, WhopSDK::App::RequiredScope::TaggedSymbol)

        sig do
          override.returns(T::Array[WhopSDK::App::RequiredScope::TaggedSymbol])
        end
        def self.values
        end
      end

      # Visibility on the Whop app store: `live` is publicly discoverable, `unlisted` is
      # accessible only via direct link, `hidden` is not visible anywhere.
      module Status
        extend WhopSDK::Internal::Type::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, WhopSDK::App::Status) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        LIVE = T.let(:live, WhopSDK::App::Status::TaggedSymbol)
        UNLISTED = T.let(:unlisted, WhopSDK::App::Status::TaggedSymbol)
        HIDDEN = T.let(:hidden, WhopSDK::App::Status::TaggedSymbol)

        sig { override.returns(T::Array[WhopSDK::App::Status::TaggedSymbol]) }
        def self.values
        end
      end
    end
  end
end
