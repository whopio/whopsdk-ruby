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
      # @overload balance(account_id:, request_options: {})
      #
      # @param account_id [String] The business or user account ID whose wallet balance should be returned.
      #
      # @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [WhopSDK::Models::WalletBalanceResponse]
      #
      # @see WhopSDK::Models::WalletBalanceParams
      def balance(params)
        parsed, options = WhopSDK::WalletBalanceParams.dump_request(params)
        query = WhopSDK::Internal::Util.encode_query_params(parsed)
        @client.request(
          method: :get,
          path: "wallets/balance",
          query: query,
          model: WhopSDK::Models::WalletBalanceResponse,
          options: options
        )
      end

      # Some parameter documentations has been truncated, see
      # {WhopSDK::Models::WalletCreateWithdrawalParams} for more details.
      #
      # Withdraws from an account's ledger balance to a linked payout method (bank,
      # card, or external crypto wallet).
      #
      # @overload create_withdrawal(account_id:, amount:, payout_method_id:, asset: nil, request_options: {})
      #
      # @param account_id [String] Query param: The business or user account ID to withdraw from.
      #
      # @param amount [String] Body param: Amount to withdraw, as a decimal string in the given asset (e.g. "10
      #
      # @param payout_method_id [String] Body param: A payout method already linked to the account.
      #
      # @param asset [String] Body param: Currency to withdraw. Defaults to usd.
      #
      # @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [WhopSDK::Models::WalletCreateWithdrawalResponse]
      #
      # @see WhopSDK::Models::WalletCreateWithdrawalParams
      def create_withdrawal(params)
        query_params = [:account_id]
        parsed, options = WhopSDK::WalletCreateWithdrawalParams.dump_request(params)
        query = WhopSDK::Internal::Util.encode_query_params(parsed.slice(*query_params))
        @client.request(
          method: :post,
          path: "wallets/withdrawals",
          query: query,
          body: parsed.except(*query_params),
          model: WhopSDK::Models::WalletCreateWithdrawalResponse,
          options: options
        )
      end

      # Some parameter documentations has been truncated, see
      # {WhopSDK::Models::WalletSendParams} for more details.
      #
      # Sends USDT from an account's wallet to another Whop user or business.
      #
      # @overload send_(account_id:, amount:, to:, request_options: {})
      #
      # @param account_id [String] Query param: The sending account ID.
      #
      # @param amount [String] Body param: USDT amount to send.
      #
      # @param to [String] Body param: Recipient user ID, business account ID, ledger account ID, or email.
      #
      # @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [WhopSDK::Models::WalletSendResponse]
      #
      # @see WhopSDK::Models::WalletSendParams
      def send_(params)
        query_params = [:account_id]
        parsed, options = WhopSDK::WalletSendParams.dump_request(params)
        query = WhopSDK::Internal::Util.encode_query_params(parsed.slice(*query_params))
        @client.request(
          method: :post,
          path: "wallets/send",
          query: query,
          body: parsed.except(*query_params),
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
