# frozen_string_literal: true

module WhopSDK
  module Models
    # @see WhopSDK::Resources::CompanyTokenTransactions#list
    class CompanyTokenTransactionListParams < WhopSDK::Internal::Type::BaseModel
      extend WhopSDK::Internal::Type::RequestParameters::Converter
      include WhopSDK::Internal::Type::RequestParameters

      # @!attribute company_id
      #   The ID of the company
      #
      #   @return [String]
      required :company_id, String

      # @!attribute after
      #   Returns the elements in the list that come after the specified cursor.
      #
      #   @return [String, nil]
      optional :after, String, nil?: true

      # @!attribute before
      #   Returns the elements in the list that come before the specified cursor.
      #
      #   @return [String, nil]
      optional :before, String, nil?: true

      # @!attribute first
      #   Returns the first _n_ elements from the list.
      #
      #   @return [Integer, nil]
      optional :first, Integer, nil?: true

      # @!attribute last
      #   Returns the last _n_ elements from the list.
      #
      #   @return [Integer, nil]
      optional :last, Integer, nil?: true

      # @!attribute transaction_type
      #   The type of token transaction
      #
      #   @return [Symbol, WhopSDK::Models::CompanyTokenTransactionListParams::TransactionType, nil]
      optional :transaction_type,
               enum: -> { WhopSDK::CompanyTokenTransactionListParams::TransactionType },
               nil?: true

      # @!attribute user_id
      #   Filter by user ID
      #
      #   @return [String, nil]
      optional :user_id, String, nil?: true

      # @!method initialize(company_id:, after: nil, before: nil, first: nil, last: nil, transaction_type: nil, user_id: nil, request_options: {})
      #   @param company_id [String] The ID of the company
      #
      #   @param after [String, nil] Returns the elements in the list that come after the specified cursor.
      #
      #   @param before [String, nil] Returns the elements in the list that come before the specified cursor.
      #
      #   @param first [Integer, nil] Returns the first _n_ elements from the list.
      #
      #   @param last [Integer, nil] Returns the last _n_ elements from the list.
      #
      #   @param transaction_type [Symbol, WhopSDK::Models::CompanyTokenTransactionListParams::TransactionType, nil] The type of token transaction
      #
      #   @param user_id [String, nil] Filter by user ID
      #
      #   @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}]

      # The type of token transaction
      module TransactionType
        extend WhopSDK::Internal::Type::Enum

        ADD = :add
        SUBTRACT = :subtract
        TRANSFER = :transfer

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
