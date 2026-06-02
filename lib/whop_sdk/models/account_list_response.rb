# frozen_string_literal: true

module WhopSDK
  module Models
    # @see WhopSDK::Resources::Accounts#list
    class AccountListResponse < WhopSDK::Internal::Type::BaseModel
      # @!attribute accounts
      #
      #   @return [Array<WhopSDK::Models::Account>]
      required :accounts, -> { WhopSDK::Internal::Type::ArrayOf[WhopSDK::Account] }

      # @!attribute pagination
      #
      #   @return [WhopSDK::Models::AccountListResponse::Pagination]
      required :pagination, -> { WhopSDK::Models::AccountListResponse::Pagination }

      # @!method initialize(accounts:, pagination:)
      #   @param accounts [Array<WhopSDK::Models::Account>]
      #   @param pagination [WhopSDK::Models::AccountListResponse::Pagination]

      # @see WhopSDK::Models::AccountListResponse#pagination
      class Pagination < WhopSDK::Internal::Type::BaseModel
        # @!attribute current_page
        #   Current page number
        #
        #   @return [Float]
        required :current_page, Float

        # @!attribute next_page
        #   Next page number
        #
        #   @return [Float, nil]
        required :next_page, Float, nil?: true

        # @!attribute prev_page
        #   Previous page number
        #
        #   @return [Float, nil]
        required :prev_page, Float, nil?: true

        # @!attribute total_count
        #   Total number of records
        #
        #   @return [Float]
        required :total_count, Float

        # @!attribute total_pages
        #   Total number of pages
        #
        #   @return [Float]
        required :total_pages, Float

        # @!method initialize(current_page:, next_page:, prev_page:, total_count:, total_pages:)
        #   @param current_page [Float] Current page number
        #
        #   @param next_page [Float, nil] Next page number
        #
        #   @param prev_page [Float, nil] Previous page number
        #
        #   @param total_count [Float] Total number of records
        #
        #   @param total_pages [Float] Total number of pages
      end
    end
  end
end
