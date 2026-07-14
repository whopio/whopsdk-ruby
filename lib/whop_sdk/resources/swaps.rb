# frozen_string_literal: true

module WhopSDK
  module Resources
    # Swaps convert value between supported tokens, chains, or wallet destinations for
    # an account. A swap quote describes the expected output, fees, and approval
    # requirements before you create the swap.
    #
    # Use the Swaps API to quote a conversion, create the swap, list recent swaps, and
    # retrieve status until the transaction completes.
    class Swaps
      # Some parameter documentations has been truncated, see
      # {WhopSDK::Models::SwapCreateParams} for more details.
      #
      # Executes a swap from the account's wallet. Runs asynchronously; poll GET
      # /swaps/{id} for status.
      #
      # @overload create(account_id:, amount:, from_token:, to_token:, from_chain: nil, slippage_bps: nil, to_chain: nil, request_options: {})
      #
      # @param account_id [String] Business or user account ID (biz*\* / user*\*).
      #
      # @param amount [String] Source token amount.
      #
      # @param from_token [String] Source token contract address or ticker symbol, such as "USDT".
      #
      # @param to_token [String] Destination token contract address or ticker symbol, such as "XAUT".
      #
      # @param from_chain [String, Integer, nil] Source chain name or chain ID. Defaults to the source token's chain when omitted
      #
      # @param slippage_bps [Integer, nil] Maximum slippage tolerance in basis points.
      #
      # @param to_chain [String, Integer, nil] Destination chain name or chain ID. Defaults to the destination token's chain wh
      #
      # @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [WhopSDK::Models::SwapCreateResponse]
      #
      # @see WhopSDK::Models::SwapCreateParams
      def create(params)
        parsed, options = WhopSDK::SwapCreateParams.dump_request(params)
        @client.request(
          method: :post,
          path: "swaps",
          body: parsed,
          model: WhopSDK::Models::SwapCreateResponse,
          options: options
        )
      end

      # Returns the status of a specific swap, by the id returned from POST /swaps.
      #
      # @overload retrieve(id, request_options: {})
      #
      # @param id [String] Swap ID returned from POST /swaps.
      #
      # @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [WhopSDK::Models::SwapRetrieveResponse]
      #
      # @see WhopSDK::Models::SwapRetrieveParams
      def retrieve(id, params = {})
        @client.request(
          method: :get,
          path: ["swaps/%1$s", id],
          model: WhopSDK::Models::SwapRetrieveResponse,
          options: params[:request_options]
        )
      end

      # Lists the account's swaps. Currently returns the in-flight or most recent swap,
      # so zero or one rows.
      #
      # @overload list(account_id:, request_options: {})
      #
      # @param account_id [String] Business or user account ID (biz*\* / user*\*).
      #
      # @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [WhopSDK::Models::SwapListResponse]
      #
      # @see WhopSDK::Models::SwapListParams
      def list(params)
        parsed, options = WhopSDK::SwapListParams.dump_request(params)
        query = WhopSDK::Internal::Util.encode_query_params(parsed)
        @client.request(
          method: :get,
          path: "swaps",
          query: query,
          model: WhopSDK::Models::SwapListResponse,
          options: options
        )
      end

      # Some parameter documentations has been truncated, see
      # {WhopSDK::Models::SwapCreateQuoteParams} for more details.
      #
      # Returns a stateless swap price preview. No funds move and nothing is persisted.
      #
      # @overload create_quote(amount:, from_token:, to_token:, from_address: nil, from_chain: nil, metadata: nil, slippage_bps: nil, to_address: nil, to_chain: nil, request_options: {})
      #
      # @param amount [String] Source token amount.
      #
      # @param from_token [String] Source token contract address or ticker symbol, such as "USDT".
      #
      # @param to_token [String] Destination token contract address or ticker symbol, such as "XAUT".
      #
      # @param from_address [String, nil] Source wallet address used for the quote.
      #
      # @param from_chain [String, Integer, nil] Source chain name or chain ID. Defaults to the source token's chain when omitted
      #
      # @param metadata [Hash{Symbol=>Object}] Metadata to include with the quote response.
      #
      # @param slippage_bps [Integer, nil] Maximum slippage tolerance in basis points.
      #
      # @param to_address [String, nil] Destination wallet address used for the quote.
      #
      # @param to_chain [String, Integer, nil] Destination chain name or chain ID. Defaults to the destination token's chain wh
      #
      # @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [WhopSDK::Models::SwapCreateQuoteResponse]
      #
      # @see WhopSDK::Models::SwapCreateQuoteParams
      def create_quote(params)
        parsed, options = WhopSDK::SwapCreateQuoteParams.dump_request(params)
        @client.request(
          method: :post,
          path: "swaps/quote",
          body: parsed,
          model: WhopSDK::Models::SwapCreateQuoteResponse,
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
