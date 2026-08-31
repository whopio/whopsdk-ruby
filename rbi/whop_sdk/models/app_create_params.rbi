# typed: strong

module WhopSDK
  module Models
    class AppCreateParams < WhopSDK::Internal::Type::BaseModel
      extend WhopSDK::Internal::Type::RequestParameters::Converter
      include WhopSDK::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(WhopSDK::AppCreateParams, WhopSDK::Internal::AnyHash)
        end

      # The display name for the app, shown to users on the app store and product pages.
      sig { returns(String) }
      attr_accessor :name

      # The account to create the app for (`biz_` tag). Defaults to the account behind
      # the presented credential.
      sig { returns(T.nilable(String)) }
      attr_reader :account_id

      sig { params(account_id: String).void }
      attr_writer :account_id

      # The type of app to create. Defaults to `b2c_app`.
      sig { returns(T.nilable(WhopSDK::AppCreateParams::AppType::OrSymbol)) }
      attr_reader :app_type

      sig { params(app_type: WhopSDK::AppCreateParams::AppType::OrSymbol).void }
      attr_writer :app_type

      # The base production URL where the app is hosted, such as
      # `https://myapp.example.com`.
      sig { returns(T.nilable(String)) }
      attr_accessor :base_url

      # The icon image for the app in PNG, JPEG, or GIF format, referencing an uploaded
      # file: `{ id }` for an existing attachment or `{ direct_upload_id }` for a new
      # direct upload.
      sig { returns(T.nilable(WhopSDK::AppCreateParams::Icon)) }
      attr_reader :icon

      sig { params(icon: WhopSDK::AppCreateParams::Icon::OrHash).void }
      attr_writer :icon

      # The whitelisted OAuth callback URLs that users are redirected to after
      # authorizing the app.
      sig { returns(T.nilable(T::Array[String])) }
      attr_reader :redirect_uris

      sig { params(redirect_uris: T::Array[String]).void }
      attr_writer :redirect_uris

      # The subdomain route where the app's hosted web builds are served, such as
      # `myapp` for myapp.whop.site.
      sig { returns(T.nilable(String)) }
      attr_accessor :route

      sig { returns(T.nilable(String)) }
      attr_reader :api_version_date

      sig { params(api_version_date: String).void }
      attr_writer :api_version_date

      sig { returns(T.nilable(String)) }
      attr_reader :idempotency_key

      sig { params(idempotency_key: String).void }
      attr_writer :idempotency_key

      sig do
        params(
          name: String,
          account_id: String,
          app_type: WhopSDK::AppCreateParams::AppType::OrSymbol,
          base_url: T.nilable(String),
          icon: WhopSDK::AppCreateParams::Icon::OrHash,
          redirect_uris: T::Array[String],
          route: T.nilable(String),
          api_version_date: String,
          idempotency_key: String,
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # The display name for the app, shown to users on the app store and product pages.
        name:,
        # The account to create the app for (`biz_` tag). Defaults to the account behind
        # the presented credential.
        account_id: nil,
        # The type of app to create. Defaults to `b2c_app`.
        app_type: nil,
        # The base production URL where the app is hosted, such as
        # `https://myapp.example.com`.
        base_url: nil,
        # The icon image for the app in PNG, JPEG, or GIF format, referencing an uploaded
        # file: `{ id }` for an existing attachment or `{ direct_upload_id }` for a new
        # direct upload.
        icon: nil,
        # The whitelisted OAuth callback URLs that users are redirected to after
        # authorizing the app.
        redirect_uris: nil,
        # The subdomain route where the app's hosted web builds are served, such as
        # `myapp` for myapp.whop.site.
        route: nil,
        api_version_date: nil,
        idempotency_key: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            name: String,
            account_id: String,
            app_type: WhopSDK::AppCreateParams::AppType::OrSymbol,
            base_url: T.nilable(String),
            icon: WhopSDK::AppCreateParams::Icon,
            redirect_uris: T::Array[String],
            route: T.nilable(String),
            api_version_date: String,
            idempotency_key: String,
            request_options: WhopSDK::RequestOptions
          }
        )
      end
      def to_hash
      end

      # The type of app to create. Defaults to `b2c_app`.
      module AppType
        extend WhopSDK::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, WhopSDK::AppCreateParams::AppType) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        B2B_APP =
          T.let(:b2b_app, WhopSDK::AppCreateParams::AppType::TaggedSymbol)
        B2C_APP =
          T.let(:b2c_app, WhopSDK::AppCreateParams::AppType::TaggedSymbol)
        COMPANY_APP =
          T.let(:company_app, WhopSDK::AppCreateParams::AppType::TaggedSymbol)
        COMPONENT =
          T.let(:component, WhopSDK::AppCreateParams::AppType::TaggedSymbol)
        WEBSITE =
          T.let(:website, WhopSDK::AppCreateParams::AppType::TaggedSymbol)

        sig do
          override.returns(
            T::Array[WhopSDK::AppCreateParams::AppType::TaggedSymbol]
          )
        end
        def self.values
        end
      end

      class Icon < WhopSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(WhopSDK::AppCreateParams::Icon, WhopSDK::Internal::AnyHash)
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
    end
  end
end
