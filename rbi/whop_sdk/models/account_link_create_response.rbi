# typed: strong

module WhopSDK
  module Models
    class AccountLinkCreateResponse < WhopSDK::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            WhopSDK::Models::AccountLinkCreateResponse,
            WhopSDK::Internal::AnyHash
          )
        end

      # The expiration timestamp of the url.
      sig { returns(Time) }
      attr_accessor :expires_at

      # The URL to navigate the user to.
      sig { returns(String) }
      attr_accessor :url

      # An object representing a url that a user can be directed to to access their
      # account.
      sig { params(expires_at: Time, url: String).returns(T.attached_class) }
      def self.new(
        # The expiration timestamp of the url.
        expires_at:,
        # The URL to navigate the user to.
        url:
      )
      end

      sig { override.returns({ expires_at: Time, url: String }) }
      def to_hash
      end
    end
  end
end
