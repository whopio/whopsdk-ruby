# frozen_string_literal: true

module WhopSDK
  module Models
    # @see WhopSDK::Resources::Swaps#create
    class SwapCreateParams < WhopSDK::Internal::Type::BaseModel
      extend WhopSDK::Internal::Type::RequestParameters::Converter
      include WhopSDK::Internal::Type::RequestParameters

      # @!attribute account_id
      #   Business or user account ID (biz*\* / user*\*).
      #
      #   @return [String]
      required :account_id, String

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

      # @!attribute from_chain
      #   Source chain name or chain ID. Defaults to the source token's chain when
      #   omitted.
      #
      #   @return [String, Integer, nil]
      optional :from_chain, union: -> { WhopSDK::SwapCreateParams::FromChain }, nil?: true

      # @!attribute slippage_bps
      #   Maximum slippage tolerance in basis points.
      #
      #   @return [Integer, nil]
      optional :slippage_bps, Integer, nil?: true

      # @!attribute to_chain
      #   Destination chain name or chain ID. Defaults to the destination token's chain
      #   when omitted.
      #
      #   @return [String, Integer, nil]
      optional :to_chain, union: -> { WhopSDK::SwapCreateParams::ToChain }, nil?: true

      # @!method initialize(account_id:, amount:, from_token:, to_token:, from_chain: nil, slippage_bps: nil, to_chain: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {WhopSDK::Models::SwapCreateParams} for more details.
      #
      #   @param account_id [String] Business or user account ID (biz*\* / user*\*).
      #
      #   @param amount [String] Source token amount.
      #
      #   @param from_token [String] Source token contract address or ticker symbol, such as "USDT".
      #
      #   @param to_token [String] Destination token contract address or ticker symbol, such as "XAUT".
      #
      #   @param from_chain [String, Integer, nil] Source chain name or chain ID. Defaults to the source token's chain when omitted
      #
      #   @param slippage_bps [Integer, nil] Maximum slippage tolerance in basis points.
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
