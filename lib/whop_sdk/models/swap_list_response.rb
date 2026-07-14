# frozen_string_literal: true

module WhopSDK
  module Models
    # @see WhopSDK::Resources::Swaps#list
    class SwapListResponse < WhopSDK::Internal::Type::BaseModel
      # @!attribute data
      #   Swaps returned for this account.
      #
      #   @return [Array<WhopSDK::Models::SwapListResponse::Data>]
      required :data, -> { WhopSDK::Internal::Type::ArrayOf[WhopSDK::Models::SwapListResponse::Data] }

      # @!method initialize(data:)
      #   @param data [Array<WhopSDK::Models::SwapListResponse::Data>] Swaps returned for this account.

      class Data < WhopSDK::Internal::Type::BaseModel
        # @!attribute id
        #   Swap ID.
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
        #   @return [Symbol, WhopSDK::Models::SwapListResponse::Data::Object]
        required :object, enum: -> { WhopSDK::Models::SwapListResponse::Data::Object }

        # @!attribute status
        #   Current swap status.
        #
        #   @return [String]
        required :status, String

        # @!attribute tx_hashes
        #   On-chain transaction hashes produced by the swap.
        #
        #   @return [Array<String>]
        required :tx_hashes, WhopSDK::Internal::Type::ArrayOf[String]

        # @!attribute error
        #   Latest error returned for a failed swap.
        #
        #   @return [String, nil]
        optional :error, String, nil?: true

        # @!method initialize(id:, account_id:, object:, status:, tx_hashes:, error: nil)
        #   @param id [String] Swap ID.
        #
        #   @param account_id [String] Account ID that owns the wallet used for the swap.
        #
        #   @param object [Symbol, WhopSDK::Models::SwapListResponse::Data::Object]
        #
        #   @param status [String] Current swap status.
        #
        #   @param tx_hashes [Array<String>] On-chain transaction hashes produced by the swap.
        #
        #   @param error [String, nil] Latest error returned for a failed swap.

        # @see WhopSDK::Models::SwapListResponse::Data#object
        module Object
          extend WhopSDK::Internal::Type::Enum

          SWAP = :swap

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
