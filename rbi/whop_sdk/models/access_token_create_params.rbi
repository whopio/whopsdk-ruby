# typed: strong

module WhopSDK
  module Models
    class AccessTokenCreateParams < WhopSDK::Internal::Type::BaseModel
      extend WhopSDK::Internal::Type::RequestParameters::Converter
      include WhopSDK::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(WhopSDK::AccessTokenCreateParams, WhopSDK::Internal::AnyHash)
        end

      # The unique identifier of the company to generate the token for, starting with
      # 'biz\_'. The API key must have permission to access this company.
      sig { returns(T.nilable(String)) }
      attr_accessor :company_id

      # The expiration timestamp for the access token. Defaults to 1 hour from now, with
      # a maximum of 3 hours.
      sig { returns(T.nilable(Time)) }
      attr_accessor :expires_at

      # An array of permission scopes to grant to the access token. If empty or omitted,
      # all permissions from the authenticating credential are inherited. Must be a
      # subset of the credential's permissions.
      sig { returns(T.nilable(T::Array[String])) }
      attr_accessor :scoped_actions

      # The unique identifier of the user to generate the token for, starting with
      # 'user\_'. The API key must have permission to access this user.
      sig { returns(T.nilable(String)) }
      attr_accessor :user_id

      sig do
        params(
          company_id: T.nilable(String),
          expires_at: T.nilable(Time),
          scoped_actions: T.nilable(T::Array[String]),
          user_id: T.nilable(String),
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
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

      sig do
        override.returns(
          {
            company_id: T.nilable(String),
            expires_at: T.nilable(Time),
            scoped_actions: T.nilable(T::Array[String]),
            user_id: T.nilable(String),
            request_options: WhopSDK::RequestOptions
          }
        )
      end
      def to_hash
      end
    end
  end
end
