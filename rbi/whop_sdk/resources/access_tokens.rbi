# typed: strong

module WhopSDK
  module Resources
    class AccessTokens
      # Creates an access token for a user
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
        # Array of desired scoped actions for the access token.
        scoped_actions:,
        # The ID of the target resource (Company or User) for which the access token is
        # being created.
        target_resource_id:,
        # The type of the target resource (Company or User).
        target_resource_type:,
        # The expiration timestamp for the access token. If not provided, a default
        # expiration time will be used.
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
