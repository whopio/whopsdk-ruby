# typed: strong

module WhopSDK
  module Models
    class SocialAccount < WhopSDK::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(WhopSDK::SocialAccount, WhopSDK::Internal::AnyHash)
        end

      # Unique identifier for the social account.
      sig { returns(String) }
      attr_accessor :id

      # The platform-specific ID for this social account.
      sig { returns(T.nilable(String)) }
      attr_accessor :external_id

      # The display name of the social account on the platform.
      sig { returns(T.nilable(String)) }
      attr_accessor :name

      # The platform the social account exists on.
      sig { returns(WhopSDK::SocialAccount::Platform::TaggedSymbol) }
      attr_accessor :platform

      # The URL where the profile picture of the social account can be accessed.
      sig { returns(T.nilable(String)) }
      attr_accessor :profile_picture_url

      sig { returns(T::Array[String]) }
      attr_accessor :scopes

      # The URL where the social account can be accessed on the platform. Null while a
      # Whop-owned page is still being provisioned.
      sig { returns(T.nilable(String)) }
      attr_accessor :url

      # The username of the social account on the platform. Null while a Whop-owned page
      # is still being provisioned.
      sig { returns(T.nilable(String)) }
      attr_accessor :username

      # Whether the social account is verified on the platform.
      sig { returns(T::Boolean) }
      attr_accessor :verified

      sig do
        params(
          id: String,
          external_id: T.nilable(String),
          name: T.nilable(String),
          platform: WhopSDK::SocialAccount::Platform::OrSymbol,
          profile_picture_url: T.nilable(String),
          scopes: T::Array[String],
          url: T.nilable(String),
          username: T.nilable(String),
          verified: T::Boolean
        ).returns(T.attached_class)
      end
      def self.new(
        # Unique identifier for the social account.
        id:,
        # The platform-specific ID for this social account.
        external_id:,
        # The display name of the social account on the platform.
        name:,
        # The platform the social account exists on.
        platform:,
        # The URL where the profile picture of the social account can be accessed.
        profile_picture_url:,
        scopes:,
        # The URL where the social account can be accessed on the platform. Null while a
        # Whop-owned page is still being provisioned.
        url:,
        # The username of the social account on the platform. Null while a Whop-owned page
        # is still being provisioned.
        username:,
        # Whether the social account is verified on the platform.
        verified:
      )
      end

      sig do
        override.returns(
          {
            id: String,
            external_id: T.nilable(String),
            name: T.nilable(String),
            platform: WhopSDK::SocialAccount::Platform::TaggedSymbol,
            profile_picture_url: T.nilable(String),
            scopes: T::Array[String],
            url: T.nilable(String),
            username: T.nilable(String),
            verified: T::Boolean
          }
        )
      end
      def to_hash
      end

      # The platform the social account exists on.
      module Platform
        extend WhopSDK::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, WhopSDK::SocialAccount::Platform) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        X = T.let(:x, WhopSDK::SocialAccount::Platform::TaggedSymbol)
        INSTAGRAM =
          T.let(:instagram, WhopSDK::SocialAccount::Platform::TaggedSymbol)
        YOUTUBE =
          T.let(:youtube, WhopSDK::SocialAccount::Platform::TaggedSymbol)
        TIKTOK = T.let(:tiktok, WhopSDK::SocialAccount::Platform::TaggedSymbol)
        FACEBOOK =
          T.let(:facebook, WhopSDK::SocialAccount::Platform::TaggedSymbol)

        sig do
          override.returns(
            T::Array[WhopSDK::SocialAccount::Platform::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
