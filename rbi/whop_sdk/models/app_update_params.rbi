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

      sig { returns(String) }
      attr_accessor :id

      # The detailed description shown on the app store's in-depth app view page.
      sig { returns(T.nilable(String)) }
      attr_reader :app_store_description

      sig { params(app_store_description: String).void }
      attr_writer :app_store_description

      # The type of end-user the app is built for. Cannot be changed on an app whose
      # type is already `website`.
      sig { returns(T.nilable(WhopSDK::AppUpdateParams::AppType::OrSymbol)) }
      attr_reader :app_type

      sig { params(app_type: WhopSDK::AppUpdateParams::AppType::OrSymbol).void }
      attr_writer :app_type

      # The base production URL where the app is hosted. Set to `null` to take the app
      # proxy offline.
      sig { returns(T.nilable(String)) }
      attr_accessor :base_url

      # The URL path for the account dashboard view.
      sig { returns(T.nilable(String)) }
      attr_accessor :dashboard_path

      # A short description of the app shown in listings and search results.
      sig { returns(T.nilable(String)) }
      attr_reader :description

      sig { params(description: String).void }
      attr_writer :description

      # The URL path for the discover view.
      sig { returns(T.nilable(String)) }
      attr_accessor :discover_path

      # The URL path for the member-facing hub view, such as
      # `/experiences/[experienceId]`.
      sig { returns(T.nilable(String)) }
      attr_accessor :experience_path

      # The icon image for the app in PNG, JPEG, or GIF format, referencing an uploaded
      # file: `{ id }` for an existing attachment or `{ direct_upload_id }` for a new
      # direct upload.
      sig { returns(T.nilable(WhopSDK::AppUpdateParams::Icon)) }
      attr_reader :icon

      sig { params(icon: WhopSDK::AppUpdateParams::Icon::OrHash).void }
      attr_writer :icon

      # The display name for the app, shown to users on the app store and product pages.
      sig { returns(T.nilable(String)) }
      attr_reader :name

      sig { params(name: String).void }
      attr_writer :name

      # How the app authenticates at the OAuth token endpoint.
      sig do
        returns(T.nilable(WhopSDK::AppUpdateParams::OAuthClientType::OrSymbol))
      end
      attr_reader :oauth_client_type

      sig do
        params(
          oauth_client_type: WhopSDK::AppUpdateParams::OAuthClientType::OrSymbol
        ).void
      end
      attr_writer :oauth_client_type

      # The URL path to the app's OpenAPI spec file (requires the ai_chat capability).
      sig { returns(T.nilable(String)) }
      attr_accessor :openapi_path

      # The app build (`abld_` tag) to serve as the Android production build, or `null`
      # to unassign it. Same rules as `production_web_build_id`.
      sig { returns(T.nilable(String)) }
      attr_accessor :production_android_build_id

      # The app build (`abld_` tag) to serve as the iOS production build, or `null` to
      # unassign it. Same rules as `production_web_build_id`.
      sig { returns(T.nilable(String)) }
      attr_accessor :production_ios_build_id

      # The app build (`abld_` tag) to serve as the web production build, or `null` to
      # unassign it. The build must belong to this app, target web, and be in the draft
      # or approved status; a draft build is queued for approval and takes over once
      # approved. Requires the `developer:manage_builds` scope.
      sig { returns(T.nilable(String)) }
      attr_accessor :production_web_build_id

      # The whitelisted OAuth callback URLs users are redirected to after authorizing
      # the app.
      sig { returns(T.nilable(T::Array[String])) }
      attr_reader :redirect_uris

      sig { params(redirect_uris: T::Array[String]).void }
      attr_writer :redirect_uris

      # The OAuth scopes the app requests from users when they install it.
      sig { returns(T.nilable(T::Array[String])) }
      attr_reader :required_scopes

      sig { params(required_scopes: T::Array[String]).void }
      attr_writer :required_scopes

      # The subdomain route where the app's hosted web builds are served.
      sig { returns(T.nilable(String)) }
      attr_reader :route

      sig { params(route: String).void }
      attr_writer :route

      # Secrets to add or overwrite on the app, as an object of string values. Keys not
      # included are left untouched; pass null or an empty string as the value to delete
      # a secret. Encrypted at rest and injected into the app's hosted server runtime.
      sig { returns(T.nilable(T.anything)) }
      attr_reader :secrets

      sig { params(secrets: T.anything).void }
      attr_writer :secrets

      # The URL path to the app's skills directory (requires the ai_chat capability).
      sig { returns(T.nilable(String)) }
      attr_accessor :skills_path

      # Controls whether the app is published on Whop discovery or accessible only
      # through its direct link. Publishing requires a name, icon, and description.
      sig { returns(T.nilable(WhopSDK::AppUpdateParams::Status::OrSymbol)) }
      attr_reader :status

      sig { params(status: WhopSDK::AppUpdateParams::Status::OrSymbol).void }
      attr_writer :status

      sig { returns(T.nilable(String)) }
      attr_reader :api_version_date

      sig { params(api_version_date: String).void }
      attr_writer :api_version_date

      sig do
        params(
          id: String,
          app_store_description: String,
          app_type: WhopSDK::AppUpdateParams::AppType::OrSymbol,
          base_url: T.nilable(String),
          dashboard_path: T.nilable(String),
          description: String,
          discover_path: T.nilable(String),
          experience_path: T.nilable(String),
          icon: WhopSDK::AppUpdateParams::Icon::OrHash,
          name: String,
          oauth_client_type:
            WhopSDK::AppUpdateParams::OAuthClientType::OrSymbol,
          openapi_path: T.nilable(String),
          production_android_build_id: T.nilable(String),
          production_ios_build_id: T.nilable(String),
          production_web_build_id: T.nilable(String),
          redirect_uris: T::Array[String],
          required_scopes: T::Array[String],
          route: String,
          secrets: T.anything,
          skills_path: T.nilable(String),
          status: WhopSDK::AppUpdateParams::Status::OrSymbol,
          api_version_date: String,
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        id:,
        # The detailed description shown on the app store's in-depth app view page.
        app_store_description: nil,
        # The type of end-user the app is built for. Cannot be changed on an app whose
        # type is already `website`.
        app_type: nil,
        # The base production URL where the app is hosted. Set to `null` to take the app
        # proxy offline.
        base_url: nil,
        # The URL path for the account dashboard view.
        dashboard_path: nil,
        # A short description of the app shown in listings and search results.
        description: nil,
        # The URL path for the discover view.
        discover_path: nil,
        # The URL path for the member-facing hub view, such as
        # `/experiences/[experienceId]`.
        experience_path: nil,
        # The icon image for the app in PNG, JPEG, or GIF format, referencing an uploaded
        # file: `{ id }` for an existing attachment or `{ direct_upload_id }` for a new
        # direct upload.
        icon: nil,
        # The display name for the app, shown to users on the app store and product pages.
        name: nil,
        # How the app authenticates at the OAuth token endpoint.
        oauth_client_type: nil,
        # The URL path to the app's OpenAPI spec file (requires the ai_chat capability).
        openapi_path: nil,
        # The app build (`abld_` tag) to serve as the Android production build, or `null`
        # to unassign it. Same rules as `production_web_build_id`.
        production_android_build_id: nil,
        # The app build (`abld_` tag) to serve as the iOS production build, or `null` to
        # unassign it. Same rules as `production_web_build_id`.
        production_ios_build_id: nil,
        # The app build (`abld_` tag) to serve as the web production build, or `null` to
        # unassign it. The build must belong to this app, target web, and be in the draft
        # or approved status; a draft build is queued for approval and takes over once
        # approved. Requires the `developer:manage_builds` scope.
        production_web_build_id: nil,
        # The whitelisted OAuth callback URLs users are redirected to after authorizing
        # the app.
        redirect_uris: nil,
        # The OAuth scopes the app requests from users when they install it.
        required_scopes: nil,
        # The subdomain route where the app's hosted web builds are served.
        route: nil,
        # Secrets to add or overwrite on the app, as an object of string values. Keys not
        # included are left untouched; pass null or an empty string as the value to delete
        # a secret. Encrypted at rest and injected into the app's hosted server runtime.
        secrets: nil,
        # The URL path to the app's skills directory (requires the ai_chat capability).
        skills_path: nil,
        # Controls whether the app is published on Whop discovery or accessible only
        # through its direct link. Publishing requires a name, icon, and description.
        status: nil,
        api_version_date: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            id: String,
            app_store_description: String,
            app_type: WhopSDK::AppUpdateParams::AppType::OrSymbol,
            base_url: T.nilable(String),
            dashboard_path: T.nilable(String),
            description: String,
            discover_path: T.nilable(String),
            experience_path: T.nilable(String),
            icon: WhopSDK::AppUpdateParams::Icon,
            name: String,
            oauth_client_type:
              WhopSDK::AppUpdateParams::OAuthClientType::OrSymbol,
            openapi_path: T.nilable(String),
            production_android_build_id: T.nilable(String),
            production_ios_build_id: T.nilable(String),
            production_web_build_id: T.nilable(String),
            redirect_uris: T::Array[String],
            required_scopes: T::Array[String],
            route: String,
            secrets: T.anything,
            skills_path: T.nilable(String),
            status: WhopSDK::AppUpdateParams::Status::OrSymbol,
            api_version_date: String,
            request_options: WhopSDK::RequestOptions
          }
        )
      end
      def to_hash
      end

      # The type of end-user the app is built for. Cannot be changed on an app whose
      # type is already `website`.
      module AppType
        extend WhopSDK::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, WhopSDK::AppUpdateParams::AppType) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        B2B_APP =
          T.let(:b2b_app, WhopSDK::AppUpdateParams::AppType::TaggedSymbol)
        B2C_APP =
          T.let(:b2c_app, WhopSDK::AppUpdateParams::AppType::TaggedSymbol)
        COMPANY_APP =
          T.let(:company_app, WhopSDK::AppUpdateParams::AppType::TaggedSymbol)
        COMPONENT =
          T.let(:component, WhopSDK::AppUpdateParams::AppType::TaggedSymbol)
        WEBSITE =
          T.let(:website, WhopSDK::AppUpdateParams::AppType::TaggedSymbol)

        sig do
          override.returns(
            T::Array[WhopSDK::AppUpdateParams::AppType::TaggedSymbol]
          )
        end
        def self.values
        end
      end

      class Icon < WhopSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(WhopSDK::AppUpdateParams::Icon, WhopSDK::Internal::AnyHash)
          end

        # The tag of an already-uploaded attachment.
        sig { returns(T.nilable(String)) }
        attr_reader :id

        sig { params(id: String).void }
        attr_writer :id

        # The signed id of a completed direct upload.
        sig { returns(T.nilable(String)) }
        attr_reader :direct_upload_id

        sig { params(direct_upload_id: String).void }
        attr_writer :direct_upload_id

        # The icon image for the app in PNG, JPEG, or GIF format, referencing an uploaded
        # file: `{ id }` for an existing attachment or `{ direct_upload_id }` for a new
        # direct upload.
        sig do
          params(id: String, direct_upload_id: String).returns(T.attached_class)
        end
        def self.new(
          # The tag of an already-uploaded attachment.
          id: nil,
          # The signed id of a completed direct upload.
          direct_upload_id: nil
        )
        end

        sig { override.returns({ id: String, direct_upload_id: String }) }
        def to_hash
        end
      end

      # How the app authenticates at the OAuth token endpoint.
      module OAuthClientType
        extend WhopSDK::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, WhopSDK::AppUpdateParams::OAuthClientType)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        PUBLIC =
          T.let(
            :public,
            WhopSDK::AppUpdateParams::OAuthClientType::TaggedSymbol
          )
        CONFIDENTIAL =
          T.let(
            :confidential,
            WhopSDK::AppUpdateParams::OAuthClientType::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[WhopSDK::AppUpdateParams::OAuthClientType::TaggedSymbol]
          )
        end
        def self.values
        end
      end

      # Controls whether the app is published on Whop discovery or accessible only
      # through its direct link. Publishing requires a name, icon, and description.
      module Status
        extend WhopSDK::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, WhopSDK::AppUpdateParams::Status) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        LIVE = T.let(:live, WhopSDK::AppUpdateParams::Status::TaggedSymbol)
        UNLISTED =
          T.let(:unlisted, WhopSDK::AppUpdateParams::Status::TaggedSymbol)
        HIDDEN = T.let(:hidden, WhopSDK::AppUpdateParams::Status::TaggedSymbol)

        sig do
          override.returns(
            T::Array[WhopSDK::AppUpdateParams::Status::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
