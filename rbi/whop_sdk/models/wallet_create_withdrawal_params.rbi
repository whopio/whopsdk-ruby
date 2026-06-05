# typed: strong

module WhopSDK
  module Models
    class WalletCreateWithdrawalParams < WhopSDK::Internal::Type::BaseModel
      extend WhopSDK::Internal::Type::RequestParameters::Converter
      include WhopSDK::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            WhopSDK::WalletCreateWithdrawalParams,
            WhopSDK::Internal::AnyHash
          )
        end

      # The business or user account ID to withdraw from.
      sig { returns(String) }
      attr_accessor :account_id

      # Amount to withdraw, as a decimal string in the given asset (e.g. "100.00").
      sig { returns(String) }
      attr_accessor :amount

      # A payout method already linked to the account.
      sig { returns(String) }
      attr_accessor :payout_method_id

      # Currency to withdraw. Defaults to usd.
      sig { returns(T.nilable(String)) }
      attr_reader :asset

      sig { params(asset: String).void }
      attr_writer :asset

      sig do
        params(
          account_id: String,
          amount: String,
          payout_method_id: String,
          asset: String,
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # The business or user account ID to withdraw from.
        account_id:,
        # Amount to withdraw, as a decimal string in the given asset (e.g. "100.00").
        amount:,
        # A payout method already linked to the account.
        payout_method_id:,
        # Currency to withdraw. Defaults to usd.
        asset: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            account_id: String,
            amount: String,
            payout_method_id: String,
            asset: String,
            request_options: WhopSDK::RequestOptions
          }
        )
      end
      def to_hash
      end
    end
  end
end
