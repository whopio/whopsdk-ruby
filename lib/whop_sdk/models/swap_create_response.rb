# frozen_string_literal: true

module WhopSDK
  module Models
    # @see WhopSDK::Resources::Swaps#create
    class SwapCreateResponse < WhopSDK::Internal::Type::BaseModel
      # @!attribute account_id
      #
      #   @return [String]
      required :account_id, String

      # @!attribute object
      #
      #   @return [Symbol, WhopSDK::Models::SwapCreateResponse::Object]
      required :object, enum: -> { WhopSDK::Models::SwapCreateResponse::Object }

      # @!attribute status
      #
      #   @return [String]
      required :status, String

      # @!attribute amount_out_expected
      #
      #   @return [String, nil]
      optional :amount_out_expected, String

      # @!attribute amount_out_min
      #
      #   @return [String, nil]
      optional :amount_out_min, String

      # @!attribute rate
      #
      #   @return [String, nil]
      optional :rate, String

      # @!attribute to_chain
      #
      #   @return [String, nil]
      optional :to_chain, String

      # @!method initialize(account_id:, object:, status:, amount_out_expected: nil, amount_out_min: nil, rate: nil, to_chain: nil)
      #   @param account_id [String]
      #   @param object [Symbol, WhopSDK::Models::SwapCreateResponse::Object]
      #   @param status [String]
      #   @param amount_out_expected [String]
      #   @param amount_out_min [String]
      #   @param rate [String]
      #   @param to_chain [String]

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
