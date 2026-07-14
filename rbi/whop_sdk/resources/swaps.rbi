# typed: strong

module WhopSDK
  module Resources
    # Swaps convert value between supported tokens, chains, or wallet destinations for
    # an account. A swap quote describes the expected output, fees, and approval
    # requirements before you create the swap.
    #
    # Use the Swaps API to quote a conversion, create the swap, list recent swaps, and
    # retrieve status until the transaction completes.
    class Swaps
      # Executes a swap from the account's wallet. Runs asynchronously; poll GET
      # /swaps/{id} for status.
      sig do
        params(
          account_id: String,
          amount: String,
          from_token: String,
          to_token: String,
          from_chain: T.nilable(WhopSDK::SwapCreateParams::FromChain::Variants),
          slippage_bps: T.nilable(Integer),
          to_chain: T.nilable(WhopSDK::SwapCreateParams::ToChain::Variants),
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(WhopSDK::Models::SwapCreateResponse)
      end
      def create(
        # Business or user account ID (biz*\* / user*\*).
        account_id:,
        # Source token amount.
        amount:,
        # Source token contract address or ticker symbol, such as "USDT".
        from_token:,
        # Destination token contract address or ticker symbol, such as "XAUT".
        to_token:,
        # Source chain name or chain ID. Defaults to the source token's chain when
        # omitted.
        from_chain: nil,
        # Maximum slippage tolerance in basis points.
        slippage_bps: nil,
        # Destination chain name or chain ID. Defaults to the destination token's chain
        # when omitted.
        to_chain: nil,
        request_options: {}
      )
      end

      # Returns the status of a specific swap, by the id returned from POST /swaps.
      sig do
        params(
          id: String,
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(WhopSDK::Models::SwapRetrieveResponse)
      end
      def retrieve(
        # Swap ID returned from POST /swaps.
        id,
        request_options: {}
      )
      end

      # Lists the account's swaps. Currently returns the in-flight or most recent swap,
      # so zero or one rows.
      sig do
        params(
          account_id: String,
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(WhopSDK::Models::SwapListResponse)
      end
      def list(
        # Business or user account ID (biz*\* / user*\*).
        account_id:,
        request_options: {}
      )
      end

      # Returns a stateless swap price preview. No funds move and nothing is persisted.
      sig do
        params(
          amount: String,
          from_token: String,
          to_token: String,
          from_address: T.nilable(String),
          from_chain:
            T.nilable(WhopSDK::SwapCreateQuoteParams::FromChain::Variants),
          metadata: T::Hash[Symbol, T.anything],
          slippage_bps: T.nilable(Integer),
          to_address: T.nilable(String),
          to_chain:
            T.nilable(WhopSDK::SwapCreateQuoteParams::ToChain::Variants),
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(WhopSDK::Models::SwapCreateQuoteResponse)
      end
      def create_quote(
        # Source token amount.
        amount:,
        # Source token contract address or ticker symbol, such as "USDT".
        from_token:,
        # Destination token contract address or ticker symbol, such as "XAUT".
        to_token:,
        # Source wallet address used for the quote.
        from_address: nil,
        # Source chain name or chain ID. Defaults to the source token's chain when
        # omitted.
        from_chain: nil,
        # Metadata to include with the quote response.
        metadata: nil,
        # Maximum slippage tolerance in basis points.
        slippage_bps: nil,
        # Destination wallet address used for the quote.
        to_address: nil,
        # Destination chain name or chain ID. Defaults to the destination token's chain
        # when omitted.
        to_chain: nil,
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
