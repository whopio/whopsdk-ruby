# typed: strong

module WhopSDK
  module Models
    class App < WhopSDK::Internal::Type::BaseModel
      OrHash = T.type_alias { T.any(WhopSDK::App, WhopSDK::Internal::AnyHash) }

      # The unique identifier for the app.
      sig { returns(String) }
      attr_accessor :id

      # The API key used to authenticate requests on behalf of this app. Null if no API
      # key has been generated. Requires the 'developer:manage_api_key' permission.
      sig { returns(T.nilable(WhopSDK::App::APIKey)) }
      attr_reader :api_key

      sig { params(api_key: T.nilable(WhopSDK::App::APIKey::OrHash)).void }
      attr_writer :api_key

      # The target audience classification for this app (e.g., 'b2b_app', 'b2c_app',
      # 'company_app', 'component').
      sig { returns(WhopSDK::AppType::TaggedSymbol) }
      attr_accessor :app_type

      # The production base URL where the app is hosted. Null if no base URL is
      # configured.
      sig { returns(T.nilable(String)) }
      attr_accessor :base_url

      # The company that owns and publishes this app.
      sig { returns(WhopSDK::App::Company) }
      attr_reader :company

      sig { params(company: WhopSDK::App::Company::OrHash).void }
      attr_writer :company

      # The user who created and owns the company that published this app.
      sig { returns(WhopSDK::App::Creator) }
      attr_reader :creator

      sig { params(creator: WhopSDK::App::Creator::OrHash).void }
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
      sig { returns(T.nilable(WhopSDK::App::Icon)) }
      attr_reader :icon

      sig { params(icon: T.nilable(WhopSDK::App::Icon::OrHash)).void }
      attr_writer :icon

      # The display name of this app shown on the app store and in experience
      # navigation. Maximum 30 characters.
      sig { returns(String) }
      attr_accessor :name

      # The list of permissions this app requests when installed, including both
      # required and optional permissions with justifications.
      sig { returns(T::Array[WhopSDK::App::RequestedPermission]) }
      attr_accessor :requested_permissions

      # Aggregate usage statistics for this app, including daily, weekly, and monthly
      # active user counts.
      sig { returns(T.nilable(WhopSDK::App::Stats)) }
      attr_reader :stats

      sig { params(stats: T.nilable(WhopSDK::App::Stats::OrHash)).void }
      attr_writer :stats

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
          api_key: T.nilable(WhopSDK::App::APIKey::OrHash),
          app_type: WhopSDK::AppType::OrSymbol,
          base_url: T.nilable(String),
          company: WhopSDK::App::Company::OrHash,
          creator: WhopSDK::App::Creator::OrHash,
          dashboard_path: T.nilable(String),
          description: T.nilable(String),
          discover_path: T.nilable(String),
          domain_id: String,
          experience_path: T.nilable(String),
          icon: T.nilable(WhopSDK::App::Icon::OrHash),
          name: String,
          requested_permissions:
            T::Array[WhopSDK::App::RequestedPermission::OrHash],
          stats: T.nilable(WhopSDK::App::Stats::OrHash),
          status: WhopSDK::AppStatuses::OrSymbol,
          verified: T::Boolean
        ).returns(T.attached_class)
      end
      def self.new(
        # The unique identifier for the app.
        id:,
        # The API key used to authenticate requests on behalf of this app. Null if no API
        # key has been generated. Requires the 'developer:manage_api_key' permission.
        api_key:,
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
        # The list of permissions this app requests when installed, including both
        # required and optional permissions with justifications.
        requested_permissions:,
        # Aggregate usage statistics for this app, including daily, weekly, and monthly
        # active user counts.
        stats:,
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
            api_key: T.nilable(WhopSDK::App::APIKey),
            app_type: WhopSDK::AppType::TaggedSymbol,
            base_url: T.nilable(String),
            company: WhopSDK::App::Company,
            creator: WhopSDK::App::Creator,
            dashboard_path: T.nilable(String),
            description: T.nilable(String),
            discover_path: T.nilable(String),
            domain_id: String,
            experience_path: T.nilable(String),
            icon: T.nilable(WhopSDK::App::Icon),
            name: String,
            requested_permissions: T::Array[WhopSDK::App::RequestedPermission],
            stats: T.nilable(WhopSDK::App::Stats),
            status: WhopSDK::AppStatuses::TaggedSymbol,
            verified: T::Boolean
          }
        )
      end
      def to_hash
      end

      class APIKey < WhopSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(WhopSDK::App::APIKey, WhopSDK::Internal::AnyHash)
          end

        # The unique identifier for the private api key.
        sig { returns(String) }
        attr_accessor :id

        # This is the API key used to authenticate requests
        sig { returns(String) }
        attr_accessor :token

        # The datetime the private api key was created.
        sig { returns(Time) }
        attr_accessor :created_at

        # The API key used to authenticate requests on behalf of this app. Null if no API
        # key has been generated. Requires the 'developer:manage_api_key' permission.
        sig do
          params(id: String, token: String, created_at: Time).returns(
            T.attached_class
          )
        end
        def self.new(
          # The unique identifier for the private api key.
          id:,
          # This is the API key used to authenticate requests
          token:,
          # The datetime the private api key was created.
          created_at:
        )
        end

        sig do
          override.returns({ id: String, token: String, created_at: Time })
        end
        def to_hash
        end
      end

      class Company < WhopSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(WhopSDK::App::Company, WhopSDK::Internal::AnyHash)
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
            T.any(WhopSDK::App::Creator, WhopSDK::Internal::AnyHash)
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
          T.type_alias { T.any(WhopSDK::App::Icon, WhopSDK::Internal::AnyHash) }

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

      class RequestedPermission < WhopSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(WhopSDK::App::RequestedPermission, WhopSDK::Internal::AnyHash)
          end

        # Whether the action is required for the app to function.
        sig { returns(T::Boolean) }
        attr_accessor :is_required

        # The reason for requesting the action.
        sig { returns(String) }
        attr_accessor :justification

        # The action that the app will request off of users when a user installs the app.
        sig { returns(WhopSDK::App::RequestedPermission::PermissionAction) }
        attr_reader :permission_action

        sig do
          params(
            permission_action:
              WhopSDK::App::RequestedPermission::PermissionAction::OrHash
          ).void
        end
        attr_writer :permission_action

        # A permission that the app requests from the admin of a company during the oauth
        # flow.
        sig do
          params(
            is_required: T::Boolean,
            justification: String,
            permission_action:
              WhopSDK::App::RequestedPermission::PermissionAction::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          # Whether the action is required for the app to function.
          is_required:,
          # The reason for requesting the action.
          justification:,
          # The action that the app will request off of users when a user installs the app.
          permission_action:
        )
        end

        sig do
          override.returns(
            {
              is_required: T::Boolean,
              justification: String,
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

          # The identifier of the action.
          sig { returns(String) }
          attr_accessor :action

          # The human readable name of the action.
          sig { returns(String) }
          attr_accessor :name

          # The action that the app will request off of users when a user installs the app.
          sig { params(action: String, name: String).returns(T.attached_class) }
          def self.new(
            # The identifier of the action.
            action:,
            # The human readable name of the action.
            name:
          )
          end

          sig { override.returns({ action: String, name: String }) }
          def to_hash
          end
        end
      end

      class Stats < WhopSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(WhopSDK::App::Stats, WhopSDK::Internal::AnyHash)
          end

        # The number of unique users who have spent time in this app in the last 24 hours.
        # Returns 0 if no usage data is available.
        sig { returns(Integer) }
        attr_accessor :dau

        # The number of unique users who have spent time in this app in the last 28 days.
        # Returns 0 if no usage data is available.
        sig { returns(Integer) }
        attr_accessor :mau

        # The total time, in seconds, that all users have spent in this app over the last
        # 24 hours. Returns 0 if no usage data is available.
        sig { returns(Integer) }
        attr_accessor :time_spent_last24_hours

        # The number of unique users who have spent time in this app in the last 7 days.
        # Returns 0 if no usage data is available.
        sig { returns(Integer) }
        attr_accessor :wau

        # Aggregate usage statistics for this app, including daily, weekly, and monthly
        # active user counts.
        sig do
          params(
            dau: Integer,
            mau: Integer,
            time_spent_last24_hours: Integer,
            wau: Integer
          ).returns(T.attached_class)
        end
        def self.new(
          # The number of unique users who have spent time in this app in the last 24 hours.
          # Returns 0 if no usage data is available.
          dau:,
          # The number of unique users who have spent time in this app in the last 28 days.
          # Returns 0 if no usage data is available.
          mau:,
          # The total time, in seconds, that all users have spent in this app over the last
          # 24 hours. Returns 0 if no usage data is available.
          time_spent_last24_hours:,
          # The number of unique users who have spent time in this app in the last 7 days.
          # Returns 0 if no usage data is available.
          wau:
        )
        end

        sig do
          override.returns(
            {
              dau: Integer,
              mau: Integer,
              time_spent_last24_hours: Integer,
              wau: Integer
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
