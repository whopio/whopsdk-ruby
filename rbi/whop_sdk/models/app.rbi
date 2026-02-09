# typed: strong

module WhopSDK
  module Models
    class App < WhopSDK::Internal::Type::BaseModel
      OrHash = T.type_alias { T.any(WhopSDK::App, WhopSDK::Internal::AnyHash) }

      # The unique identifier for the app.
      sig { returns(String) }
      attr_accessor :id

      # The API key for the app
      sig { returns(T.nilable(WhopSDK::App::APIKey)) }
      attr_reader :api_key

      sig { params(api_key: T.nilable(WhopSDK::App::APIKey::OrHash)).void }
      attr_writer :api_key

      # The type of end-user an app is built for
      sig { returns(WhopSDK::AppType::TaggedSymbol) }
      attr_accessor :app_type

      # The base url of the app
      sig { returns(T.nilable(String)) }
      attr_accessor :base_url

      # The company that owns the app
      sig { returns(WhopSDK::App::Company) }
      attr_reader :company

      sig { params(company: WhopSDK::App::Company::OrHash).void }
      attr_writer :company

      # The creator of the app
      sig { returns(WhopSDK::App::Creator) }
      attr_reader :creator

      sig { params(creator: WhopSDK::App::Creator::OrHash).void }
      attr_writer :creator

      # The path part for a specific view of the app. This is the template part of the
      # url after the base domain. Eg: /experiences/[experienceId]
      sig { returns(T.nilable(String)) }
      attr_accessor :dashboard_path

      # The description of the app
      sig { returns(T.nilable(String)) }
      attr_accessor :description

      # The path part for a specific view of the app. This is the template part of the
      # url after the base domain. Eg: /experiences/[experienceId]
      sig { returns(T.nilable(String)) }
      attr_accessor :discover_path

      # The unique part of the proxied domain for this app. Used to generate the base
      # url used to display the app inside the whop platform. Refers to the id part in
      # the final url: https://{domain_id}.apps.whop.com
      sig { returns(String) }
      attr_accessor :domain_id

      # The path part for a specific view of the app. This is the template part of the
      # url after the base domain. Eg: /experiences/[experienceId]
      sig { returns(T.nilable(String)) }
      attr_accessor :experience_path

      # The icon for the app. This icon is shown on discovery, on the product page, on
      # checkout, and as a default icon for the experiences.
      sig { returns(T.nilable(WhopSDK::App::Icon)) }
      attr_reader :icon

      sig { params(icon: T.nilable(WhopSDK::App::Icon::OrHash)).void }
      attr_writer :icon

      # The name of the app
      sig { returns(String) }
      attr_accessor :name

      # The set of permissions that an app requests to be granted when a user installs
      # the app.
      sig { returns(T::Array[WhopSDK::App::RequestedPermission]) }
      attr_accessor :requested_permissions

      # A collection of stats for the app.
      sig { returns(T.nilable(WhopSDK::App::Stats)) }
      attr_reader :stats

      sig { params(stats: T.nilable(WhopSDK::App::Stats::OrHash)).void }
      attr_writer :stats

      # If the status is live, the app is visible on Whop discovery. In order to be
      # live, you need to set the name, icon, and description. Being unlisted or hidden
      # means it's not visible on Whop but you can still install the app via direct
      # link. To remove the app from whop discovery, you should set the status to
      # unlisted.
      sig { returns(WhopSDK::AppStatuses::TaggedSymbol) }
      attr_accessor :status

      # Whether this app has been verified by Whop. Verified apps are endorsed by whop
      # and are shown in the 'featured apps' section of the app store.
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
        # The API key for the app
        api_key:,
        # The type of end-user an app is built for
        app_type:,
        # The base url of the app
        base_url:,
        # The company that owns the app
        company:,
        # The creator of the app
        creator:,
        # The path part for a specific view of the app. This is the template part of the
        # url after the base domain. Eg: /experiences/[experienceId]
        dashboard_path:,
        # The description of the app
        description:,
        # The path part for a specific view of the app. This is the template part of the
        # url after the base domain. Eg: /experiences/[experienceId]
        discover_path:,
        # The unique part of the proxied domain for this app. Used to generate the base
        # url used to display the app inside the whop platform. Refers to the id part in
        # the final url: https://{domain_id}.apps.whop.com
        domain_id:,
        # The path part for a specific view of the app. This is the template part of the
        # url after the base domain. Eg: /experiences/[experienceId]
        experience_path:,
        # The icon for the app. This icon is shown on discovery, on the product page, on
        # checkout, and as a default icon for the experiences.
        icon:,
        # The name of the app
        name:,
        # The set of permissions that an app requests to be granted when a user installs
        # the app.
        requested_permissions:,
        # A collection of stats for the app.
        stats:,
        # If the status is live, the app is visible on Whop discovery. In order to be
        # live, you need to set the name, icon, and description. Being unlisted or hidden
        # means it's not visible on Whop but you can still install the app via direct
        # link. To remove the app from whop discovery, you should set the status to
        # unlisted.
        status:,
        # Whether this app has been verified by Whop. Verified apps are endorsed by whop
        # and are shown in the 'featured apps' section of the app store.
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

        # The API key for the app
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

        # The title of the company.
        sig { returns(String) }
        attr_accessor :title

        # The company that owns the app
        sig { params(id: String, title: String).returns(T.attached_class) }
        def self.new(
          # The unique identifier for the company.
          id:,
          # The title of the company.
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

        # The name of the user from their Whop account.
        sig { returns(T.nilable(String)) }
        attr_accessor :name

        # The username of the user from their Whop account.
        sig { returns(String) }
        attr_accessor :username

        # The creator of the app
        sig do
          params(id: String, name: T.nilable(String), username: String).returns(
            T.attached_class
          )
        end
        def self.new(
          # The unique identifier for the user.
          id:,
          # The name of the user from their Whop account.
          name:,
          # The username of the user from their Whop account.
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

        # This is the URL you use to render optimized attachments on the client. This
        # should be used for apps.
        sig { returns(T.nilable(String)) }
        attr_accessor :url

        # The icon for the app. This icon is shown on discovery, on the product page, on
        # checkout, and as a default icon for the experiences.
        sig { params(url: T.nilable(String)).returns(T.attached_class) }
        def self.new(
          # This is the URL you use to render optimized attachments on the client. This
          # should be used for apps.
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

        # This is the number of users that have spent time in this app in the last 24
        # hours.
        sig { returns(Integer) }
        attr_accessor :dau

        # This is the number of users that have spent time in this app in the last 28
        # days.
        sig { returns(Integer) }
        attr_accessor :mau

        # This how much time, in seconds, users have spent in this app in the last 24
        # hours.
        sig { returns(Integer) }
        attr_accessor :time_spent_last24_hours

        # This is the number of users that have spent time in this app in the last 7 days.
        sig { returns(Integer) }
        attr_accessor :wau

        # A collection of stats for the app.
        sig do
          params(
            dau: Integer,
            mau: Integer,
            time_spent_last24_hours: Integer,
            wau: Integer
          ).returns(T.attached_class)
        end
        def self.new(
          # This is the number of users that have spent time in this app in the last 24
          # hours.
          dau:,
          # This is the number of users that have spent time in this app in the last 28
          # days.
          mau:,
          # This how much time, in seconds, users have spent in this app in the last 24
          # hours.
          time_spent_last24_hours:,
          # This is the number of users that have spent time in this app in the last 7 days.
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
