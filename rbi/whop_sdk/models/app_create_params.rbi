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

      # The unique identifier of the company to create the app for, starting with
      # 'biz\_'.
      sig { returns(String) }
      attr_accessor :company_id

      # The display name for the app, shown to users on the app store and product pages.
      sig { returns(String) }
      attr_accessor :name

      # The base production URL where the app is hosted, such as
      # 'https://myapp.example.com'.
      sig { returns(T.nilable(String)) }
      attr_accessor :base_url

      # The icon image for the app in PNG, JPEG, or GIF format.
      sig { returns(T.nilable(WhopSDK::AppCreateParams::Icon)) }
      attr_reader :icon

      sig do
        params(icon: T.nilable(WhopSDK::AppCreateParams::Icon::OrHash)).void
      end
      attr_writer :icon

      # The whitelisted OAuth callback URLs that users are redirected to after
      # authorizing the app.
      sig { returns(T.nilable(T::Array[String])) }
      attr_accessor :redirect_uris

      sig do
        params(
          company_id: String,
          name: String,
          base_url: T.nilable(String),
          icon: T.nilable(WhopSDK::AppCreateParams::Icon::OrHash),
          redirect_uris: T.nilable(T::Array[String]),
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # The unique identifier of the company to create the app for, starting with
        # 'biz\_'.
        company_id:,
        # The display name for the app, shown to users on the app store and product pages.
        name:,
        # The base production URL where the app is hosted, such as
        # 'https://myapp.example.com'.
        base_url: nil,
        # The icon image for the app in PNG, JPEG, or GIF format.
        icon: nil,
        # The whitelisted OAuth callback URLs that users are redirected to after
        # authorizing the app.
        redirect_uris: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            company_id: String,
            name: String,
            base_url: T.nilable(String),
            icon: T.nilable(WhopSDK::AppCreateParams::Icon),
            redirect_uris: T.nilable(T::Array[String]),
            request_options: WhopSDK::RequestOptions
          }
        )
      end
      def to_hash
      end

      class Icon < WhopSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(WhopSDK::AppCreateParams::Icon, WhopSDK::Internal::AnyHash)
          end

        # The ID of an existing file object.
        sig { returns(String) }
        attr_accessor :id

        # The icon image for the app in PNG, JPEG, or GIF format.
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
    end
  end
end
