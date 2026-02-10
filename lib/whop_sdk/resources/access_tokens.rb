# frozen_string_literal: true

module WhopSDK
  module Resources
    class AccessTokens
      # Some parameter documentations has been truncated, see
      # {WhopSDK::Models::AccessTokenCreateParams} for more details.
      #
      # Create a short-lived access token for authenticating API requests. When using
      # API key authentication, provide company_id or user_id. When using OAuth, the
      # user is derived from the token. Use this token with Whop's web and mobile
      # embedded components.
      #
      # @overload create(company_id: nil, expires_at: nil, scoped_actions: nil, user_id: nil, request_options: {})
      #
      # @param company_id [String, nil] The unique identifier of the company to generate the token for, starting with 'b
      #
      # @param expires_at [Time, nil] The expiration timestamp for the access token. Defaults to 1 hour from now, with
      #
      # @param scoped_actions [Array<String>, nil] An array of permission scopes to grant to the access token. If empty or omitted,
      #
      # @param user_id [String, nil] The unique identifier of the user to generate the token for, starting with 'user
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
