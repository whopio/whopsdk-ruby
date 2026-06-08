# typed: strong

module WhopSDK
  module Resources
    class Wallets
      # Lists every crypto wallet linked to the authenticated resource.
      sig do
        params(request_options: WhopSDK::RequestOptions::OrHash).returns(
          WhopSDK::Models::WalletListResponse
        )
      end
      def list(request_options: {})
      end

      # Returns per-token balances held in an account's wallet.
      sig do
        params(
          account_id: String,
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(WhopSDK::Models::WalletBalanceResponse)
      end
      def balance(
        # The business or user account ID whose wallet balance should be returned.
        account_id:,
        request_options: {}
      )
      end

      # Withdraws from an account's ledger balance to a linked payout method (bank,
      # card, or external crypto wallet).
      sig do
        params(
          account_id: String,
          amount: String,
          payout_method_id: String,
          asset: String,
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(WhopSDK::Models::WalletCreateWithdrawalResponse)
      end
      def create_withdrawal(
        # Query param: The business or user account ID to withdraw from.
        account_id:,
        # Body param: Amount to withdraw, as a decimal string in the given asset (e.g.
        # "100.00").
        amount:,
        # Body param: A payout method already linked to the account.
        payout_method_id:,
        # Body param: Currency to withdraw. Defaults to usd.
        asset: nil,
        request_options: {}
      )
      end

      # Sends USDT from an account's wallet to another Whop user or business.
      sig do
        params(
          account_id: String,
          amount: String,
          to: String,
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(WhopSDK::Models::WalletSendResponse)
      end
      def send_(
        # Query param: The sending account ID.
        account_id:,
        # Body param: USDT amount to send.
        amount:,
        # Body param: Recipient user ID, business account ID, ledger account ID, or email.
        to:,
        request_options: {}
      )
      end

      # @api private
      sig { params(client: WhopSDK::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end
