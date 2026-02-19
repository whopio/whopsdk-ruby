# frozen_string_literal: true

module WhopSDK
  module Models
    # @see WhopSDK::Resources::Transfers#list
    class TransferListResponse < WhopSDK::Internal::Type::BaseModel
      # @!attribute id
      #   The unique identifier for the credit transaction transfer.
      #
      #   @return [String]
      required :id, String

      # @!attribute amount
      #   The transfer amount in the currency specified by the currency field. For
      #   example, 10.43 represents $10.43 USD.
      #
      #   @return [Float]
      required :amount, Float

      # @!attribute created_at
      #   The datetime the credit transaction transfer was created.
      #
      #   @return [Time]
      required :created_at, Time

      # @!attribute currency
      #   The currency in which this transfer amount is denominated.
      #
      #   @return [Symbol, WhopSDK::Models::Currency]
      required :currency, enum: -> { WhopSDK::Currency }

      # @!attribute destination_ledger_account_id
      #   The unique identifier of the ledger account receiving the funds.
      #
      #   @return [String]
      required :destination_ledger_account_id, String

      # @!attribute fee_amount
      #   The flat fee amount deducted from this transfer, in the transfer's currency.
      #   Null if no flat fee was applied.
      #
      #   @return [Float, nil]
      required :fee_amount, Float, nil?: true

      # @!attribute metadata
      #   Custom key-value pairs attached to this transfer. Maximum 50 keys, 500
      #   characters per key, 5000 characters per value.
      #
      #   @return [Hash{Symbol=>Object}, nil]
      required :metadata, WhopSDK::Internal::Type::HashOf[WhopSDK::Internal::Type::Unknown], nil?: true

      # @!attribute notes
      #   A free-text note attached to this transfer by the sender. Null if no note was
      #   provided.
      #
      #   @return [String, nil]
      required :notes, String, nil?: true

      # @!attribute origin_ledger_account_id
      #   The unique identifier of the ledger account that sent the funds.
      #
      #   @return [String]
      required :origin_ledger_account_id, String

      # @!method initialize(id:, amount:, created_at:, currency:, destination_ledger_account_id:, fee_amount:, metadata:, notes:, origin_ledger_account_id:)
      #   Some parameter documentations has been truncated, see
      #   {WhopSDK::Models::TransferListResponse} for more details.
      #
      #   A transfer of credit between two ledger accounts.
      #
      #   @param id [String] The unique identifier for the credit transaction transfer.
      #
      #   @param amount [Float] The transfer amount in the currency specified by the currency field. For example
      #
      #   @param created_at [Time] The datetime the credit transaction transfer was created.
      #
      #   @param currency [Symbol, WhopSDK::Models::Currency] The currency in which this transfer amount is denominated.
      #
      #   @param destination_ledger_account_id [String] The unique identifier of the ledger account receiving the funds.
      #
      #   @param fee_amount [Float, nil] The flat fee amount deducted from this transfer, in the transfer's currency. Nul
      #
      #   @param metadata [Hash{Symbol=>Object}, nil] Custom key-value pairs attached to this transfer. Maximum 50 keys, 500 character
      #
      #   @param notes [String, nil] A free-text note attached to this transfer by the sender. Null if no note was pr
      #
      #   @param origin_ledger_account_id [String] The unique identifier of the ledger account that sent the funds.
    end
  end
end
