# frozen_string_literal: true

module WhopSDK
  module Resources
    class Swaps
      # Returns a stateless swap price preview. No funds move and nothing is persisted.
      #
      # @overload create_quote(amount:, from_token:, to_token:, from_address: nil, from_chain: nil, metadata: nil, slippage_bps: nil, to_address: nil, to_chain: nil, request_options: {})
      #
      # @param amount [String] Input token amount.
      #
      # @param from_token [String] Source token contract address.
      #
      # @param to_token [String] Destination token contract address.
      #
      # @param from_address [String, nil]
      #
      # @param from_chain [String, Integer, nil]
      #
      # @param metadata [Hash{Symbol=>Object}]
      #
      # @param slippage_bps [Integer, nil]
      #
      # @param to_address [String, nil]
      #
      # @param to_chain [String, Integer, nil]
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
