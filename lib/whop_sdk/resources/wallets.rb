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

      # Returns the account's wallet address for receiving crypto, plus the EVM networks
      # that share that address.
      #
      # @overload deposit_address(account_id, request_options: {})
      #
      # @param account_id [String] The business or user account ID whose deposit address should be returned.
      #
      # @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [WhopSDK::Models::WalletDepositAddressResponse]
      #
      # @see WhopSDK::Models::WalletDepositAddressParams
      def deposit_address(account_id, params = {})
        @client.request(
          method: :get,
          path: ["wallets/%1$s/deposit-address", account_id],
          model: WhopSDK::Models::WalletDepositAddressResponse,
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

      # @api private
      #
      # @param client [WhopSDK::Client]
      def initialize(client:)
        @client = client
      end
    end
  end
end
