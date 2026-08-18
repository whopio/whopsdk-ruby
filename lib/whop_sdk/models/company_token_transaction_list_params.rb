# frozen_string_literal: true

module WhopSDK
  module Models
    # @see WhopSDK::Resources::CompanyTokenTransactions#list
    class CompanyTokenTransactionListParams < WhopSDK::Internal::Type::BaseModel
      extend WhopSDK::Internal::Type::RequestParameters::Converter
      include WhopSDK::Internal::Type::RequestParameters

      # @!attribute company_id
      #   The unique identifier of the company to list token transactions for.
      #
      #   @return [String]
      required :company_id, String

      # @!attribute after
      #   Returns the elements in the list that come after the specified cursor.
      #
      #   @return [String, nil]
      optional :after, String

      # @!attribute before
      #   Returns the elements in the list that come before the specified cursor.
      #
      #   @return [String, nil]
      optional :before, String

      # @!attribute first
      #   Returns the first _n_ elements from the list.
      #
      #   @return [Integer, nil]
      optional :first, Integer

      # @!attribute last
      #   Returns the last _n_ elements from the list.
      #
      #   @return [Integer, nil]
      optional :last, Integer

      # @!attribute transaction_type
      #   Filter transactions by type.
      #
      #   @return [Symbol, WhopSDK::Models::CompanyTokenTransactionType, nil]
      optional :transaction_type, enum: -> { WhopSDK::CompanyTokenTransactionType }

      # @!attribute user_id
      #   Filter transactions to only those involving this specific user.
      #
      #   @return [String, nil]
      optional :user_id, String

      # @!method initialize(company_id:, after: nil, before: nil, first: nil, last: nil, transaction_type: nil, user_id: nil, request_options: {})
      #   @param company_id [String] The unique identifier of the company to list token transactions for.
      #
      #   @param after [String] Returns the elements in the list that come after the specified cursor.
      #
      #   @param before [String] Returns the elements in the list that come before the specified cursor.
      #
      #   @param first [Integer] Returns the first _n_ elements from the list.
      #
      #   @param last [Integer] Returns the last _n_ elements from the list.
      #
      #   @param transaction_type [Symbol, WhopSDK::Models::CompanyTokenTransactionType] Filter transactions by type.
      #
      #   @param user_id [String] Filter transactions to only those involving this specific user.
      #
      #   @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
