# typed: strong

module WhopSDK
  module Resources
    class AccessTokens
      # Creates an access token for a user to access a specific resource. These access
      # tokens are designed to be used with Whop's embedded components.
      sig do
        params(
          scoped_actions: T::Array[String],
          target_resource_id: String,
          target_resource_type:
            WhopSDK::AccessTokenCreateParams::TargetResourceType::OrSymbol,
          expires_at: T.nilable(Time),
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(WhopSDK::Models::AccessTokenCreateResponse)
      end
      def create(
        # Array of desired scoped actions for the access token. This list must be a subset
        # of the API keys's existing permissions. Otherwise, an error will be raised.
        scoped_actions:,
        # The ID of the target resource (Company, User, etc.) for which the access token
        # is being created.
        target_resource_id:,
        # The type of the target resource (company, user, product, experience, etc.).
        target_resource_type:,
        # The expiration timestamp for the access token. If not provided, a default
        # expiration time of 1 hour will be used. The expiration can be set to a maximum
        # of 3 hours from the current time.
        expires_at: nil,
        request_options: {}
      )
      end

      # @api private
      sig { params(client: WhopSDK::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end
