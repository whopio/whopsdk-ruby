# frozen_string_literal: true

module WhopSDK
  module Resources
    class AccessTokens
      # Some parameter documentations has been truncated, see
      # {WhopSDK::Models::AccessTokenCreateParams} for more details.
      #
      # Create a short-lived access token to authenticate API requests. When using API
      # key authentication, provide company_id or user_id. When using OAuth
      # authentication, the user is derived from the token. This token should be used
      # with Whop's web and mobile embedded components.
      #
      # @overload create(company_id: nil, expires_at: nil, scoped_actions: nil, user_id: nil, request_options: {})
      #
      # @param company_id [String, nil] The ID of the Company to generate the token for. The API key must have permissio
      #
      # @param expires_at [Time, nil] The expiration timestamp for the access token. If not provided, a default expira
      #
      # @param scoped_actions [Array<String>, nil] Array of desired scoped actions for the access token. If sent as an empty array
      #
      # @param user_id [String, nil] The ID of the User to generate the token for. The API key must have permission t
      #
      # @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [WhopSDK::Models::AccessTokenCreateResponse]
      #
      # @see WhopSDK::Models::AccessTokenCreateParams
      def create(params = {})
        parsed, options = WhopSDK::AccessTokenCreateParams.dump_request(params)
        @client.request(
          method: :post,
          path: "access_tokens",
          body: parsed,
          model: WhopSDK::Models::AccessTokenCreateResponse,
          options: options
        )
      end

      # @api private
      #
      # @param client [WhopSDK::Client]
      def initialize(client:)
        @client = client
      end
    end
  end
end
