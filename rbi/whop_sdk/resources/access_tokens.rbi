# typed: strong

module WhopSDK
  module Resources
    # Access tokens
    class AccessTokens
      # Create a short-lived access token for authenticating API requests. When using
      # API key authentication, provide company_id or user_id. When using OAuth, the
      # user is derived from the token. Use this token with Whop's web and mobile
      # embedded components.
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
        # The unique identifier of the company to generate the token for, starting with
        # 'biz\_'. The API key must have permission to access this company.
        company_id: nil,
        # The expiration timestamp for the access token. Defaults to 1 hour from now, with
        # a maximum of 3 hours.
        expires_at: nil,
        # An array of permission scopes to grant to the access token. If empty or omitted,
        # all permissions from the authenticating credential are inherited. Must be a
        # subset of the credential's permissions.
        scoped_actions: nil,
        # The unique identifier of the user to generate the token for, starting with
        # 'user\_'. The API key must have permission to access this user.
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
