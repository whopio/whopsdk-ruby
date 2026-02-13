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

      # The signed JWT access token string to include in API request Authorization
      # headers.
      sig { returns(String) }
      attr_accessor :token

      # The timestamp after which this access token is no longer valid and must be
      # refreshed.
      sig { returns(Time) }
      attr_accessor :expires_at

      # A short-lived access token used to authenticate API requests on behalf of a
      # user.
      sig { params(token: String, expires_at: Time).returns(T.attached_class) }
      def self.new(
        # The signed JWT access token string to include in API request Authorization
        # headers.
        token:,
        # The timestamp after which this access token is no longer valid and must be
        # refreshed.
        expires_at:
      )
      end

      sig { override.returns({ token: String, expires_at: Time }) }
      def to_hash
      end
    end
  end
end
