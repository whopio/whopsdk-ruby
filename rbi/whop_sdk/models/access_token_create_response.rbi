# typed: strong

module WhopSDK
  module Models
    class AccessTokenCreateResponse < WhopSDK::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            WhopSDK::Models::AccessTokenCreateResponse,
            WhopSDK::Internal::AnyHash
          )
        end

      # The JWT access token string.
      sig { returns(String) }
      attr_accessor :token

      # The expiration timestamp of the access token.
      sig { returns(Time) }
      attr_accessor :expires_at

      # An object representing an access token used for authenticating API requests.
      sig { params(token: String, expires_at: Time).returns(T.attached_class) }
      def self.new(
        # The JWT access token string.
        token:,
        # The expiration timestamp of the access token.
        expires_at:
      )
      end

      sig { override.returns({ token: String, expires_at: Time }) }
      def to_hash
      end
    end
  end
end
