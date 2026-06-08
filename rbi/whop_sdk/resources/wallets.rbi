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

      # Returns the account's provisioned EVM and Solana deposit addresses, the networks
      # that auto-credit its balance, and a signed hosted onramp URL. Addresses are
      # provisioned asynchronously — while provisioning, addresses are null and status
      # is "provisioning"; poll until status is "ready".
      sig do
        params(
          account_id: String,
          asset: String,
          network: WhopSDK::WalletDepositAddressParams::Network::OrSymbol,
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(WhopSDK::Models::WalletDepositAddressResponse)
      end
      def deposit_address(
        # The business or user account ID whose deposit address should be returned.
        account_id:,
        # Optional asset symbol the caller intends to deposit (e.g. USDT). Unsupported
        # assets are rejected with a 400 rather than silently ignored.
        asset: nil,
        # Optional network the caller intends to deposit on (e.g. plasma). Unsupported
        # networks are rejected with a 400 rather than silently ignored.
        network: nil,
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
