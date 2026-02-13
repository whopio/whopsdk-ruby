# frozen_string_literal: true

module WhopSDK
  module Models
    # @see WhopSDK::Resources::AccessTokens#create
    class AccessTokenCreateResponse < WhopSDK::Internal::Type::BaseModel
      # @!attribute token
      #   The signed JWT access token string to include in API request Authorization
      #   headers.
      #
      #   @return [String]
      required :token, String

      # @!attribute expires_at
      #   The timestamp after which this access token is no longer valid and must be
      #   refreshed.
      #
      #   @return [Time]
      required :expires_at, Time

      # @!method initialize(token:, expires_at:)
      #   Some parameter documentations has been truncated, see
      #   {WhopSDK::Models::AccessTokenCreateResponse} for more details.
      #
      #   A short-lived access token used to authenticate API requests on behalf of a
      #   user.
      #
      #   @param token [String] The signed JWT access token string to include in API request Authorization heade
      #
      #   @param expires_at [Time] The timestamp after which this access token is no longer valid and must be refre
    end
  end
end
