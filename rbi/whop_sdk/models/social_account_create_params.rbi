# typed: strong

module WhopSDK
  module Models
    class SocialAccountCreateParams < WhopSDK::Internal::Type::BaseModel
      extend WhopSDK::Internal::Type::RequestParameters::Converter
      include WhopSDK::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(WhopSDK::SocialAccountCreateParams, WhopSDK::Internal::AnyHash)
        end

      # The platform to create the social account on.
      sig { returns(WhopSDK::SocialAccountCreateParams::Platform::OrSymbol) }
      attr_accessor :platform

      # The Account (biz\_ identifier) to create the social account for. An
      # account-scoped API key may omit this to default to its own account.
      sig { returns(T.nilable(String)) }
      attr_reader :account_id

      sig { params(account_id: String).void }
      attr_writer :account_id

      sig do
        params(
          platform: WhopSDK::SocialAccountCreateParams::Platform::OrSymbol,
          account_id: String,
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # The platform to create the social account on.
        platform:,
        # The Account (biz\_ identifier) to create the social account for. An
        # account-scoped API key may omit this to default to its own account.
        account_id: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            platform: WhopSDK::SocialAccountCreateParams::Platform::OrSymbol,
            account_id: String,
            request_options: WhopSDK::RequestOptions
          }
        )
      end
      def to_hash
      end

      # The platform to create the social account on.
      module Platform
        extend WhopSDK::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, WhopSDK::SocialAccountCreateParams::Platform)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        FACEBOOK =
          T.let(
            :facebook,
            WhopSDK::SocialAccountCreateParams::Platform::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[WhopSDK::SocialAccountCreateParams::Platform::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
