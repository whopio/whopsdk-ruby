# typed: strong

module WhopSDK
  module Models
    class SocialAccountConnectResponse < WhopSDK::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            WhopSDK::Models::SocialAccountConnectResponse,
            WhopSDK::Internal::AnyHash
          )
        end

      # The OAuth authorization URL to redirect the user to.
      sig { returns(String) }
      attr_accessor :authorize_url

      sig { params(authorize_url: String).returns(T.attached_class) }
      def self.new(
        # The OAuth authorization URL to redirect the user to.
        authorize_url:
      )
      end

      sig { override.returns({ authorize_url: String }) }
      def to_hash
      end
    end
  end
end
