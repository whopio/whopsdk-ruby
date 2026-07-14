# frozen_string_literal: true

module WhopSDK
  module Models
    # @see WhopSDK::Resources::Swaps#create
    class SwapCreateResponse < WhopSDK::Internal::Type::BaseModel
      # @!attribute id
      #   Swap ID. Poll `GET /swaps/:id` for status.
      #
      #   @return [String]
      required :id, String

      # @!attribute account_id
      #   Account ID that owns the wallet used for the swap.
      #
      #   @return [String]
      required :account_id, String

      # @!attribute object
      #
      #   @return [Symbol, WhopSDK::Models::SwapCreateResponse::Object]
      required :object, enum: -> { WhopSDK::Models::SwapCreateResponse::Object }

      # @!attribute status
      #   Initial swap status.
      #
      #   @return [String]
      required :status, String

      # @!attribute amount_out_expected
      #   Expected destination token amount.
      #
      #   @return [String, nil]
      optional :amount_out_expected, String

      # @!attribute amount_out_min
      #   Minimum destination amount after slippage.
      #
      #   @return [String, nil]
      optional :amount_out_min, String

      # @!attribute rate
      #   Quoted exchange rate used to create the swap.
      #
      #   @return [String, nil]
      optional :rate, String

      # @!attribute to_chain
      #   Destination chain for the swap.
      #
      #   @return [String, nil]
      optional :to_chain, String

      # @!method initialize(id:, account_id:, object:, status:, amount_out_expected: nil, amount_out_min: nil, rate: nil, to_chain: nil)
      #   @param id [String] Swap ID. Poll `GET /swaps/:id` for status.
      #
      #   @param account_id [String] Account ID that owns the wallet used for the swap.
      #
      #   @param object [Symbol, WhopSDK::Models::SwapCreateResponse::Object]
      #
      #   @param status [String] Initial swap status.
      #
      #   @param amount_out_expected [String] Expected destination token amount.
      #
      #   @param amount_out_min [String] Minimum destination amount after slippage.
      #
      #   @param rate [String] Quoted exchange rate used to create the swap.
      #
      #   @param to_chain [String] Destination chain for the swap.

      # @see WhopSDK::Models::SwapCreateResponse#object
      module Object
        extend WhopSDK::Internal::Type::Enum

        SWAP = :swap

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
