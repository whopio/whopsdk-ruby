# typed: strong

module WhopSDK
  module Models
    class WalletSendParams < WhopSDK::Internal::Type::BaseModel
      extend WhopSDK::Internal::Type::RequestParameters::Converter
      include WhopSDK::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(WhopSDK::WalletSendParams, WhopSDK::Internal::AnyHash)
        end

      sig { returns(String) }
      attr_accessor :account_id

      # USDT amount to send.
      sig { returns(String) }
      attr_accessor :amount

      # Recipient user ID, business account ID, ledger account ID, or email.
      sig { returns(String) }
      attr_accessor :to

      sig do
        params(
          account_id: String,
          amount: String,
          to: String,
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        account_id:,
        # USDT amount to send.
        amount:,
        # Recipient user ID, business account ID, ledger account ID, or email.
        to:,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            account_id: String,
            amount: String,
            to: String,
            request_options: WhopSDK::RequestOptions
          }
        )
      end
      def to_hash
      end
    end
  end
end
