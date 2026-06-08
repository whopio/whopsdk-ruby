# frozen_string_literal: true

module WhopSDK
  module Models
    # @see WhopSDK::Resources::Cards#card_transactions
    class CardCardTransactionsParams < WhopSDK::Internal::Type::BaseModel
      extend WhopSDK::Internal::Type::RequestParameters::Converter
      include WhopSDK::Internal::Type::RequestParameters

      # @!attribute id
      #
      #   @return [String]
      required :id, String

      # @!attribute created_after
      #   Only return transactions created at or after this ISO 8601 timestamp.
      #
      #   @return [String, nil]
      optional :created_after, String

      # @!attribute created_before
      #   Only return transactions created strictly before this ISO 8601 timestamp.
      #
      #   @return [String, nil]
      optional :created_before, String

      # @!attribute page
      #   The page number to retrieve.
      #
      #   @return [Integer, nil]
      optional :page, Integer

      # @!attribute per
      #   The number of transactions to return per page. Capped at 50.
      #
      #   @return [Integer, nil]
      optional :per, Integer

      # @!attribute status
      #   Filter to transactions with this status.
      #
      #   @return [Symbol, WhopSDK::Models::CardCardTransactionsParams::Status, nil]
      optional :status, enum: -> { WhopSDK::CardCardTransactionsParams::Status }

      # @!method initialize(id:, created_after: nil, created_before: nil, page: nil, per: nil, status: nil, request_options: {})
      #   @param id [String]
      #
      #   @param created_after [String] Only return transactions created at or after this ISO 8601 timestamp.
      #
      #   @param created_before [String] Only return transactions created strictly before this ISO 8601 timestamp.
      #
      #   @param page [Integer] The page number to retrieve.
      #
      #   @param per [Integer] The number of transactions to return per page. Capped at 50.
      #
      #   @param status [Symbol, WhopSDK::Models::CardCardTransactionsParams::Status] Filter to transactions with this status.
      #
      #   @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}]

      # Filter to transactions with this status.
      module Status
        extend WhopSDK::Internal::Type::Enum

        PENDING = :pending
        COMPLETED = :completed
        REVERSED = :reversed
        DECLINED = :declined

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
