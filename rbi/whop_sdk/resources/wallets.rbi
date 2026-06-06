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
        # The account to read: a business (biz*) or user (user*) ID, or the ledger
        # account's own ldgr\_ ID.
        account_id,
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
        # The sending account ID.
        account_id,
        # USDT amount to send.
        amount:,
        # Recipient user ID, business account ID, ledger account ID, or email.
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
