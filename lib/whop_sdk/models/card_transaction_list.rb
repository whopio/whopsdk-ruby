# frozen_string_literal: true

module WhopSDK
  module Models
    # @see WhopSDK::Resources::Cards#card_transactions
    class CardTransactionList < WhopSDK::Internal::Type::BaseModel
      # @!attribute data
      #
      #   @return [Array<WhopSDK::Models::CardTransaction>]
      required :data, -> { WhopSDK::Internal::Type::ArrayOf[WhopSDK::CardTransaction] }

      # @!attribute object
      #
      #   @return [Symbol, WhopSDK::Models::CardTransactionList::Object]
      required :object, enum: -> { WhopSDK::CardTransactionList::Object }

      # @!attribute pagination
      #
      #   @return [WhopSDK::Models::CardTransactionList::Pagination]
      required :pagination, -> { WhopSDK::CardTransactionList::Pagination }

      # @!method initialize(data:, object:, pagination:)
      #   @param data [Array<WhopSDK::Models::CardTransaction>]
      #   @param object [Symbol, WhopSDK::Models::CardTransactionList::Object]
      #   @param pagination [WhopSDK::Models::CardTransactionList::Pagination]

      # @see WhopSDK::Models::CardTransactionList#object
      module Object
        extend WhopSDK::Internal::Type::Enum

        LIST = :list

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # @see WhopSDK::Models::CardTransactionList#pagination
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
