# frozen_string_literal: true

module WhopSDK
  module Models
    # @see WhopSDK::Resources::AccessTokens#create
    class AccessTokenCreateResponse < WhopSDK::Internal::Type::BaseModel
      # @!attribute token
      #   The JWT access token string.
      #
      #   @return [String]
      required :token, String

      # @!attribute expires_at
      #   The expiration timestamp of the access token.
      #
      #   @return [Time]
      required :expires_at, Time

      # @!method initialize(token:, expires_at:)
      #   An object representing an access token used for authenticating API requests.
      #
      #   @param token [String] The JWT access token string.
      #
      #   @param expires_at [Time] The expiration timestamp of the access token.
    end
  end
end
