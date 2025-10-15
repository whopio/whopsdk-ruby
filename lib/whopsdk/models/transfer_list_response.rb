# frozen_string_literal: true

module Whopsdk
  module Models
    # @see Whopsdk::Resources::Transfers#list
    class TransferListResponse < Whopsdk::Internal::Type::BaseModel
      # @!attribute id
      #   The unique identifier of the credit transaction transfer
      #
      #   @return [String]
      required :id, String

      # @!attribute amount
      #   The amount of the credit transaction transfer
      #
      #   @return [Float]
      required :amount, Float

      # @!attribute created_at
      #   The timestamp when the credit transaction transfer was created
      #
      #   @return [Time]
      required :created_at, Time

      # @!attribute currency
      #   The currency of the credit transaction transfer
      #
      #   @return [Symbol, Whopsdk::Models::Currency]
      required :currency, enum: -> { Whopsdk::Currency }

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

      # @!method initialize(id:, amount:, created_at:, currency:, destination_ledger_account_id:, fee_amount:, notes:, origin_ledger_account_id:)
      #   Credit Transaction Transfer
      #
      #   @param id [String] The unique identifier of the credit transaction transfer
      #
      #   @param amount [Float] The amount of the credit transaction transfer
      #
      #   @param created_at [Time] The timestamp when the credit transaction transfer was created
      #
      #   @param currency [Symbol, Whopsdk::Models::Currency] The currency of the credit transaction transfer
      #
      #   @param destination_ledger_account_id [String] The ID of the destination ledger account
      #
      #   @param fee_amount [Float, nil] The decimal fee of the credit transaction transfer
      #
      #   @param notes [String, nil] The notes of the credit transaction transfer
      #
      #   @param origin_ledger_account_id [String] The ID of the origin ledger account
    end
  end
end
