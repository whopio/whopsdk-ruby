# frozen_string_literal: true

module WhopSDK
  module Models
    # @see WhopSDK::Resources::Deposits#list
    class DepositListResponse < WhopSDK::Internal::Type::BaseModel
      # @!attribute account_id
      #   Account ID that owns these deposit transactions.
      #
      #   @return [String]
      required :account_id, String

      # @!attribute bank
      #   Bank deposit transactions for this account.
      #
      #   @return [Array<WhopSDK::Models::DepositListResponse::Bank>]
      required :bank, -> { WhopSDK::Internal::Type::ArrayOf[WhopSDK::Models::DepositListResponse::Bank] }

      # @!attribute object
      #
      #   @return [Symbol, WhopSDK::Models::DepositListResponse::Object]
      required :object, enum: -> { WhopSDK::Models::DepositListResponse::Object }

      # @!method initialize(account_id:, bank:, object:)
      #   @param account_id [String] Account ID that owns these deposit transactions.
      #
      #   @param bank [Array<WhopSDK::Models::DepositListResponse::Bank>] Bank deposit transactions for this account.
      #
      #   @param object [Symbol, WhopSDK::Models::DepositListResponse::Object]

      class Bank < WhopSDK::Internal::Type::BaseModel
        # @!attribute id
        #   Bank deposit transaction ID.
        #
        #   @return [String]
        required :id, String

        # @!attribute created_at
        #   When the bank deposit transaction was created.
        #
        #   @return [Time]
        required :created_at, Time

        # @!attribute destination_amount
        #   Amount credited to the account balance.
        #
        #   @return [String, nil]
        required :destination_amount, String, nil?: true

        # @!attribute destination_currency
        #   Currency credited to the account balance.
        #
        #   @return [String, nil]
        required :destination_currency, String, nil?: true

        # @!attribute source_amount
        #   Amount sent by the depositor.
        #
        #   @return [String]
        required :source_amount, String

        # @!attribute source_currency
        #   Currency sent by the depositor.
        #
        #   @return [String]
        required :source_currency, String

        # @!attribute status
        #   Current bank deposit status.
        #
        #   @return [String]
        required :status, String

        # @!method initialize(id:, created_at:, destination_amount:, destination_currency:, source_amount:, source_currency:, status:)
        #   @param id [String] Bank deposit transaction ID.
        #
        #   @param created_at [Time] When the bank deposit transaction was created.
        #
        #   @param destination_amount [String, nil] Amount credited to the account balance.
        #
        #   @param destination_currency [String, nil] Currency credited to the account balance.
        #
        #   @param source_amount [String] Amount sent by the depositor.
        #
        #   @param source_currency [String] Currency sent by the depositor.
        #
        #   @param status [String] Current bank deposit status.
      end

      # @see WhopSDK::Models::DepositListResponse#object
      module Object
        extend WhopSDK::Internal::Type::Enum

        DEPOSITS = :deposits

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
