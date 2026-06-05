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
