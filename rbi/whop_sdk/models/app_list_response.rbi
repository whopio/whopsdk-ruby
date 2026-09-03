# typed: strong

module WhopSDK
  module Models
    class AppListResponse < WhopSDK::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(WhopSDK::Models::AppListResponse, WhopSDK::Internal::AnyHash)
        end

      # App ID, prefixed `app_`.
      sig { returns(String) }
      attr_accessor :id

      # The account that owns the app.
      sig { returns(WhopSDK::Models::AppListResponse::Account) }
      attr_reader :account

      sig do
        params(account: WhopSDK::Models::AppListResponse::Account::OrHash).void
      end
      attr_writer :account

      # The type of end-user the app is built for.
      sig { returns(WhopSDK::Models::AppListResponse::AppType::TaggedSymbol) }
      attr_accessor :app_type

      # Banner image from the app's product listing, or `null` when none is uploaded.
      sig { returns(T.nilable(WhopSDK::Models::AppListResponse::BannerImage)) }
      attr_reader :banner_image

      sig do
        params(
          banner_image:
            T.nilable(WhopSDK::Models::AppListResponse::BannerImage::OrHash)
        ).void
      end
      attr_writer :banner_image

      # The production base URL where the app is hosted. `null` if no base URL is
      # configured, if the caller lacks the `developer:basic:read` permission on the
      # app's account, or on list responses, which never expose it.
      sig { returns(T.nilable(String)) }
      attr_accessor :base_url

      # Number of businesses created from this app as a template.
      sig { returns(Integer) }
      attr_accessor :businesses_created_count

      sig { returns(T::Array[String]) }
      attr_accessor :businesses_created_logo_urls

      # The user who owns the publishing account.
      sig { returns(WhopSDK::Models::AppListResponse::Creator) }
      attr_reader :creator

      sig do
        params(creator: WhopSDK::Models::AppListResponse::Creator::OrHash).void
      end
      attr_writer :creator

      # URL path for the account dashboard view, or `null` when not configured.
      sig { returns(T.nilable(String)) }
      attr_accessor :dashboard_path

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

      # URL path for the member-facing hub view, or `null` when not configured.
      sig { returns(T.nilable(String)) }
      attr_accessor :experience_path

      # Full URL where the app's hosted web build is served, or `null` if no route is
      # claimed.
      sig { returns(T.nilable(String)) }
      attr_accessor :hosted_url

      # The app's icon. Falls back to the default app icon when none is uploaded.
      sig { returns(WhopSDK::Models::AppListResponse::Icon) }
      attr_reader :icon

      sig { params(icon: WhopSDK::Models::AppListResponse::Icon::OrHash).void }
      attr_writer :icon

      # Display name shown on the app store and in experience navigation.
      sig { returns(String) }
      attr_accessor :name

      # URL path to the app's OpenAPI spec file, or `null` when not configured.
      sig { returns(T.nilable(String)) }
      attr_accessor :openapi_path

      # Full origin URL of the app's proxied domain, for example
      # https://ab1c2d3e4f.apps.whop.com.
      sig { returns(T.nilable(String)) }
      attr_accessor :origin

      sig { returns(T::Array[String]) }
      attr_accessor :previous_hosted_urls

      # Claimed subdomain route where hosted web builds are served (`myapp` for
      # myapp.whop.site), or `null` if no route is claimed.
      sig { returns(T.nilable(String)) }
      attr_accessor :route

      # URL path to the app's skills directory, or `null` when not configured.
      sig { returns(T.nilable(String)) }
      attr_accessor :skills_path

      # Visibility on the Whop app store: `live` is publicly discoverable, `unlisted` is
      # accessible only via direct link, `hidden` is not visible anywhere.
      sig { returns(WhopSDK::Models::AppListResponse::Status::TaggedSymbol) }
      attr_accessor :status

      # Whether the app has been verified by Whop and is eligible for the featured apps
      # section.
      sig { returns(T::Boolean) }
      attr_accessor :verified

      sig do
        params(
          id: String,
          account: WhopSDK::Models::AppListResponse::Account::OrHash,
          app_type: WhopSDK::Models::AppListResponse::AppType::OrSymbol,
          banner_image:
            T.nilable(WhopSDK::Models::AppListResponse::BannerImage::OrHash),
          base_url: T.nilable(String),
          businesses_created_count: Integer,
          businesses_created_logo_urls: T::Array[String],
          creator: WhopSDK::Models::AppListResponse::Creator::OrHash,
          dashboard_path: T.nilable(String),
          description: T.nilable(String),
          discover_path: T.nilable(String),
          domain_id: String,
          experience_path: T.nilable(String),
          hosted_url: T.nilable(String),
          icon: WhopSDK::Models::AppListResponse::Icon::OrHash,
          name: String,
          openapi_path: T.nilable(String),
          origin: T.nilable(String),
          previous_hosted_urls: T::Array[String],
          route: T.nilable(String),
          skills_path: T.nilable(String),
          status: WhopSDK::Models::AppListResponse::Status::OrSymbol,
          verified: T::Boolean
        ).returns(T.attached_class)
      end
      def self.new(
        # App ID, prefixed `app_`.
        id:,
        # The account that owns the app.
        account:,
        # The type of end-user the app is built for.
        app_type:,
        # Banner image from the app's product listing, or `null` when none is uploaded.
        banner_image:,
        # The production base URL where the app is hosted. `null` if no base URL is
        # configured, if the caller lacks the `developer:basic:read` permission on the
        # app's account, or on list responses, which never expose it.
        base_url:,
        # Number of businesses created from this app as a template.
        businesses_created_count:,
        businesses_created_logo_urls:,
        # The user who owns the publishing account.
        creator:,
        # URL path for the account dashboard view, or `null` when not configured.
        dashboard_path:,
        # Short description shown in listings and search results, or `null` if none has
        # been set.
        description:,
        # URL path for the discover view, or `null` when not configured.
        discover_path:,
        # Subdomain identifier for the app's proxied URL, forming
        # https://{domain_id}.apps.whop.com.
        domain_id:,
        # URL path for the member-facing hub view, or `null` when not configured.
        experience_path:,
        # Full URL where the app's hosted web build is served, or `null` if no route is
        # claimed.
        hosted_url:,
        # The app's icon. Falls back to the default app icon when none is uploaded.
        icon:,
        # Display name shown on the app store and in experience navigation.
        name:,
        # URL path to the app's OpenAPI spec file, or `null` when not configured.
        openapi_path:,
        # Full origin URL of the app's proxied domain, for example
        # https://ab1c2d3e4f.apps.whop.com.
        origin:,
        previous_hosted_urls:,
        # Claimed subdomain route where hosted web builds are served (`myapp` for
        # myapp.whop.site), or `null` if no route is claimed.
        route:,
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
            account: WhopSDK::Models::AppListResponse::Account,
            app_type: WhopSDK::Models::AppListResponse::AppType::TaggedSymbol,
            banner_image:
              T.nilable(WhopSDK::Models::AppListResponse::BannerImage),
            base_url: T.nilable(String),
            businesses_created_count: Integer,
            businesses_created_logo_urls: T::Array[String],
            creator: WhopSDK::Models::AppListResponse::Creator,
            dashboard_path: T.nilable(String),
            description: T.nilable(String),
            discover_path: T.nilable(String),
            domain_id: String,
            experience_path: T.nilable(String),
            hosted_url: T.nilable(String),
            icon: WhopSDK::Models::AppListResponse::Icon,
            name: String,
            openapi_path: T.nilable(String),
            origin: T.nilable(String),
            previous_hosted_urls: T::Array[String],
            route: T.nilable(String),
            skills_path: T.nilable(String),
            status: WhopSDK::Models::AppListResponse::Status::TaggedSymbol,
            verified: T::Boolean
          }
        )
      end
      def to_hash
      end

      class Account < WhopSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              WhopSDK::Models::AppListResponse::Account,
              WhopSDK::Internal::AnyHash
            )
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

      # The type of end-user the app is built for.
      module AppType
        extend WhopSDK::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, WhopSDK::Models::AppListResponse::AppType)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        B2B_APP =
          T.let(
            :b2b_app,
            WhopSDK::Models::AppListResponse::AppType::TaggedSymbol
          )
        B2C_APP =
          T.let(
            :b2c_app,
            WhopSDK::Models::AppListResponse::AppType::TaggedSymbol
          )
        COMPANY_APP =
          T.let(
            :company_app,
            WhopSDK::Models::AppListResponse::AppType::TaggedSymbol
          )
        COMPONENT =
          T.let(
            :component,
            WhopSDK::Models::AppListResponse::AppType::TaggedSymbol
          )
        WEBSITE =
          T.let(
            :website,
            WhopSDK::Models::AppListResponse::AppType::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[WhopSDK::Models::AppListResponse::AppType::TaggedSymbol]
          )
        end
        def self.values
        end
      end

      class BannerImage < WhopSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              WhopSDK::Models::AppListResponse::BannerImage,
              WhopSDK::Internal::AnyHash
            )
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
            T.any(
              WhopSDK::Models::AppListResponse::Creator,
              WhopSDK::Internal::AnyHash
            )
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

      class Icon < WhopSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              WhopSDK::Models::AppListResponse::Icon,
              WhopSDK::Internal::AnyHash
            )
          end

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

      # Visibility on the Whop app store: `live` is publicly discoverable, `unlisted` is
      # accessible only via direct link, `hidden` is not visible anywhere.
      module Status
        extend WhopSDK::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, WhopSDK::Models::AppListResponse::Status)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        LIVE =
          T.let(:live, WhopSDK::Models::AppListResponse::Status::TaggedSymbol)
        UNLISTED =
          T.let(
            :unlisted,
            WhopSDK::Models::AppListResponse::Status::TaggedSymbol
          )
        HIDDEN =
          T.let(:hidden, WhopSDK::Models::AppListResponse::Status::TaggedSymbol)

        sig do
          override.returns(
            T::Array[WhopSDK::Models::AppListResponse::Status::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
