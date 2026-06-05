# typed: strong

module WhopSDK
  module Resources
    class Swaps
      # Executes a swap from an account's wallet. The swap runs asynchronously; poll GET
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
        # The business or user account ID whose wallet should execute the swap.
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

      # Returns the status of an account's in-flight or most recent swap.
      sig do
        params(
          account_id: String,
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(WhopSDK::Models::SwapRetrieveResponse)
      end
      def retrieve(
        # The business or user account ID whose swap status should be returned.
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
