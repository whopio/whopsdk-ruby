# frozen_string_literal: true

module WhopSDK
  module Models
    # @see WhopSDK::Resources::Transfers#list
    class TransferListResponse < WhopSDK::Internal::Type::BaseModel
      # @!attribute id
      #   Transfer ID.
      #
      #   @return [String]
      required :id, String

      # @!attribute amount
      #   Transfer amount.
      #
      #   @return [Float]
      required :amount, Float

      # @!attribute created_at
      #   When the transfer was created.
      #
      #   @return [Time]
      required :created_at, Time

      # @!attribute currency
      #   Transfer currency.
      #
      #   @return [String]
      required :currency, String

      # @!attribute destination_ledger_account_id
      #   Destination ledger account ID.
      #
      #   @return [String]
      required :destination_ledger_account_id, String

      # @!attribute origin_ledger_account_id
      #   Source ledger account ID.
      #
      #   @return [String]
      required :origin_ledger_account_id, String

      # @!attribute fee_amount
      #   Fee charged for the transfer.
      #
      #   @return [Float, nil]
      optional :fee_amount, Float, nil?: true

      # @!attribute metadata
      #   Custom metadata attached to the transfer.
      #
      #   @return [Hash{Symbol=>Object}, nil]
      optional :metadata, WhopSDK::Internal::Type::HashOf[WhopSDK::Internal::Type::Unknown], nil?: true

      # @!attribute notes
      #   Transfer note.
      #
      #   @return [String, nil]
      optional :notes, String, nil?: true

      # @!method initialize(id:, amount:, created_at:, currency:, destination_ledger_account_id:, origin_ledger_account_id:, fee_amount: nil, metadata: nil, notes: nil)
      #   A transfer of credit between two ledger accounts.
      #
      #   @param id [String] Transfer ID.
      #
      #   @param amount [Float] Transfer amount.
      #
      #   @param created_at [Time] When the transfer was created.
      #
      #   @param currency [String] Transfer currency.
      #
      #   @param destination_ledger_account_id [String] Destination ledger account ID.
      #
      #   @param origin_ledger_account_id [String] Source ledger account ID.
      #
      #   @param fee_amount [Float, nil] Fee charged for the transfer.
      #
      #   @param metadata [Hash{Symbol=>Object}, nil] Custom metadata attached to the transfer.
      #
      #   @param notes [String, nil] Transfer note.
    end
  end
end
