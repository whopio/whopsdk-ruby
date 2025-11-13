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

      # The ID of the Company to generate the token for. The API key must have
      # permission to access this Company, such as the being the company the API key
      # belongs to or a sub-merchant of it
      sig { returns(String) }
      attr_accessor :company_id

      # The expiration timestamp for the access token. If not provided, a default
      # expiration time of 1 hour will be used. The expiration can be set to a maximum
      # of 3 hours from the current time.
      sig { returns(T.nilable(Time)) }
      attr_accessor :expires_at

      # Array of desired scoped actions for the access token. If sent as an empty array
      # or not provided, all permissions from the API key making the request will be
      # available on the token. If sending an explicit list, they must be a subset of
      # the API keys's existing permissions. Otherwise, an error will be raised.
      sig { returns(T.nilable(T::Array[String])) }
      attr_accessor :scoped_actions

      # The ID of the User to generate the token for. The API key must have permission
      # to access this User.
      sig { returns(String) }
      attr_accessor :user_id

      sig do
        params(
          company_id: String,
          user_id: String,
          expires_at: T.nilable(Time),
          scoped_actions: T.nilable(T::Array[String]),
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # The ID of the Company to generate the token for. The API key must have
        # permission to access this Company, such as the being the company the API key
        # belongs to or a sub-merchant of it
        company_id:,
        # The ID of the User to generate the token for. The API key must have permission
        # to access this User.
        user_id:,
        # The expiration timestamp for the access token. If not provided, a default
        # expiration time of 1 hour will be used. The expiration can be set to a maximum
        # of 3 hours from the current time.
        expires_at: nil,
        # Array of desired scoped actions for the access token. If sent as an empty array
        # or not provided, all permissions from the API key making the request will be
        # available on the token. If sending an explicit list, they must be a subset of
        # the API keys's existing permissions. Otherwise, an error will be raised.
        scoped_actions: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            company_id: String,
            expires_at: T.nilable(Time),
            scoped_actions: T.nilable(T::Array[String]),
            user_id: String,
            request_options: WhopSDK::RequestOptions
          }
        )
      end
      def to_hash
      end
    end
  end
end
