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

      # The timestamp after which this account link URL is no longer valid.
      sig { returns(Time) }
      attr_accessor :expires_at

      # The temporary URL to redirect the user to for account access. Expires at the
      # time specified by expires_at.
      sig { returns(String) }
      attr_accessor :url

      # A temporary, time-limited URL that grants a user access to an external account
      # management page.
      sig { params(expires_at: Time, url: String).returns(T.attached_class) }
      def self.new(
        # The timestamp after which this account link URL is no longer valid.
        expires_at:,
        # The temporary URL to redirect the user to for account access. Expires at the
        # time specified by expires_at.
        url:
      )
      end

      sig { override.returns({ expires_at: Time, url: String }) }
      def to_hash
      end
    end
  end
end
