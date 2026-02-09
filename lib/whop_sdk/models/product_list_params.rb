# frozen_string_literal: true

module WhopSDK
  module Models
    # @see WhopSDK::Resources::Products#list
    class ProductListParams < WhopSDK::Internal::Type::BaseModel
      extend WhopSDK::Internal::Type::RequestParameters::Converter
      include WhopSDK::Internal::Type::RequestParameters

      # @!attribute company_id
      #   The unique identifier of the company to list products for.
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

      # @!attribute created_after
      #   Only return products created after this datetime.
      #
      #   @return [Time, nil]
      optional :created_after, Time, nil?: true

      # @!attribute created_before
      #   Only return products created before this datetime.
      #
      #   @return [Time, nil]
      optional :created_before, Time, nil?: true

      # @!attribute direction
      #   The direction of the sort.
      #
      #   @return [Symbol, WhopSDK::Models::Direction, nil]
      optional :direction, enum: -> { WhopSDK::Direction }, nil?: true

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
      #   @return [Symbol, WhopSDK::Models::ProductListParams::Order, nil]
      optional :order, enum: -> { WhopSDK::ProductListParams::Order }, nil?: true

      # @!attribute product_types
      #   Filter to only products matching these type classifications.
      #
      #   @return [Array<Symbol, WhopSDK::Models::AccessPassType>, nil]
      optional :product_types,
               -> { WhopSDK::Internal::Type::ArrayOf[enum: WhopSDK::AccessPassType] },
               nil?: true

      # @!attribute visibilities
      #   Filter to only products matching these visibility states.
      #
      #   @return [Array<Symbol, WhopSDK::Models::VisibilityFilter>, nil]
      optional :visibilities,
               -> { WhopSDK::Internal::Type::ArrayOf[enum: WhopSDK::VisibilityFilter] },
               nil?: true

      # @!method initialize(company_id:, after: nil, before: nil, created_after: nil, created_before: nil, direction: nil, first: nil, last: nil, order: nil, product_types: nil, visibilities: nil, request_options: {})
      #   @param company_id [String] The unique identifier of the company to list products for.
      #
      #   @param after [String, nil] Returns the elements in the list that come after the specified cursor.
      #
      #   @param before [String, nil] Returns the elements in the list that come before the specified cursor.
      #
      #   @param created_after [Time, nil] Only return products created after this datetime.
      #
      #   @param created_before [Time, nil] Only return products created before this datetime.
      #
      #   @param direction [Symbol, WhopSDK::Models::Direction, nil] The direction of the sort.
      #
      #   @param first [Integer, nil] Returns the first _n_ elements from the list.
      #
      #   @param last [Integer, nil] Returns the last _n_ elements from the list.
      #
      #   @param order [Symbol, WhopSDK::Models::ProductListParams::Order, nil] The ways a relation of AccessPasses can be ordered
      #
      #   @param product_types [Array<Symbol, WhopSDK::Models::AccessPassType>, nil] Filter to only products matching these type classifications.
      #
      #   @param visibilities [Array<Symbol, WhopSDK::Models::VisibilityFilter>, nil] Filter to only products matching these visibility states.
      #
      #   @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}]

      # The ways a relation of AccessPasses can be ordered
      module Order
        extend WhopSDK::Internal::Type::Enum

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
