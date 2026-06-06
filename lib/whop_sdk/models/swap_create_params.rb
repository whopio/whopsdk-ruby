# frozen_string_literal: true

module WhopSDK
  module Models
    # @see WhopSDK::Resources::Swaps#create
    class SwapCreateParams < WhopSDK::Internal::Type::BaseModel
      extend WhopSDK::Internal::Type::RequestParameters::Converter
      include WhopSDK::Internal::Type::RequestParameters

      # @!attribute account_id
      #   Business or user account ID (biz*\* / user*\*), or the ledger account's own
      #   ldgr\_ ID.
      #
      #   @return [String]
      required :account_id, String

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

      # @!attribute from_chain
      #
      #   @return [String, Integer, nil]
      optional :from_chain, union: -> { WhopSDK::SwapCreateParams::FromChain }, nil?: true

      # @!attribute slippage_bps
      #
      #   @return [Integer, nil]
      optional :slippage_bps, Integer, nil?: true

      # @!attribute to_chain
      #
      #   @return [String, Integer, nil]
      optional :to_chain, union: -> { WhopSDK::SwapCreateParams::ToChain }, nil?: true

      # @!method initialize(account_id:, amount:, from_token:, to_token:, from_chain: nil, slippage_bps: nil, to_chain: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {WhopSDK::Models::SwapCreateParams} for more details.
      #
      #   @param account_id [String] Business or user account ID (biz*\* / user*\*), or the ledger account's own
      #   ldgr\_
      #
      #   @param amount [String] Input token amount.
      #
      #   @param from_token [String] Source token contract address.
      #
      #   @param to_token [String] Destination token contract address.
      #
      #   @param from_chain [String, Integer, nil]
      #
      #   @param slippage_bps [Integer, nil]
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
