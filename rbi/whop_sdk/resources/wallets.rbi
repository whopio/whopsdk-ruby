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

      # Produces a personal_sign or EIP-712 signature from the account's wallet. Nothing
      # is broadcast on-chain.
      sig do
        params(
          account_id: String,
          chain_id: Integer,
          message: T.anything,
          type: WhopSDK::WalletSignMessageParams::Type::OrSymbol,
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(WhopSDK::Models::WalletSignMessageResponse)
      end
      def sign_message(
        # The business or user account ID whose wallet signs.
        account_id,
        # EIP-155 chain ID the signature is intended for (e.g. 9745 for Plasma).
        chain_id:,
        # A UTF-8 string for personal_sign, or an EIP-712 object (domain, types,
        # primaryType, message) for typed_data.
        message:,
        # Signature scheme.
        type:,
        request_options: {}
      )
      end

      # Signs and broadcasts a contract call from the account's wallet. The returned
      # tx_hash is the source of truth.
      sig do
        params(
          account_id: String,
          chain_id: Integer,
          to: String,
          data: String,
          value: String,
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(WhopSDK::Models::WalletSignTransactionResponse)
      end
      def sign_transaction(
        # The business or user account ID whose wallet signs and broadcasts.
        account_id,
        # EIP-155 chain ID to broadcast on (e.g. 9745 for Plasma).
        chain_id:,
        # Target contract or recipient address (0x...).
        to:,
        # Hex-encoded calldata. Defaults to 0x (plain transfer).
        data: nil,
        # Hex-encoded wei value. Defaults to 0x0.
        value: nil,
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
