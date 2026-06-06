# typed: strong

module WhopSDK
  module Resources
    class Swaps
      # Executes a swap from the account's wallet. Runs asynchronously — poll GET
      # /swaps/{account_id} for status.
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
        # Business or user account ID (biz*\* / user*\*), or the ledger account's own
        # ldgr\_ ID.
        account_id:,
        # Input token amount.
        amount:,
        # Source token contract address.
        from_token:,
        # Destination token contract address.
        to_token:,
        from_chain: nil,
        slippage_bps: nil,
        to_chain: nil,
        request_options: {}
      )
      end

      # Returns the status of the account's in-flight or most recent swap.
      sig do
        params(
          account_id: String,
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(WhopSDK::Models::SwapRetrieveResponse)
      end
      def retrieve(
        # Business or user account ID (biz*\* / user*\*), or the ledger account's own
        # ldgr\_ ID.
        account_id,
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
        # Input token amount.
        amount:,
        # Source token contract address.
        from_token:,
        # Destination token contract address.
        to_token:,
        from_address: nil,
        from_chain: nil,
        metadata: nil,
        slippage_bps: nil,
        to_address: nil,
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
