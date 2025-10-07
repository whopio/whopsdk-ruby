# frozen_string_literal: true

module Whopsdk
  module Models
    # @see Whopsdk::Resources::Entries#list
    class EntryListParams < Whopsdk::Internal::Type::BaseModel
      extend Whopsdk::Internal::Type::RequestParameters::Converter
      include Whopsdk::Internal::Type::RequestParameters

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

      # @!attribute direction
      #   The direction of the sort.
      #
      #   @return [Symbol, Whopsdk::Models::Direction, nil]
      optional :direction, enum: -> { Whopsdk::Direction }, nil?: true

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

      # @!attribute order
      #   Which columns can be used to sort.
      #
      #   @return [Symbol, Whopsdk::Models::EntryListParams::Order, nil]
      optional :order, enum: -> { Whopsdk::EntryListParams::Order }, nil?: true

      # @!attribute plan_ids
      #   The plan IDs to filter the entries by
      #
      #   @return [Array<String>, nil]
      optional :plan_ids, Whopsdk::Internal::Type::ArrayOf[String], nil?: true

      # @!attribute product_ids
      #   The access pass IDs to filter the entries by
      #
      #   @return [Array<String>, nil]
      optional :product_ids, Whopsdk::Internal::Type::ArrayOf[String], nil?: true

      # @!attribute statuses
      #   The statuses to filter the entries by
      #
      #   @return [Array<Symbol, Whopsdk::Models::EntryStatus>, nil]
      optional :statuses, -> { Whopsdk::Internal::Type::ArrayOf[enum: Whopsdk::EntryStatus] }, nil?: true

      # @!method initialize(company_id:, after: nil, before: nil, direction: nil, first: nil, last: nil, order: nil, plan_ids: nil, product_ids: nil, statuses: nil, request_options: {})
      #   @param company_id [String] The ID of the company
      #
      #   @param after [String, nil] Returns the elements in the list that come after the specified cursor.
      #
      #   @param before [String, nil] Returns the elements in the list that come before the specified cursor.
      #
      #   @param direction [Symbol, Whopsdk::Models::Direction, nil] The direction of the sort.
      #
      #   @param first [Integer, nil] Returns the first _n_ elements from the list.
      #
      #   @param last [Integer, nil] Returns the last _n_ elements from the list.
      #
      #   @param order [Symbol, Whopsdk::Models::EntryListParams::Order, nil] Which columns can be used to sort.
      #
      #   @param plan_ids [Array<String>, nil] The plan IDs to filter the entries by
      #
      #   @param product_ids [Array<String>, nil] The access pass IDs to filter the entries by
      #
      #   @param statuses [Array<Symbol, Whopsdk::Models::EntryStatus>, nil] The statuses to filter the entries by
      #
      #   @param request_options [Whopsdk::RequestOptions, Hash{Symbol=>Object}]

      # Which columns can be used to sort.
      module Order
        extend Whopsdk::Internal::Type::Enum

        ID = :id
        CREATED_AT = :created_at

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
