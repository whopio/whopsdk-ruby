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
      optional :after, String

      # @!attribute before
      #   Returns the elements in the list that come before the specified cursor.
      #
      #   @return [String, nil]
      optional :before, String

      # @!attribute created_after
      #   Only return products created after this timestamp.
      #
      #   @return [Time, nil]
      optional :created_after, Time

      # @!attribute created_before
      #   Only return products created before this timestamp.
      #
      #   @return [Time, nil]
      optional :created_before, Time

      # @!attribute direction
      #   The sort direction for results. Defaults to descending.
      #
      #   @return [Symbol, WhopSDK::Models::Direction, nil]
      optional :direction, enum: -> { WhopSDK::Direction }

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

      # @!attribute order
      #   The field to sort results by. Defaults to created_at.
      #
      #   @return [Symbol, WhopSDK::Models::ProductListParams::Order, nil]
      optional :order, enum: -> { WhopSDK::ProductListParams::Order }

      # @!attribute product_types
      #   Filter to only products matching these type classifications.
      #
      #   @return [Array<Symbol, WhopSDK::Models::AccessPassType>, nil]
      optional :product_types, -> { WhopSDK::Internal::Type::ArrayOf[enum: WhopSDK::AccessPassType] }

      # @!attribute visibilities
      #   Filter to only products matching these visibility states.
      #
      #   @return [Array<Symbol, WhopSDK::Models::VisibilityFilter>, nil]
      optional :visibilities, -> { WhopSDK::Internal::Type::ArrayOf[enum: WhopSDK::VisibilityFilter] }

      # @!method initialize(company_id:, after: nil, before: nil, created_after: nil, created_before: nil, direction: nil, first: nil, last: nil, order: nil, product_types: nil, visibilities: nil, request_options: {})
      #   @param company_id [String] The unique identifier of the company to list products for.
      #
      #   @param after [String] Returns the elements in the list that come after the specified cursor.
      #
      #   @param before [String] Returns the elements in the list that come before the specified cursor.
      #
      #   @param created_after [Time] Only return products created after this timestamp.
      #
      #   @param created_before [Time] Only return products created before this timestamp.
      #
      #   @param direction [Symbol, WhopSDK::Models::Direction] The sort direction for results. Defaults to descending.
      #
      #   @param first [Integer] Returns the first _n_ elements from the list.
      #
      #   @param last [Integer] Returns the last _n_ elements from the list.
      #
      #   @param order [Symbol, WhopSDK::Models::ProductListParams::Order] The field to sort results by. Defaults to created_at.
      #
      #   @param product_types [Array<Symbol, WhopSDK::Models::AccessPassType>] Filter to only products matching these type classifications.
      #
      #   @param visibilities [Array<Symbol, WhopSDK::Models::VisibilityFilter>] Filter to only products matching these visibility states.
      #
      #   @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}]

      # The field to sort results by. Defaults to created_at.
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
