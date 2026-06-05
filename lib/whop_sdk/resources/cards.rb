# frozen_string_literal: true

module WhopSDK
  module Resources
    class Cards
      # Some parameter documentations has been truncated, see
      # {WhopSDK::Models::CardCreateParams} for more details.
      #
      # Issues a new virtual card for the account.
      #
      # @overload create(account_id:, name: nil, spend_limit: nil, spend_limit_frequency: nil, transaction_limit: nil, request_options: {})
      #
      # @param account_id [String] Query param: The business or user account ID to issue the card for.
      #
      # @param name [String] Body param: Display name for the card.
      #
      # @param spend_limit [String] Body param: Recurring spend limit in dollars (requires spend_limit_frequency).
      #
      # @param spend_limit_frequency [Symbol, WhopSDK::Models::CardCreateParams::SpendLimitFrequency] Body param
      #
      # @param transaction_limit [String] Body param: Per-authorization limit in dollars (mutually exclusive with spend_li
      #
      # @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [WhopSDK::Models::Card]
      #
      # @see WhopSDK::Models::CardCreateParams
      def create(params)
        query_params = [:account_id]
        parsed, options = WhopSDK::CardCreateParams.dump_request(params)
        query = WhopSDK::Internal::Util.encode_query_params(parsed.slice(*query_params))
        @client.request(
          method: :post,
          path: "cards",
          query: query,
          body: parsed.except(*query_params),
          model: WhopSDK::Card,
          options: options
        )
      end

      # Returns a single card's lifecycle details.
      #
      # @overload retrieve(id, request_options: {})
      #
      # @param id [String] The card ID.
      #
      # @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [WhopSDK::Models::Card]
      #
      # @see WhopSDK::Models::CardRetrieveParams
      def retrieve(id, params = {})
        @client.request(
          method: :get,
          path: ["cards/%1$s", id],
          model: WhopSDK::Card,
          options: params[:request_options]
        )
      end

      # Updates a card's name or spending limits.
      #
      # @overload update(id, name: nil, spend_limit: nil, spend_limit_frequency: nil, transaction_limit: nil, request_options: {})
      #
      # @param id [String] The card ID.
      #
      # @param name [String]
      #
      # @param spend_limit [String]
      #
      # @param spend_limit_frequency [Symbol, WhopSDK::Models::CardUpdateParams::SpendLimitFrequency]
      #
      # @param transaction_limit [String]
      #
      # @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [WhopSDK::Models::Card]
      #
      # @see WhopSDK::Models::CardUpdateParams
      def update(id, params = {})
        parsed, options = WhopSDK::CardUpdateParams.dump_request(params)
        @client.request(
          method: :patch,
          path: ["cards/%1$s", id],
          body: parsed,
          model: WhopSDK::Card,
          options: options
        )
      end

      # Lists every issued card for the account.
      #
      # @overload list(account_id:, request_options: {})
      #
      # @param account_id [String] The business or user account ID that owns the cards.
      #
      # @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [WhopSDK::Models::CardListResponse]
      #
      # @see WhopSDK::Models::CardListParams
      def list(params)
        parsed, options = WhopSDK::CardListParams.dump_request(params)
        query = WhopSDK::Internal::Util.encode_query_params(parsed)
        @client.request(
          method: :get,
          path: "cards",
          query: query,
          model: WhopSDK::Models::CardListResponse,
          options: options
        )
      end

      # Returns the funding balance of the card's collateral account.
      #
      # @overload balance(id, request_options: {})
      #
      # @param id [String] The card ID.
      #
      # @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [WhopSDK::Models::CardAccountBalance]
      #
      # @see WhopSDK::Models::CardBalanceParams
      def balance(id, params = {})
        @client.request(
          method: :get,
          path: ["cards/%1$s/balance", id],
          model: WhopSDK::CardAccountBalance,
          options: params[:request_options]
        )
      end

      # Lists transactions for a single card, newest first.
      #
      # @overload card_transactions(id, created_after: nil, created_before: nil, page: nil, per: nil, status: nil, request_options: {})
      #
      # @param id [String] The card ID.
      #
      # @param created_after [String] Only return transactions created at or after this ISO 8601 timestamp.
      #
      # @param created_before [String] Only return transactions created strictly before this ISO 8601 timestamp.
      #
      # @param page [Integer] The page number to retrieve.
      #
      # @param per [Integer] The number of transactions to return per page. Capped at 50.
      #
      # @param status [Symbol, WhopSDK::Models::CardCardTransactionsParams::Status] Filter to transactions with this status.
      #
      # @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [WhopSDK::Models::CardTransactionList]
      #
      # @see WhopSDK::Models::CardCardTransactionsParams
      def card_transactions(id, params = {})
        parsed, options = WhopSDK::CardCardTransactionsParams.dump_request(params)
        query = WhopSDK::Internal::Util.encode_query_params(parsed)
        @client.request(
          method: :get,
          path: ["cards/%1$s/transactions", id],
          query: query,
          model: WhopSDK::CardTransactionList,
          options: options
        )
      end

      # Returns the aggregate cashback summary. NOTE: the figures are account-level —
      # cashback is earned and paid out against the shared collateral account, so they
      # cover all of the account's cards, not just this one.
      #
      # @overload cashback(id, request_options: {})
      #
      # @param id [String] The card ID.
      #
      # @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [WhopSDK::Models::CardCashback]
      #
      # @see WhopSDK::Models::CardCashbackParams
      def cashback(id, params = {})
        @client.request(
          method: :get,
          path: ["cards/%1$s/cashback", id],
          model: WhopSDK::CardCashback,
          options: params[:request_options]
        )
      end

      # Some parameter documentations has been truncated, see
      # {WhopSDK::Models::CardDailySpendParams} for more details.
      #
      # Returns per-day spend totals for the last 30 days. NOTE: the aggregate is
      # account-level — every card on an account shares one collateral account, so the
      # totals cover all of the account's cards, not just this one.
      #
      # @overload daily_spend(id, timezone: nil, request_options: {})
      #
      # @param id [String] The card ID.
      #
      # @param timezone [String] IANA timezone (e.g. America/New_York) the daily buckets are computed in. Default
      #
      # @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [WhopSDK::Models::CardDailySpend]
      #
      # @see WhopSDK::Models::CardDailySpendParams
      def daily_spend(id, params = {})
        parsed, options = WhopSDK::CardDailySpendParams.dump_request(params)
        query = WhopSDK::Internal::Util.encode_query_params(parsed)
        @client.request(
          method: :get,
          path: ["cards/%1$s/daily-spend", id],
          query: query,
          model: WhopSDK::CardDailySpend,
          options: options
        )
      end

      # Permanently cancels the card. This is irreversible.
      #
      # @overload deactivate(id, request_options: {})
      #
      # @param id [String]
      # @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [WhopSDK::Models::Card]
      #
      # @see WhopSDK::Models::CardDeactivateParams
      def deactivate(id, params = {})
        @client.request(
          method: :post,
          path: ["cards/%1$s/deactivate", id],
          model: WhopSDK::Card,
          options: params[:request_options]
        )
      end

      # Returns the on-chain deposit address used to fund the card's card account.
      #
      # @overload deposit_address(id, request_options: {})
      #
      # @param id [String] The card ID.
      #
      # @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [WhopSDK::Models::CardDepositAddress]
      #
      # @see WhopSDK::Models::CardDepositAddressParams
      def deposit_address(id, params = {})
        @client.request(
          method: :get,
          path: ["cards/%1$s/deposit-address", id],
          model: WhopSDK::CardDepositAddress,
          options: params[:request_options]
        )
      end

      # Freezes (locks) the card so it can no longer authorize.
      #
      # @overload freeze_(id, request_options: {})
      #
      # @param id [String]
      # @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [WhopSDK::Models::Card]
      #
      # @see WhopSDK::Models::CardFreezeParams
      def freeze_(id, params = {})
        @client.request(
          method: :post,
          path: ["cards/%1$s/freeze", id],
          model: WhopSDK::Card,
          options: params[:request_options]
        )
      end

      # Lists card transactions across every card on the account, newest first.
      #
      # @overload transactions(account_id:, card_id: nil, created_after: nil, created_before: nil, page: nil, per: nil, status: nil, request_options: {})
      #
      # @param account_id [String] The business or user account ID that owns the cards.
      #
      # @param card_id [String] Filter to a single card on the account, by card ID.
      #
      # @param created_after [String] Only return transactions created at or after this ISO 8601 timestamp.
      #
      # @param created_before [String] Only return transactions created strictly before this ISO 8601 timestamp.
      #
      # @param page [Integer] The page number to retrieve.
      #
      # @param per [Integer] The number of transactions to return per page. Capped at 50.
      #
      # @param status [Symbol, WhopSDK::Models::CardTransactionsParams::Status] Filter to transactions with this status.
      #
      # @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [WhopSDK::Models::CardTransactionList]
      #
      # @see WhopSDK::Models::CardTransactionsParams
      def transactions(params)
        parsed, options = WhopSDK::CardTransactionsParams.dump_request(params)
        query = WhopSDK::Internal::Util.encode_query_params(parsed)
        @client.request(
          method: :get,
          path: "cards/transactions",
          query: query,
          model: WhopSDK::CardTransactionList,
          options: options
        )
      end

      # Unfreezes (unlocks) a frozen card.
      #
      # @overload unfreeze(id, request_options: {})
      #
      # @param id [String]
      # @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [WhopSDK::Models::Card]
      #
      # @see WhopSDK::Models::CardUnfreezeParams
      def unfreeze(id, params = {})
        @client.request(
          method: :post,
          path: ["cards/%1$s/unfreeze", id],
          model: WhopSDK::Card,
          options: params[:request_options]
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
