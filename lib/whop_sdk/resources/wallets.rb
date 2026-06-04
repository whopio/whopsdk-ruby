# frozen_string_literal: true

module WhopSDK
  module Resources
    class Wallets
      # Lists every crypto wallet linked to the authenticated resource.
      #
      # @overload list(request_options: {})
      #
      # @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [WhopSDK::Models::WalletListResponse]
      #
      # @see WhopSDK::Models::WalletListParams
      def list(params = {})
        @client.request(
          method: :get,
          path: "wallets",
          model: WhopSDK::Models::WalletListResponse,
          options: params[:request_options]
        )
      end

      # Returns per-token balances held in an account's wallet.
      #
      # @overload balance(account_id, request_options: {})
      #
      # @param account_id [String] The business or user account ID whose wallet balance should be returned.
      #
      # @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [WhopSDK::Models::WalletBalanceResponse]
      #
      # @see WhopSDK::Models::WalletBalanceParams
      def balance(account_id, params = {})
        @client.request(
          method: :get,
          path: ["wallets/%1$s/balance", account_id],
          model: WhopSDK::Models::WalletBalanceResponse,
          options: params[:request_options]
        )
      end

      # Sends USDT from an account's wallet to another Whop user or business.
      #
      # @overload send_(account_id, amount:, to:, request_options: {})
      #
      # @param account_id [String] The sending account ID.
      #
      # @param amount [String] USDT amount to send.
      #
      # @param to [String] Recipient user ID, business account ID, ledger account ID, or email.
      #
      # @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [WhopSDK::Models::WalletSendResponse]
      #
      # @see WhopSDK::Models::WalletSendParams
      def send_(account_id, params)
        parsed, options = WhopSDK::WalletSendParams.dump_request(params)
        @client.request(
          method: :post,
          path: ["wallets/%1$s/sends", account_id],
          body: parsed,
          model: WhopSDK::Models::WalletSendResponse,
          options: options
        )
      end

      # Some parameter documentations has been truncated, see
      # {WhopSDK::Models::WalletSignMessageParams} for more details.
      #
      # Produces a personal_sign or EIP-712 signature from the account's wallet. Nothing
      # is broadcast on-chain.
      #
      # @overload sign_message(account_id:, chain_id:, message:, type:, request_options: {})
      #
      # @param account_id [String] Query param: The business or user account ID whose wallet signs.
      #
      # @param chain_id [Integer] Body param: EIP-155 chain ID the signature is intended for (e.g. 9745 for Plasma
      #
      # @param message [Object] Body param: A UTF-8 string for personal_sign, or an EIP-712 object (domain, type
      #
      # @param type [Symbol, WhopSDK::Models::WalletSignMessageParams::Type] Body param: Signature scheme.
      #
      # @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [WhopSDK::Models::WalletSignMessageResponse]
      #
      # @see WhopSDK::Models::WalletSignMessageParams
      def sign_message(params)
        query_params = [:account_id]
        parsed, options = WhopSDK::WalletSignMessageParams.dump_request(params)
        query = WhopSDK::Internal::Util.encode_query_params(parsed.slice(*query_params))
        @client.request(
          method: :post,
          path: "wallets/sign-message",
          query: query,
          body: parsed.except(*query_params),
          model: WhopSDK::Models::WalletSignMessageResponse,
          options: options
        )
      end

      # Some parameter documentations has been truncated, see
      # {WhopSDK::Models::WalletSignTransactionParams} for more details.
      #
      # Signs and broadcasts a contract call from the account's wallet. The returned
      # tx_hash is the source of truth.
      #
      # @overload sign_transaction(account_id:, chain_id:, to:, data: nil, idempotency_key: nil, value: nil, request_options: {})
      #
      # @param account_id [String] Query param: The business or user account ID whose wallet signs and broadcasts.
      #
      # @param chain_id [Integer] Body param: EIP-155 chain ID to broadcast on (e.g. 9745 for Plasma).
      #
      # @param to [String] Body param: Target contract or recipient address (0x...).
      #
      # @param data [String] Body param: Hex-encoded calldata. Defaults to 0x (plain transfer).
      #
      # @param idempotency_key [String] Body param: Optional retry-safety key (max 256 chars). Retried requests with the
      #
      # @param value [String] Body param: Hex-encoded wei value. Defaults to 0x0.
      #
      # @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [WhopSDK::Models::WalletSignTransactionResponse]
      #
      # @see WhopSDK::Models::WalletSignTransactionParams
      def sign_transaction(params)
        query_params = [:account_id]
        parsed, options = WhopSDK::WalletSignTransactionParams.dump_request(params)
        query = WhopSDK::Internal::Util.encode_query_params(parsed.slice(*query_params))
        @client.request(
          method: :post,
          path: "wallets/sign-transaction",
          query: query,
          body: parsed.except(*query_params),
          model: WhopSDK::Models::WalletSignTransactionResponse,
          options: options
        )
      end

      # @api private
      #
      # @param client [WhopSDK::Client]
      def initialize(client:)
        @client = client
      end
    end
  end
end
