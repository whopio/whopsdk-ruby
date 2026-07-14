# frozen_string_literal: true

module WhopSDK
  module Models
    # @see WhopSDK::Resources::Swaps#create_quote
    class SwapCreateQuoteResponse < WhopSDK::Internal::Type::BaseModel
      # @!attribute amount_in
      #   Source token amount used for the quote.
      #
      #   @return [String]
      required :amount_in, String

      # @!attribute amount_out
      #   Estimated destination token amount.
      #
      #   @return [String]
      required :amount_out, String

      # @!attribute fee_bps
      #   Whop fee in basis points.
      #
      #   @return [Integer]
      required :fee_bps, Integer

      # @!attribute from_token
      #   Resolved source token details.
      #
      #   @return [Hash{Symbol=>Object}]
      required :from_token, WhopSDK::Internal::Type::HashOf[WhopSDK::Internal::Type::Unknown]

      # @!attribute metadata
      #   Metadata from the request.
      #
      #   @return [Hash{Symbol=>Object}]
      required :metadata, WhopSDK::Internal::Type::HashOf[WhopSDK::Internal::Type::Unknown]

      # @!attribute object
      #
      #   @return [Symbol, WhopSDK::Models::SwapCreateQuoteResponse::Object]
      required :object, enum: -> { WhopSDK::Models::SwapCreateQuoteResponse::Object }

      # @!attribute rate
      #   Quoted exchange rate.
      #
      #   @return [String]
      required :rate, String

      # @!attribute to_token
      #   Resolved destination token details.
      #
      #   @return [Hash{Symbol=>Object}]
      required :to_token, WhopSDK::Internal::Type::HashOf[WhopSDK::Internal::Type::Unknown]

      # @!attribute amount_out_min
      #   Minimum destination amount after slippage.
      #
      #   @return [String, nil]
      optional :amount_out_min, String

      # @!attribute bridge_fee
      #   Estimated bridge fee for cross-chain swaps.
      #
      #   @return [String, nil]
      optional :bridge_fee, String, nil?: true

      # @!attribute estimated_duration_seconds
      #   Estimated time for the swap to complete.
      #
      #   @return [Integer, nil]
      optional :estimated_duration_seconds, Integer, nil?: true

      # @!attribute from_address
      #   Source wallet address used for the quote.
      #
      #   @return [String, nil]
      optional :from_address, String, nil?: true

      # @!attribute requires_token_approval
      #   Whether the source token needs approval before swapping.
      #
      #   @return [Boolean, nil]
      optional :requires_token_approval, WhopSDK::Internal::Type::Boolean, nil?: true

      # @!attribute to_address
      #   Destination wallet address used for the quote.
      #
      #   @return [String, nil]
      optional :to_address, String, nil?: true

      # @!method initialize(amount_in:, amount_out:, fee_bps:, from_token:, metadata:, object:, rate:, to_token:, amount_out_min: nil, bridge_fee: nil, estimated_duration_seconds: nil, from_address: nil, requires_token_approval: nil, to_address: nil)
      #   @param amount_in [String] Source token amount used for the quote.
      #
      #   @param amount_out [String] Estimated destination token amount.
      #
      #   @param fee_bps [Integer] Whop fee in basis points.
      #
      #   @param from_token [Hash{Symbol=>Object}] Resolved source token details.
      #
      #   @param metadata [Hash{Symbol=>Object}] Metadata from the request.
      #
      #   @param object [Symbol, WhopSDK::Models::SwapCreateQuoteResponse::Object]
      #
      #   @param rate [String] Quoted exchange rate.
      #
      #   @param to_token [Hash{Symbol=>Object}] Resolved destination token details.
      #
      #   @param amount_out_min [String] Minimum destination amount after slippage.
      #
      #   @param bridge_fee [String, nil] Estimated bridge fee for cross-chain swaps.
      #
      #   @param estimated_duration_seconds [Integer, nil] Estimated time for the swap to complete.
      #
      #   @param from_address [String, nil] Source wallet address used for the quote.
      #
      #   @param requires_token_approval [Boolean, nil] Whether the source token needs approval before swapping.
      #
      #   @param to_address [String, nil] Destination wallet address used for the quote.

      # @see WhopSDK::Models::SwapCreateQuoteResponse#object
      module Object
        extend WhopSDK::Internal::Type::Enum

        SWAP_QUOTE = :swap_quote

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
