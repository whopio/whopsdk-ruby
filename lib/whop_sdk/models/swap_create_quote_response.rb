# frozen_string_literal: true

module WhopSDK
  module Models
    # @see WhopSDK::Resources::Swaps#create_quote
    class SwapCreateQuoteResponse < WhopSDK::Internal::Type::BaseModel
      # @!attribute amount_in
      #
      #   @return [String]
      required :amount_in, String

      # @!attribute amount_out
      #
      #   @return [String]
      required :amount_out, String

      # @!attribute cross_chain
      #
      #   @return [Boolean]
      required :cross_chain, WhopSDK::Internal::Type::Boolean

      # @!attribute fee_bps
      #
      #   @return [Integer]
      required :fee_bps, Integer

      # @!attribute from_token
      #
      #   @return [Hash{Symbol=>Object}]
      required :from_token, WhopSDK::Internal::Type::HashOf[WhopSDK::Internal::Type::Unknown]

      # @!attribute metadata
      #
      #   @return [Hash{Symbol=>Object}]
      required :metadata, WhopSDK::Internal::Type::HashOf[WhopSDK::Internal::Type::Unknown]

      # @!attribute object
      #
      #   @return [Symbol, WhopSDK::Models::SwapCreateQuoteResponse::Object]
      required :object, enum: -> { WhopSDK::Models::SwapCreateQuoteResponse::Object }

      # @!attribute rate
      #
      #   @return [String]
      required :rate, String

      # @!attribute to_token
      #
      #   @return [Hash{Symbol=>Object}]
      required :to_token, WhopSDK::Internal::Type::HashOf[WhopSDK::Internal::Type::Unknown]

      # @!attribute amount_out_min
      #
      #   @return [String, nil]
      optional :amount_out_min, String

      # @!attribute bridge_fee
      #
      #   @return [String, nil]
      optional :bridge_fee, String, nil?: true

      # @!attribute estimated_duration_seconds
      #
      #   @return [Integer, nil]
      optional :estimated_duration_seconds, Integer, nil?: true

      # @!attribute from_address
      #
      #   @return [String, nil]
      optional :from_address, String, nil?: true

      # @!attribute requires_token_approval
      #
      #   @return [Boolean, nil]
      optional :requires_token_approval, WhopSDK::Internal::Type::Boolean, nil?: true

      # @!attribute to_address
      #
      #   @return [String, nil]
      optional :to_address, String, nil?: true

      # @!method initialize(amount_in:, amount_out:, cross_chain:, fee_bps:, from_token:, metadata:, object:, rate:, to_token:, amount_out_min: nil, bridge_fee: nil, estimated_duration_seconds: nil, from_address: nil, requires_token_approval: nil, to_address: nil)
      #   @param amount_in [String]
      #   @param amount_out [String]
      #   @param cross_chain [Boolean]
      #   @param fee_bps [Integer]
      #   @param from_token [Hash{Symbol=>Object}]
      #   @param metadata [Hash{Symbol=>Object}]
      #   @param object [Symbol, WhopSDK::Models::SwapCreateQuoteResponse::Object]
      #   @param rate [String]
      #   @param to_token [Hash{Symbol=>Object}]
      #   @param amount_out_min [String]
      #   @param bridge_fee [String, nil]
      #   @param estimated_duration_seconds [Integer, nil]
      #   @param from_address [String, nil]
      #   @param requires_token_approval [Boolean, nil]
      #   @param to_address [String, nil]

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
