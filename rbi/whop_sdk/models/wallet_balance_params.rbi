# typed: strong

module WhopSDK
  module Models
    class WalletBalanceParams < WhopSDK::Internal::Type::BaseModel
      extend WhopSDK::Internal::Type::RequestParameters::Converter
      include WhopSDK::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(WhopSDK::WalletBalanceParams, WhopSDK::Internal::AnyHash)
        end

      sig { returns(String) }
      attr_accessor :account_id

      sig do
        params(
          account_id: String,
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(account_id:, request_options: {})
      end

      sig do
        override.returns(
          { account_id: String, request_options: WhopSDK::RequestOptions }
        )
      end
      def to_hash
      end
    end
  end
end
