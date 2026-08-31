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

      # @!attribute created_by_user
      #   The user who initiated the transfer, such as the team member who sent a manual
      #   payout. Null if the creator is unavailable.
      #
      #   @return [WhopSDK::Models::TransferListResponse::CreatedByUser, nil]
      required :created_by_user, -> { WhopSDK::Models::TransferListResponse::CreatedByUser }, nil?: true

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

      # @!attribute object
      #   The object type.
      #
      #   @return [Symbol, WhopSDK::Models::TransferListResponse::Object]
      required :object, enum: -> { WhopSDK::Models::TransferListResponse::Object }

      # @!attribute origin_ledger_account_id
      #   Source ledger account ID.
      #
      #   @return [String]
      required :origin_ledger_account_id, String

      # @!attribute status
      #   Transfer status. `processing` means the on-chain leg is still executing — poll
      #   the transfer until it resolves to `succeeded` or `failed`. A `failed` transfer
      #   may be retried under the same ID and later resolve to `succeeded`.
      #
      #   @return [Symbol, WhopSDK::Models::TransferListResponse::Status]
      required :status, enum: -> { WhopSDK::Models::TransferListResponse::Status }

      # @!attribute failed_at
      #   When the transfer failed, as an ISO 8601 timestamp. Null unless the transfer has
      #   failed.
      #
      #   @return [Time, nil]
      optional :failed_at, Time, nil?: true

      # @!attribute failure_code
      #   Machine-readable code for why the transfer failed. Null unless the transfer has
      #   failed.
      #
      #   @return [String, nil]
      optional :failure_code, String, nil?: true

      # @!attribute failure_reason
      #   Human-readable explanation of why the transfer failed. Null unless the transfer
      #   has failed.
      #
      #   @return [String, nil]
      optional :failure_reason, String, nil?: true

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

      # @!method initialize(id:, amount:, created_at:, created_by_user:, currency:, destination_ledger_account_id:, object:, origin_ledger_account_id:, status:, failed_at: nil, failure_code: nil, failure_reason: nil, fee_amount: nil, metadata: nil, notes: nil)
      #   Some parameter documentations has been truncated, see
      #   {WhopSDK::Models::TransferListResponse} for more details.
      #
      #   A transfer of credit between two ledger accounts.
      #
      #   @param id [String] Transfer ID.
      #
      #   @param amount [Float] Transfer amount.
      #
      #   @param created_at [Time] When the transfer was created.
      #
      #   @param created_by_user [WhopSDK::Models::TransferListResponse::CreatedByUser, nil] The user who initiated the transfer, such as the team member who sent a manual p
      #
      #   @param currency [String] Transfer currency.
      #
      #   @param destination_ledger_account_id [String] Destination ledger account ID.
      #
      #   @param object [Symbol, WhopSDK::Models::TransferListResponse::Object] The object type.
      #
      #   @param origin_ledger_account_id [String] Source ledger account ID.
      #
      #   @param status [Symbol, WhopSDK::Models::TransferListResponse::Status] Transfer status. `processing` means the on-chain leg is still executing — poll t
      #
      #   @param failed_at [Time, nil] When the transfer failed, as an ISO 8601 timestamp. Null unless the transfer has
      #
      #   @param failure_code [String, nil] Machine-readable code for why the transfer failed. Null unless the transfer has
      #
      #   @param failure_reason [String, nil] Human-readable explanation of why the transfer failed. Null unless the transfer
      #
      #   @param fee_amount [Float, nil] Fee charged for the transfer.
      #
      #   @param metadata [Hash{Symbol=>Object}, nil] Custom metadata attached to the transfer.
      #
      #   @param notes [String, nil] Transfer note.

      # @see WhopSDK::Models::TransferListResponse#created_by_user
      class CreatedByUser < WhopSDK::Internal::Type::BaseModel
        # @!attribute id
        #   User ID.
        #
        #   @return [String]
        required :id, String

        # @!attribute username
        #   User's username.
        #
        #   @return [String]
        required :username, String

        # @!attribute name
        #   User display name.
        #
        #   @return [String, nil]
        optional :name, String, nil?: true

        # @!method initialize(id:, username:, name: nil)
        #   The user who initiated the transfer, such as the team member who sent a manual
        #   payout. Null if the creator is unavailable.
        #
        #   @param id [String] User ID.
        #
        #   @param username [String] User's username.
        #
        #   @param name [String, nil] User display name.
      end

      # The object type.
      #
      # @see WhopSDK::Models::TransferListResponse#object
      module Object
        extend WhopSDK::Internal::Type::Enum

        TRANSFER = :transfer

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # Transfer status. `processing` means the on-chain leg is still executing — poll
      # the transfer until it resolves to `succeeded` or `failed`. A `failed` transfer
      # may be retried under the same ID and later resolve to `succeeded`.
      #
      # @see WhopSDK::Models::TransferListResponse#status
      module Status
        extend WhopSDK::Internal::Type::Enum

        PROCESSING = :processing
        SUCCEEDED = :succeeded
        FAILED = :failed

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
