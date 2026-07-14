# frozen_string_literal: true

module WhopSDK
  module Models
    # @see WhopSDK::Resources::Swaps#create_quote
    class SwapCreateQuoteParams < WhopSDK::Internal::Type::BaseModel
      extend WhopSDK::Internal::Type::RequestParameters::Converter
      include WhopSDK::Internal::Type::RequestParameters

      # @!attribute amount
      #   Source token amount.
      #
      #   @return [String]
      required :amount, String

      # @!attribute from_token
      #   Source token contract address or ticker symbol, such as "USDT".
      #
      #   @return [String]
      required :from_token, String

      # @!attribute to_token
      #   Destination token contract address or ticker symbol, such as "XAUT".
      #
      #   @return [String]
      required :to_token, String

      # @!attribute from_address
      #   Source wallet address used for the quote.
      #
      #   @return [String, nil]
      optional :from_address, String, nil?: true

      # @!attribute from_chain
      #   Source chain name or chain ID. Defaults to the source token's chain when
      #   omitted.
      #
      #   @return [String, Integer, nil]
      optional :from_chain, union: -> { WhopSDK::SwapCreateQuoteParams::FromChain }, nil?: true

      # @!attribute metadata
      #   Metadata to include with the quote response.
      #
      #   @return [Hash{Symbol=>Object}, nil]
      optional :metadata, WhopSDK::Internal::Type::HashOf[WhopSDK::Internal::Type::Unknown]

      # @!attribute slippage_bps
      #   Maximum slippage tolerance in basis points.
      #
      #   @return [Integer, nil]
      optional :slippage_bps, Integer, nil?: true

      # @!attribute to_address
      #   Destination wallet address used for the quote.
      #
      #   @return [String, nil]
      optional :to_address, String, nil?: true

      # @!attribute to_chain
      #   Destination chain name or chain ID. Defaults to the destination token's chain
      #   when omitted.
      #
      #   @return [String, Integer, nil]
      optional :to_chain, union: -> { WhopSDK::SwapCreateQuoteParams::ToChain }, nil?: true

      # @!method initialize(amount:, from_token:, to_token:, from_address: nil, from_chain: nil, metadata: nil, slippage_bps: nil, to_address: nil, to_chain: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {WhopSDK::Models::SwapCreateQuoteParams} for more details.
      #
      #   @param amount [String] Source token amount.
      #
      #   @param from_token [String] Source token contract address or ticker symbol, such as "USDT".
      #
      #   @param to_token [String] Destination token contract address or ticker symbol, such as "XAUT".
      #
      #   @param from_address [String, nil] Source wallet address used for the quote.
      #
      #   @param from_chain [String, Integer, nil] Source chain name or chain ID. Defaults to the source token's chain when omitted
      #
      #   @param metadata [Hash{Symbol=>Object}] Metadata to include with the quote response.
      #
      #   @param slippage_bps [Integer, nil] Maximum slippage tolerance in basis points.
      #
      #   @param to_address [String, nil] Destination wallet address used for the quote.
      #
      #   @param to_chain [String, Integer, nil] Destination chain name or chain ID. Defaults to the destination token's chain wh
      #
      #   @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}]

      # Source chain name or chain ID. Defaults to the source token's chain when
      # omitted.
      module FromChain
        extend WhopSDK::Internal::Type::Union

        variant String

        variant Integer

        # @!method self.variants
        #   @return [Array(String, Integer)]
      end

      # Destination chain name or chain ID. Defaults to the destination token's chain
      # when omitted.
      module ToChain
        extend WhopSDK::Internal::Type::Union

        variant String

        variant Integer

        # @!method self.variants
        #   @return [Array(String, Integer)]
      end
    end
  end
end
