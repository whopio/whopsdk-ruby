# typed: strong

module WhopSDK
  module Resources
    class AccessTokens
      # Create a short-lived access token to authenticate API requests. When using API
      # key authentication, provide company_id or user_id. When using OAuth
      # authentication, the user is derived from the token. This token should be used
      # with Whop's web and mobile embedded components.
      sig do
        params(
          company_id: T.nilable(String),
          expires_at: T.nilable(Time),
          scoped_actions: T.nilable(T::Array[String]),
          user_id: T.nilable(String),
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(WhopSDK::Models::AccessTokenCreateResponse)
      end
      def create(
        # The ID of the Company to generate the token for. The API key must have
        # permission to access this Company, such as the being the company the API key
        # belongs to or a sub-merchant of it
        company_id: nil,
        # The expiration timestamp for the access token. If not provided, a default
        # expiration time of 1 hour will be used. The expiration can be set to a maximum
        # of 3 hours from the current time.
        expires_at: nil,
        # Array of desired scoped actions for the access token. If sent as an empty array
        # or not provided, all permissions from the authenticating credential (API key or
        # OAuth token) will be available on the token. If sending an explicit list, they
        # must be a subset of the credential's existing permissions. Otherwise, an error
        # will be raised.
        scoped_actions: nil,
        # The ID of the User to generate the token for. The API key must have permission
        # to access this User.
        user_id: nil,
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
