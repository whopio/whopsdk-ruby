# typed: strong

module WhopSDK
  module Models
    class UserRetrieveParams < WhopSDK::Internal::Type::BaseModel
      extend WhopSDK::Internal::Type::RequestParameters::Converter
      include WhopSDK::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(WhopSDK::UserRetrieveParams, WhopSDK::Internal::AnyHash)
        end

      sig { returns(String) }
      attr_accessor :id

      # When set, returns the user's account-specific profile overrides for this
      # account.
      sig { returns(T.nilable(String)) }
      attr_reader :account_id

      sig { params(account_id: String).void }
      attr_writer :account_id

      sig do
        params(
          id: String,
          account_id: String,
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        id:,
        # When set, returns the user's account-specific profile overrides for this
        # account.
        account_id: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            id: String,
            account_id: String,
            request_options: WhopSDK::RequestOptions
          }
        )
      end
      def to_hash
      end
    end
  end
end
