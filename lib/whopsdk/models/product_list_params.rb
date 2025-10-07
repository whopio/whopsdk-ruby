# frozen_string_literal: true

module Whopsdk
  module Models
    # @see Whopsdk::Resources::Products#list
    class ProductListParams < Whopsdk::Internal::Type::BaseModel
      extend Whopsdk::Internal::Type::RequestParameters::Converter
      include Whopsdk::Internal::Type::RequestParameters

      # @!attribute company_id
      #   The ID of the company to filter products by
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
      #   The ways a relation of AccessPasses can be ordered
      #
      #   @return [Symbol, Whopsdk::Models::ProductListParams::Order, nil]
      optional :order, enum: -> { Whopsdk::ProductListParams::Order }, nil?: true

      # @!attribute product_types
      #   The type of products to filter by
      #
      #   @return [Array<Symbol, Whopsdk::Models::AccessPassType>, nil]
      optional :product_types,
               -> { Whopsdk::Internal::Type::ArrayOf[enum: Whopsdk::AccessPassType] },
               nil?: true

      # @!attribute visibilities
      #   The visibility of the products to filter by
      #
      #   @return [Array<Symbol, Whopsdk::Models::VisibilityFilter>, nil]
      optional :visibilities,
               -> { Whopsdk::Internal::Type::ArrayOf[enum: Whopsdk::VisibilityFilter] },
               nil?: true

      # @!method initialize(company_id:, after: nil, before: nil, direction: nil, first: nil, last: nil, order: nil, product_types: nil, visibilities: nil, request_options: {})
      #   @param company_id [String] The ID of the company to filter products by
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
      #   @param order [Symbol, Whopsdk::Models::ProductListParams::Order, nil] The ways a relation of AccessPasses can be ordered
      #
      #   @param product_types [Array<Symbol, Whopsdk::Models::AccessPassType>, nil] The type of products to filter by
      #
      #   @param visibilities [Array<Symbol, Whopsdk::Models::VisibilityFilter>, nil] The visibility of the products to filter by
      #
      #   @param request_options [Whopsdk::RequestOptions, Hash{Symbol=>Object}]

      # The ways a relation of AccessPasses can be ordered
      module Order
        extend Whopsdk::Internal::Type::Enum

        ACTIVE_MEMBERSHIPS_COUNT = :active_memberships_count
        CREATED_AT = :created_at
        USD_GMV = :usd_gmv
        USD_GMV_30_DAYS = :usd_gmv_30_days

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
