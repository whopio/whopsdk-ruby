# typed: strong

module WhopSDK
  module Models
    class AppUpdateParams < WhopSDK::Internal::Type::BaseModel
      extend WhopSDK::Internal::Type::RequestParameters::Converter
      include WhopSDK::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(WhopSDK::AppUpdateParams, WhopSDK::Internal::AnyHash)
        end

      # The detailed description shown on the app store's in-depth app view page.
      sig { returns(T.nilable(String)) }
      attr_accessor :app_store_description

      # The type of end-user an app is built for
      sig { returns(T.nilable(WhopSDK::AppType::OrSymbol)) }
      attr_accessor :app_type

      # The base production URL where the app is hosted, such as
      # 'https://myapp.example.com'.
      sig { returns(T.nilable(String)) }
      attr_accessor :base_url

      # The URL path for the company dashboard view of the app, such as '/dashboard'.
      sig { returns(T.nilable(String)) }
      attr_accessor :dashboard_path

      # A short description of the app shown in listings and search results.
      sig { returns(T.nilable(String)) }
      attr_accessor :description

      # The URL path for the discover view of the app, such as '/discover'.
      sig { returns(T.nilable(String)) }
      attr_accessor :discover_path

      # The URL path for the member-facing hub view of the app, such as
      # '/experiences/[experienceId]'.
      sig { returns(T.nilable(String)) }
      attr_accessor :experience_path

      # The icon image for the app, used in listings and navigation.
      sig { returns(T.nilable(WhopSDK::AppUpdateParams::Icon)) }
      attr_reader :icon

      sig do
        params(icon: T.nilable(WhopSDK::AppUpdateParams::Icon::OrHash)).void
      end
      attr_writer :icon

      # The display name for the app, shown to users on the app store and product pages.
      sig { returns(T.nilable(String)) }
      attr_accessor :name

      # The whitelisted OAuth callback URLs that users are redirected to after
      # authorizing the app
      sig { returns(T.nilable(T::Array[String])) }
      attr_accessor :redirect_uris

      # The permission scopes the app will request from users when they install it.
      sig do
        returns(
          T.nilable(T::Array[WhopSDK::AppUpdateParams::RequiredScope::OrSymbol])
        )
      end
      attr_accessor :required_scopes

      # The status of an experience interface
      sig { returns(T.nilable(WhopSDK::AppStatuses::OrSymbol)) }
      attr_accessor :status

      sig do
        params(
          app_store_description: T.nilable(String),
          app_type: T.nilable(WhopSDK::AppType::OrSymbol),
          base_url: T.nilable(String),
          dashboard_path: T.nilable(String),
          description: T.nilable(String),
          discover_path: T.nilable(String),
          experience_path: T.nilable(String),
          icon: T.nilable(WhopSDK::AppUpdateParams::Icon::OrHash),
          name: T.nilable(String),
          redirect_uris: T.nilable(T::Array[String]),
          required_scopes:
            T.nilable(
              T::Array[WhopSDK::AppUpdateParams::RequiredScope::OrSymbol]
            ),
          status: T.nilable(WhopSDK::AppStatuses::OrSymbol),
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # The detailed description shown on the app store's in-depth app view page.
        app_store_description: nil,
        # The type of end-user an app is built for
        app_type: nil,
        # The base production URL where the app is hosted, such as
        # 'https://myapp.example.com'.
        base_url: nil,
        # The URL path for the company dashboard view of the app, such as '/dashboard'.
        dashboard_path: nil,
        # A short description of the app shown in listings and search results.
        description: nil,
        # The URL path for the discover view of the app, such as '/discover'.
        discover_path: nil,
        # The URL path for the member-facing hub view of the app, such as
        # '/experiences/[experienceId]'.
        experience_path: nil,
        # The icon image for the app, used in listings and navigation.
        icon: nil,
        # The display name for the app, shown to users on the app store and product pages.
        name: nil,
        # The whitelisted OAuth callback URLs that users are redirected to after
        # authorizing the app
        redirect_uris: nil,
        # The permission scopes the app will request from users when they install it.
        required_scopes: nil,
        # The status of an experience interface
        status: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            app_store_description: T.nilable(String),
            app_type: T.nilable(WhopSDK::AppType::OrSymbol),
            base_url: T.nilable(String),
            dashboard_path: T.nilable(String),
            description: T.nilable(String),
            discover_path: T.nilable(String),
            experience_path: T.nilable(String),
            icon: T.nilable(WhopSDK::AppUpdateParams::Icon),
            name: T.nilable(String),
            redirect_uris: T.nilable(T::Array[String]),
            required_scopes:
              T.nilable(
                T::Array[WhopSDK::AppUpdateParams::RequiredScope::OrSymbol]
              ),
            status: T.nilable(WhopSDK::AppStatuses::OrSymbol),
            request_options: WhopSDK::RequestOptions
          }
        )
      end
      def to_hash
      end

      class Icon < WhopSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(WhopSDK::AppUpdateParams::Icon, WhopSDK::Internal::AnyHash)
          end

        # The ID of an existing file object.
        sig { returns(String) }
        attr_accessor :id

        # The icon image for the app, used in listings and navigation.
        sig { params(id: String).returns(T.attached_class) }
        def self.new(
          # The ID of an existing file object.
          id:
        )
        end

        sig { override.returns({ id: String }) }
        def to_hash
        end
      end

      # These are the scopes an app can request on behalf of a user
      module RequiredScope
        extend WhopSDK::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, WhopSDK::AppUpdateParams::RequiredScope)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        READ_USER =
          T.let(
            :read_user,
            WhopSDK::AppUpdateParams::RequiredScope::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[WhopSDK::AppUpdateParams::RequiredScope::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
