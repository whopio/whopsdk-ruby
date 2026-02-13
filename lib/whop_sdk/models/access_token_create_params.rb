# frozen_string_literal: true

module WhopSDK
  module Models
    # @see WhopSDK::Resources::AccessTokens#create
    class AccessTokenCreateParams < WhopSDK::Internal::Type::BaseModel
      extend WhopSDK::Internal::Type::RequestParameters::Converter
      include WhopSDK::Internal::Type::RequestParameters

      # @!attribute company_id
      #   The unique identifier of the company to generate the token for, starting with
      #   'biz\_'. The API key must have permission to access this company.
      #
      #   @return [String, nil]
      optional :company_id, String, nil?: true

      # @!attribute expires_at
      #   The expiration timestamp for the access token. Defaults to 1 hour from now, with
      #   a maximum of 3 hours.
      #
      #   @return [Time, nil]
      optional :expires_at, Time, nil?: true

      # @!attribute scoped_actions
      #   An array of permission scopes to grant to the access token. If empty or omitted,
      #   all permissions from the authenticating credential are inherited. Must be a
      #   subset of the credential's permissions.
      #
      #   @return [Array<String>, nil]
      optional :scoped_actions, WhopSDK::Internal::Type::ArrayOf[String], nil?: true

      # @!attribute user_id
      #   The unique identifier of the user to generate the token for, starting with
      #   'user\_'. The API key must have permission to access this user.
      #
      #   @return [String, nil]
      optional :user_id, String, nil?: true

      # @!method initialize(company_id: nil, expires_at: nil, scoped_actions: nil, user_id: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {WhopSDK::Models::AccessTokenCreateParams} for more details.
      #
      #   @param company_id [String, nil] The unique identifier of the company to generate the token for, starting with 'b
      #
      #   @param expires_at [Time, nil] The expiration timestamp for the access token. Defaults to 1 hour from now, with
      #
      #   @param scoped_actions [Array<String>, nil] An array of permission scopes to grant to the access token. If empty or omitted,
      #
      #   @param user_id [String, nil] The unique identifier of the user to generate the token for, starting with 'user
      #
      #   @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
