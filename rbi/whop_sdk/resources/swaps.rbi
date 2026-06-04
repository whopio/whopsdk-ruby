# typed: strong

module WhopSDK
  module Resources
    class Swaps
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
