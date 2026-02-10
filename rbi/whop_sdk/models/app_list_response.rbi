# typed: strong

module WhopSDK
  module Models
    class AppListResponse < WhopSDK::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(WhopSDK::Models::AppListResponse, WhopSDK::Internal::AnyHash)
        end

      # The unique identifier for the app.
      sig { returns(String) }
      attr_accessor :id

      # The target audience classification for this app (e.g., 'b2b_app', 'b2c_app',
      # 'company_app', 'component').
      sig { returns(WhopSDK::AppType::TaggedSymbol) }
      attr_accessor :app_type

      # The production base URL where the app is hosted. Null if no base URL is
      # configured.
      sig { returns(T.nilable(String)) }
      attr_accessor :base_url

      # The company that owns and publishes this app.
      sig { returns(WhopSDK::Models::AppListResponse::Company) }
      attr_reader :company

      sig do
        params(company: WhopSDK::Models::AppListResponse::Company::OrHash).void
      end
      attr_writer :company

      # The user who created and owns the company that published this app.
      sig { returns(WhopSDK::Models::AppListResponse::Creator) }
      attr_reader :creator

      sig do
        params(creator: WhopSDK::Models::AppListResponse::Creator::OrHash).void
      end
      attr_writer :creator

      # The URL path template for a specific view of this app, appended to the base
      # domain (e.g., '/experiences/[experienceId]'). Null if the specified view type is
      # not configured.
      sig { returns(T.nilable(String)) }
      attr_accessor :dashboard_path

      # A written description of what this app does, displayed on the app store listing
      # page. Null if no description has been set.
      sig { returns(T.nilable(String)) }
      attr_accessor :description

      # The URL path template for a specific view of this app, appended to the base
      # domain (e.g., '/experiences/[experienceId]'). Null if the specified view type is
      # not configured.
      sig { returns(T.nilable(String)) }
      attr_accessor :discover_path

      # The unique subdomain identifier for this app's proxied URL on the Whop platform.
      # Forms the URL pattern https://{domain_id}.apps.whop.com.
      sig { returns(String) }
      attr_accessor :domain_id

      # The URL path template for a specific view of this app, appended to the base
      # domain (e.g., '/experiences/[experienceId]'). Null if the specified view type is
      # not configured.
      sig { returns(T.nilable(String)) }
      attr_accessor :experience_path

      # The icon image for this app, displayed on the app store, product pages,
      # checkout, and as the default icon for experiences using this app.
      sig { returns(T.nilable(WhopSDK::Models::AppListResponse::Icon)) }
      attr_reader :icon

      sig do
        params(
          icon: T.nilable(WhopSDK::Models::AppListResponse::Icon::OrHash)
        ).void
      end
      attr_writer :icon

      # The display name of this app shown on the app store and in experience
      # navigation. Maximum 30 characters.
      sig { returns(String) }
      attr_accessor :name

      # The current visibility status of this app on the Whop app store. 'live' means
      # publicly discoverable, 'unlisted' means accessible only via direct link, and
      # 'hidden' means not visible anywhere.
      sig { returns(WhopSDK::AppStatuses::TaggedSymbol) }
      attr_accessor :status

      # Whether this app has been verified by Whop. Verified apps are endorsed by Whop
      # and displayed in the featured apps section of the app store.
      sig { returns(T::Boolean) }
      attr_accessor :verified

      # An app is an integration built on Whop. Apps can serve consumers as experiences
      # within products, or serve companies as business tools.
      sig do
        params(
          id: String,
          app_type: WhopSDK::AppType::OrSymbol,
          base_url: T.nilable(String),
          company: WhopSDK::Models::AppListResponse::Company::OrHash,
          creator: WhopSDK::Models::AppListResponse::Creator::OrHash,
          dashboard_path: T.nilable(String),
          description: T.nilable(String),
          discover_path: T.nilable(String),
          domain_id: String,
          experience_path: T.nilable(String),
          icon: T.nilable(WhopSDK::Models::AppListResponse::Icon::OrHash),
          name: String,
          status: WhopSDK::AppStatuses::OrSymbol,
          verified: T::Boolean
        ).returns(T.attached_class)
      end
      def self.new(
        # The unique identifier for the app.
        id:,
        # The target audience classification for this app (e.g., 'b2b_app', 'b2c_app',
        # 'company_app', 'component').
        app_type:,
        # The production base URL where the app is hosted. Null if no base URL is
        # configured.
        base_url:,
        # The company that owns and publishes this app.
        company:,
        # The user who created and owns the company that published this app.
        creator:,
        # The URL path template for a specific view of this app, appended to the base
        # domain (e.g., '/experiences/[experienceId]'). Null if the specified view type is
        # not configured.
        dashboard_path:,
        # A written description of what this app does, displayed on the app store listing
        # page. Null if no description has been set.
        description:,
        # The URL path template for a specific view of this app, appended to the base
        # domain (e.g., '/experiences/[experienceId]'). Null if the specified view type is
        # not configured.
        discover_path:,
        # The unique subdomain identifier for this app's proxied URL on the Whop platform.
        # Forms the URL pattern https://{domain_id}.apps.whop.com.
        domain_id:,
        # The URL path template for a specific view of this app, appended to the base
        # domain (e.g., '/experiences/[experienceId]'). Null if the specified view type is
        # not configured.
        experience_path:,
        # The icon image for this app, displayed on the app store, product pages,
        # checkout, and as the default icon for experiences using this app.
        icon:,
        # The display name of this app shown on the app store and in experience
        # navigation. Maximum 30 characters.
        name:,
        # The current visibility status of this app on the Whop app store. 'live' means
        # publicly discoverable, 'unlisted' means accessible only via direct link, and
        # 'hidden' means not visible anywhere.
        status:,
        # Whether this app has been verified by Whop. Verified apps are endorsed by Whop
        # and displayed in the featured apps section of the app store.
        verified:
      )
      end

      sig do
        override.returns(
          {
            id: String,
            app_type: WhopSDK::AppType::TaggedSymbol,
            base_url: T.nilable(String),
            company: WhopSDK::Models::AppListResponse::Company,
            creator: WhopSDK::Models::AppListResponse::Creator,
            dashboard_path: T.nilable(String),
            description: T.nilable(String),
            discover_path: T.nilable(String),
            domain_id: String,
            experience_path: T.nilable(String),
            icon: T.nilable(WhopSDK::Models::AppListResponse::Icon),
            name: String,
            status: WhopSDK::AppStatuses::TaggedSymbol,
            verified: T::Boolean
          }
        )
      end
      def to_hash
      end

      class Company < WhopSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              WhopSDK::Models::AppListResponse::Company,
              WhopSDK::Internal::AnyHash
            )
          end

        # The unique identifier for the company.
        sig { returns(String) }
        attr_accessor :id

        # The display name of the company shown to customers.
        sig { returns(String) }
        attr_accessor :title

        # The company that owns and publishes this app.
        sig { params(id: String, title: String).returns(T.attached_class) }
        def self.new(
          # The unique identifier for the company.
          id:,
          # The display name of the company shown to customers.
          title:
        )
        end

        sig { override.returns({ id: String, title: String }) }
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

        # The unique identifier for the user.
        sig { returns(String) }
        attr_accessor :id

        # The user's display name shown on their public profile.
        sig { returns(T.nilable(String)) }
        attr_accessor :name

        # The user's unique username shown on their public profile.
        sig { returns(String) }
        attr_accessor :username

        # The user who created and owns the company that published this app.
        sig do
          params(id: String, name: T.nilable(String), username: String).returns(
            T.attached_class
          )
        end
        def self.new(
          # The unique identifier for the user.
          id:,
          # The user's display name shown on their public profile.
          name:,
          # The user's unique username shown on their public profile.
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

        # A pre-optimized URL for rendering this attachment on the client. This should be
        # used for displaying attachments in apps.
        sig { returns(T.nilable(String)) }
        attr_accessor :url

        # The icon image for this app, displayed on the app store, product pages,
        # checkout, and as the default icon for experiences using this app.
        sig { params(url: T.nilable(String)).returns(T.attached_class) }
        def self.new(
          # A pre-optimized URL for rendering this attachment on the client. This should be
          # used for displaying attachments in apps.
          url:
        )
        end

        sig { override.returns({ url: T.nilable(String) }) }
        def to_hash
        end
      end
    end
  end
end
