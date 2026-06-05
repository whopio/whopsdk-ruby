# frozen_string_literal: true

module WhopSDK
  module Models
    # @see WhopSDK::Resources::Swaps#retrieve
    class SwapRetrieveResponse < WhopSDK::Internal::Type::BaseModel
      # @!attribute account_id
      #
      #   @return [String]
      required :account_id, String

      # @!attribute object
      #
      #   @return [Symbol, WhopSDK::Models::SwapRetrieveResponse::Object]
      required :object, enum: -> { WhopSDK::Models::SwapRetrieveResponse::Object }

      # @!attribute status
      #
      #   @return [String]
      required :status, String

      # @!attribute tx_hashes
      #
      #   @return [Array<String>]
      required :tx_hashes, WhopSDK::Internal::Type::ArrayOf[String]

      # @!attribute error
      #
      #   @return [String, nil]
      optional :error, String, nil?: true

      # @!method initialize(account_id:, object:, status:, tx_hashes:, error: nil)
      #   @param account_id [String]
      #   @param object [Symbol, WhopSDK::Models::SwapRetrieveResponse::Object]
      #   @param status [String]
      #   @param tx_hashes [Array<String>]
      #   @param error [String, nil]

      # @see WhopSDK::Models::SwapRetrieveResponse#object
      module Object
        extend WhopSDK::Internal::Type::Enum

        SWAP = :swap

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
