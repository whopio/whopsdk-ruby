# frozen_string_literal: true

module WhopSDK
  module Resources
    class AccessTokens
      # Some parameter documentations has been truncated, see
      # {WhopSDK::Models::AccessTokenCreateParams} for more details.
      #
      # Create a short-lived access token to authenticate API requests on behalf of a
      # Company or User. This token should be used with Whop's web and mobile embedded
      # components. You must provide either a company_id or a user_id argument, but not
      # both.
      #
      # @overload create(company_id:, user_id:, expires_at: nil, scoped_actions: nil, request_options: {})
      #
      # @param company_id [String] The ID of the Company to generate the token for. The API key must have permissio
      #
      # @param user_id [String] The ID of the User to generate the token for. The API key must have permission t
      #
      # @param expires_at [Time, nil] The expiration timestamp for the access token. If not provided, a default expira
      #
      # @param scoped_actions [Array<String>, nil] Array of desired scoped actions for the access token. If sent as an empty array
      #
      # @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [WhopSDK::Models::AccessTokenCreateResponse]
      #
      # @see WhopSDK::Models::AccessTokenCreateParams
      def create(params)
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
