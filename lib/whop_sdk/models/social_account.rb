# frozen_string_literal: true

module WhopSDK
  module Models
    # @see WhopSDK::Resources::SocialAccounts#create
    class SocialAccount < WhopSDK::Internal::Type::BaseModel
      # @!attribute id
      #   Unique identifier for the social account.
      #
      #   @return [String]
      required :id, String

      # @!attribute external_id
      #   The platform-specific ID for this social account.
      #
      #   @return [String, nil]
      required :external_id, String, nil?: true

      # @!attribute name
      #   The display name of the social account on the platform.
      #
      #   @return [String, nil]
      required :name, String, nil?: true

      # @!attribute platform
      #   The platform the social account exists on.
      #
      #   @return [Symbol, WhopSDK::Models::SocialAccount::Platform]
      required :platform, enum: -> { WhopSDK::SocialAccount::Platform }

      # @!attribute profile_picture_url
      #   The URL where the profile picture of the social account can be accessed.
      #
      #   @return [String, nil]
      required :profile_picture_url, String, nil?: true

      # @!attribute scopes
      #
      #   @return [Array<String>]
      required :scopes, WhopSDK::Internal::Type::ArrayOf[String]

      # @!attribute url
      #   The URL where the social account can be accessed on the platform. Null while a
      #   Whop-owned page is still being provisioned.
      #
      #   @return [String, nil]
      required :url, String, nil?: true

      # @!attribute username
      #   The username of the social account on the platform. Null while a Whop-owned page
      #   is still being provisioned.
      #
      #   @return [String, nil]
      required :username, String, nil?: true

      # @!attribute verified
      #   Whether the social account is verified on the platform.
      #
      #   @return [Boolean]
      required :verified, WhopSDK::Internal::Type::Boolean

      # @!method initialize(id:, external_id:, name:, platform:, profile_picture_url:, scopes:, url:, username:, verified:)
      #   Some parameter documentations has been truncated, see
      #   {WhopSDK::Models::SocialAccount} for more details.
      #
      #   @param id [String] Unique identifier for the social account.
      #
      #   @param external_id [String, nil] The platform-specific ID for this social account.
      #
      #   @param name [String, nil] The display name of the social account on the platform.
      #
      #   @param platform [Symbol, WhopSDK::Models::SocialAccount::Platform] The platform the social account exists on.
      #
      #   @param profile_picture_url [String, nil] The URL where the profile picture of the social account can be accessed.
      #
      #   @param scopes [Array<String>]
      #
      #   @param url [String, nil] The URL where the social account can be accessed on the platform. Null while a W
      #
      #   @param username [String, nil] The username of the social account on the platform. Null while a Whop-owned page
      #
      #   @param verified [Boolean] Whether the social account is verified on the platform.

      # The platform the social account exists on.
      #
      # @see WhopSDK::Models::SocialAccount#platform
      module Platform
        extend WhopSDK::Internal::Type::Enum

        X = :x
        INSTAGRAM = :instagram
        YOUTUBE = :youtube
        TIKTOK = :tiktok
        FACEBOOK = :facebook

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
