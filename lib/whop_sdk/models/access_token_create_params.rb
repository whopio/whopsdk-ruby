# frozen_string_literal: true

module WhopSDK
  module Models
    # @see WhopSDK::Resources::AccessTokens#create
    class AccessTokenCreateParams < WhopSDK::Internal::Type::BaseModel
      extend WhopSDK::Internal::Type::RequestParameters::Converter
      include WhopSDK::Internal::Type::RequestParameters

      # @!attribute company_id
      #   The ID of the Company to generate the token for. The API key must have
      #   permission to access this Company, such as the being the company the API key
      #   belongs to or a sub-merchant of it
      #
      #   @return [String, nil]
      optional :company_id, String, nil?: true

      # @!attribute expires_at
      #   The expiration timestamp for the access token. If not provided, a default
      #   expiration time of 1 hour will be used. The expiration can be set to a maximum
      #   of 3 hours from the current time.
      #
      #   @return [Time, nil]
      optional :expires_at, Time, nil?: true

      # @!attribute scoped_actions
      #   Array of desired scoped actions for the access token. If sent as an empty array
      #   or not provided, all permissions from the authenticating credential (API key or
      #   OAuth token) will be available on the token. If sending an explicit list, they
      #   must be a subset of the credential's existing permissions. Otherwise, an error
      #   will be raised.
      #
      #   @return [Array<String>, nil]
      optional :scoped_actions, WhopSDK::Internal::Type::ArrayOf[String], nil?: true

      # @!attribute user_id
      #   The ID of the User to generate the token for. The API key must have permission
      #   to access this User.
      #
      #   @return [String, nil]
      optional :user_id, String, nil?: true

      # @!method initialize(company_id: nil, expires_at: nil, scoped_actions: nil, user_id: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {WhopSDK::Models::AccessTokenCreateParams} for more details.
      #
      #   @param company_id [String, nil] The ID of the Company to generate the token for. The API key must have permissio
      #
      #   @param expires_at [Time, nil] The expiration timestamp for the access token. If not provided, a default expira
      #
      #   @param scoped_actions [Array<String>, nil] Array of desired scoped actions for the access token. If sent as an empty array
      #
      #   @param user_id [String, nil] The ID of the User to generate the token for. The API key must have permission t
      #
      #   @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
