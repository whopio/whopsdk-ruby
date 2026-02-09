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
      #   The amount of the transfer. Provided as a number in the specified currency. Eg:
      #   10.43 for $10.43 USD.
      #
      #   @return [Float]
      required :amount, Float

      # @!attribute created_at
      #   The datetime the credit transaction transfer was created.
      #
      #   @return [Time]
      required :created_at, Time

      # @!attribute currency
      #   The currency of the credit transaction transfer
      #
      #   @return [Symbol, WhopSDK::Models::Currency]
      required :currency, enum: -> { WhopSDK::Currency }

      # @!attribute destination_ledger_account_id
      #   The ID of the destination ledger account
      #
      #   @return [String]
      required :destination_ledger_account_id, String

      # @!attribute fee_amount
      #   The decimal fee of the credit transaction transfer
      #
      #   @return [Float, nil]
      required :fee_amount, Float, nil?: true

      # @!attribute metadata
      #   Custom key-value pairs attached to the transfer. Max 50 keys, 500 chars per key,
      #   5000 chars per value.
      #
      #   @return [Hash{Symbol=>Object}, nil]
      required :metadata, WhopSDK::Internal::Type::HashOf[WhopSDK::Internal::Type::Unknown], nil?: true

      # @!attribute notes
      #   The notes of the credit transaction transfer
      #
      #   @return [String, nil]
      required :notes, String, nil?: true

      # @!attribute origin_ledger_account_id
      #   The ID of the origin ledger account
      #
      #   @return [String]
      required :origin_ledger_account_id, String

      # @!method initialize(id:, amount:, created_at:, currency:, destination_ledger_account_id:, fee_amount:, metadata:, notes:, origin_ledger_account_id:)
      #   Some parameter documentations has been truncated, see
      #   {WhopSDK::Models::TransferListResponse} for more details.
      #
      #   Credit Transaction Transfer
      #
      #   @param id [String] The unique identifier for the credit transaction transfer.
      #
      #   @param amount [Float] The amount of the transfer. Provided as a number in the specified currency. Eg:
      #
      #   @param created_at [Time] The datetime the credit transaction transfer was created.
      #
      #   @param currency [Symbol, WhopSDK::Models::Currency] The currency of the credit transaction transfer
      #
      #   @param destination_ledger_account_id [String] The ID of the destination ledger account
      #
      #   @param fee_amount [Float, nil] The decimal fee of the credit transaction transfer
      #
      #   @param metadata [Hash{Symbol=>Object}, nil] Custom key-value pairs attached to the transfer. Max 50 keys, 500 chars per key,
      #
      #   @param notes [String, nil] The notes of the credit transaction transfer
      #
      #   @param origin_ledger_account_id [String] The ID of the origin ledger account
    end
  end
end
