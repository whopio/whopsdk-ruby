# typed: strong

module WhopSDK
  module Models
    class SocialAccountConnectParams < WhopSDK::Internal::Type::BaseModel
      extend WhopSDK::Internal::Type::RequestParameters::Converter
      include WhopSDK::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(WhopSDK::SocialAccountConnectParams, WhopSDK::Internal::AnyHash)
        end

      # The platform to connect the social account on. Today, the supported option is
      # `meta_business`.
      sig { returns(WhopSDK::SocialAccountConnectParams::Platform::OrSymbol) }
      attr_accessor :platform

      # The Account (biz\_ identifier) to connect the social account for. An
      # account-scoped API key may omit this to default to its own account.
      sig { returns(T.nilable(String)) }
      attr_reader :account_id

      sig { params(account_id: String).void }
      attr_writer :account_id

      # The Whop URL to redirect the user to after they finish connecting.
      sig { returns(T.nilable(String)) }
      attr_reader :redirect_url

      sig { params(redirect_url: String).void }
      attr_writer :redirect_url

      # Capabilities to grant for the connected social account. Use `advertise` when
      # connecting a Meta Business account for ads.
      sig do
        returns(
          T.nilable(
            T::Array[WhopSDK::SocialAccountConnectParams::Scope::OrSymbol]
          )
        )
      end
      attr_reader :scopes

      sig do
        params(
          scopes: T::Array[WhopSDK::SocialAccountConnectParams::Scope::OrSymbol]
        ).void
      end
      attr_writer :scopes

      sig do
        params(
          platform: WhopSDK::SocialAccountConnectParams::Platform::OrSymbol,
          account_id: String,
          redirect_url: String,
          scopes:
            T::Array[WhopSDK::SocialAccountConnectParams::Scope::OrSymbol],
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # The platform to connect the social account on. Today, the supported option is
        # `meta_business`.
        platform:,
        # The Account (biz\_ identifier) to connect the social account for. An
        # account-scoped API key may omit this to default to its own account.
        account_id: nil,
        # The Whop URL to redirect the user to after they finish connecting.
        redirect_url: nil,
        # Capabilities to grant for the connected social account. Use `advertise` when
        # connecting a Meta Business account for ads.
        scopes: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            platform: WhopSDK::SocialAccountConnectParams::Platform::OrSymbol,
            account_id: String,
            redirect_url: String,
            scopes:
              T::Array[WhopSDK::SocialAccountConnectParams::Scope::OrSymbol],
            request_options: WhopSDK::RequestOptions
          }
        )
      end
      def to_hash
      end

      # The platform to connect the social account on. Today, the supported option is
      # `meta_business`.
      module Platform
        extend WhopSDK::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, WhopSDK::SocialAccountConnectParams::Platform)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        META_BUSINESS =
          T.let(
            :meta_business,
            WhopSDK::SocialAccountConnectParams::Platform::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              WhopSDK::SocialAccountConnectParams::Platform::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end

      module Scope
        extend WhopSDK::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, WhopSDK::SocialAccountConnectParams::Scope)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        ADVERTISE =
          T.let(
            :advertise,
            WhopSDK::SocialAccountConnectParams::Scope::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[WhopSDK::SocialAccountConnectParams::Scope::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
