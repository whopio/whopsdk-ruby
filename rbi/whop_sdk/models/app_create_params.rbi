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

      # The ID of the company to create the app for
      sig { returns(String) }
      attr_accessor :company_id

      # The name of the app to be created
      sig { returns(String) }
      attr_accessor :name

      # The base URL of the app to be created
      sig { returns(T.nilable(String)) }
      attr_accessor :base_url

      # The icon for the app in png, jpeg, or gif format
      sig { returns(T.nilable(WhopSDK::AppCreateParams::Icon)) }
      attr_reader :icon

      sig do
        params(icon: T.nilable(WhopSDK::AppCreateParams::Icon::OrHash)).void
      end
      attr_writer :icon

      sig do
        params(
          company_id: String,
          name: String,
          base_url: T.nilable(String),
          icon: T.nilable(WhopSDK::AppCreateParams::Icon::OrHash),
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # The ID of the company to create the app for
        company_id:,
        # The name of the app to be created
        name:,
        # The base URL of the app to be created
        base_url: nil,
        # The icon for the app in png, jpeg, or gif format
        icon: nil,
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

        # The icon for the app in png, jpeg, or gif format
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
