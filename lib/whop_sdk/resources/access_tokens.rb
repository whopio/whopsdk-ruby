# frozen_string_literal: true

module WhopSDK
  module Resources
    class AccessTokens
      # Some parameter documentations has been truncated, see
      # {WhopSDK::Models::AccessTokenCreateParams} for more details.
      #
      # Creates an access token for a user to access a specific resource. These access
      # tokens are designed to be used with Whop's embedded components.
      #
      # @overload create(scoped_actions:, target_resource_id:, target_resource_type:, expires_at: nil, request_options: {})
      #
      # @param scoped_actions [Array<String>] Array of desired scoped actions for the access token. This list must be a subset
      #
      # @param target_resource_id [String] The ID of the target resource (Company, User, etc.) for which the access token i
      #
      # @param target_resource_type [Symbol, WhopSDK::Models::AccessTokenCreateParams::TargetResourceType] The type of the target resource (company, user, product, experience, etc.).
      #
      # @param expires_at [Time, nil] The expiration timestamp for the access token. If not provided, a default expira
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
