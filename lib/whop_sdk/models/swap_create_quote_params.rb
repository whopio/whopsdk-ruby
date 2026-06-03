# frozen_string_literal: true

module WhopSDK
  module Models
    # @see WhopSDK::Resources::Swaps#create_quote
    class SwapCreateQuoteParams < WhopSDK::Internal::Type::BaseModel
      extend WhopSDK::Internal::Type::RequestParameters::Converter
      include WhopSDK::Internal::Type::RequestParameters

      # @!attribute amount
      #   Input token amount.
      #
      #   @return [String]
      required :amount, String

      # @!attribute from_token
      #   Source token contract address.
      #
      #   @return [String]
      required :from_token, String

      # @!attribute to_token
      #   Destination token contract address.
      #
      #   @return [String]
      required :to_token, String

      # @!attribute account_id
      #   Caller-owned account whose wallet address should be used.
      #
      #   @return [String, nil]
      optional :account_id, String, nil?: true

      # @!attribute from_address
      #
      #   @return [String, nil]
      optional :from_address, String, nil?: true

      # @!attribute from_chain
      #
      #   @return [String, Integer, nil]
      optional :from_chain, union: -> { WhopSDK::SwapCreateQuoteParams::FromChain }, nil?: true

      # @!attribute metadata
      #
      #   @return [Hash{Symbol=>Object}, nil]
      optional :metadata, WhopSDK::Internal::Type::HashOf[WhopSDK::Internal::Type::Unknown]

      # @!attribute slippage_bps
      #
      #   @return [Integer, nil]
      optional :slippage_bps, Integer, nil?: true

      # @!attribute to_address
      #
      #   @return [String, nil]
      optional :to_address, String, nil?: true

      # @!attribute to_chain
      #
      #   @return [String, Integer, nil]
      optional :to_chain, union: -> { WhopSDK::SwapCreateQuoteParams::ToChain }, nil?: true

      # @!method initialize(amount:, from_token:, to_token:, account_id: nil, from_address: nil, from_chain: nil, metadata: nil, slippage_bps: nil, to_address: nil, to_chain: nil, request_options: {})
      #   @param amount [String] Input token amount.
      #
      #   @param from_token [String] Source token contract address.
      #
      #   @param to_token [String] Destination token contract address.
      #
      #   @param account_id [String, nil] Caller-owned account whose wallet address should be used.
      #
      #   @param from_address [String, nil]
      #
      #   @param from_chain [String, Integer, nil]
      #
      #   @param metadata [Hash{Symbol=>Object}]
      #
      #   @param slippage_bps [Integer, nil]
      #
      #   @param to_address [String, nil]
      #
      #   @param to_chain [String, Integer, nil]
      #
      #   @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}]

      module FromChain
        extend WhopSDK::Internal::Type::Union

        variant String

        variant Integer

        # @!method self.variants
        #   @return [Array(String, Integer)]
      end

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
