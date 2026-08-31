# frozen_string_literal: true

module WhopSDK
  module Models
    # @see WhopSDK::Resources::Products#list
    class ProductListParams < WhopSDK::Internal::Type::BaseModel
      extend WhopSDK::Internal::Type::RequestParameters::Converter
      include WhopSDK::Internal::Type::RequestParameters

      # @!attribute access_pass_types
      #   Filter to only products matching these types.
      #
      #   @return [Array<String>, nil]
      optional :access_pass_types, WhopSDK::Internal::Type::ArrayOf[String]

      # @!attribute account_id
      #   The unique identifier of the account to list products for. Omit to search the
      #   public marketplace.
      #
      #   @return [String, nil]
      optional :account_id, String

      # @!attribute after
      #   A cursor; returns products after this position.
      #
      #   @return [String, nil]
      optional :after, String

      # @!attribute before
      #   A cursor; returns products before this position.
      #
      #   @return [String, nil]
      optional :before, String

      # @!attribute created_after
      #   Only return products created after this ISO 8601 timestamp.
      #
      #   @return [String, nil]
      optional :created_after, String

      # @!attribute created_before
      #   Only return products created before this ISO 8601 timestamp.
      #
      #   @return [String, nil]
      optional :created_before, String

      # @!attribute direction
      #   The sort direction for results. Defaults to descending.
      #
      #   @return [Symbol, WhopSDK::Models::ProductListParams::Direction, nil]
      optional :direction, enum: -> { WhopSDK::ProductListParams::Direction }

      # @!attribute first
      #   The number of products to return (default and max 100).
      #
      #   @return [Integer, nil]
      optional :first, Integer

      # @!attribute labels
      #   Filter to only products carrying all of these labels. Labels are matched
      #   lowercased.
      #
      #   @return [Array<String>, nil]
      optional :labels, WhopSDK::Internal::Type::ArrayOf[String]

      # @!attribute last
      #   The number of products to return from the end of the range.
      #
      #   @return [Integer, nil]
      optional :last, Integer

      # @!attribute marketplace_category_route
      #   Only return marketplace products assigned to this category route, such as
      #   `trading`.
      #
      #   @return [String, nil]
      optional :marketplace_category_route, String

      # @!attribute order
      #   The field to sort results by. Account lists default to `created_at`. Marketplace
      #   lists default to `discoverable_at` and accept `created_at` or `discoverable_at`.
      #   Cannot be combined with `query`.
      #
      #   @return [String, nil]
      optional :order, String

      # @!attribute plan_types
      #   Filter to products with a buyable plan of these billing models, such as
      #   `one_time` or `renewal`.
      #
      #   @return [Array<Symbol, WhopSDK::Models::ProductListParams::PlanType>, nil]
      optional :plan_types, -> { WhopSDK::Internal::Type::ArrayOf[enum: WhopSDK::ProductListParams::PlanType] }

      # @!attribute price_maximum
      #   Only return products whose advertised buyable plan has a displayed price of at
      #   most this amount. Recurring plans use renewal price.
      #
      #   @return [Float, nil]
      optional :price_maximum, Float

      # @!attribute price_minimum
      #   Only return products whose advertised buyable plan has a displayed price of at
      #   least this amount. Recurring plans use renewal price.
      #
      #   @return [Float, nil]
      optional :price_minimum, Float

      # @!attribute query
      #   Ranked search against product title and headline. Omit to browse by recency.
      #
      #   @return [String, nil]
      optional :query, String

      # @!attribute visibilities
      #   Filter to only products matching these visibility states. Ignored on the public
      #   marketplace list, which only returns visible products.
      #
      #   @return [Array<String>, nil]
      optional :visibilities, WhopSDK::Internal::Type::ArrayOf[String]

      # @!attribute api_version_date
      #
      #   @return [String, nil]
      optional :api_version_date, String

      # @!method initialize(access_pass_types: nil, account_id: nil, after: nil, before: nil, created_after: nil, created_before: nil, direction: nil, first: nil, labels: nil, last: nil, marketplace_category_route: nil, order: nil, plan_types: nil, price_maximum: nil, price_minimum: nil, query: nil, visibilities: nil, api_version_date: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {WhopSDK::Models::ProductListParams} for more details.
      #
      #   @param access_pass_types [Array<String>] Filter to only products matching these types.
      #
      #   @param account_id [String] The unique identifier of the account to list products for. Omit to search the pu
      #
      #   @param after [String] A cursor; returns products after this position.
      #
      #   @param before [String] A cursor; returns products before this position.
      #
      #   @param created_after [String] Only return products created after this ISO 8601 timestamp.
      #
      #   @param created_before [String] Only return products created before this ISO 8601 timestamp.
      #
      #   @param direction [Symbol, WhopSDK::Models::ProductListParams::Direction] The sort direction for results. Defaults to descending.
      #
      #   @param first [Integer] The number of products to return (default and max 100).
      #
      #   @param labels [Array<String>] Filter to only products carrying all of these labels. Labels are matched lowerca
      #
      #   @param last [Integer] The number of products to return from the end of the range.
      #
      #   @param marketplace_category_route [String] Only return marketplace products assigned to this category route, such as `tradi
      #
      #   @param order [String] The field to sort results by. Account lists default to `created_at`. Marketplace
      #
      #   @param plan_types [Array<Symbol, WhopSDK::Models::ProductListParams::PlanType>] Filter to products with a buyable plan of these billing models, such as `one_tim
      #
      #   @param price_maximum [Float] Only return products whose advertised buyable plan has a displayed price of at m
      #
      #   @param price_minimum [Float] Only return products whose advertised buyable plan has a displayed price of at l
      #
      #   @param query [String] Ranked search against product title and headline. Omit to browse by recency.
      #
      #   @param visibilities [Array<String>] Filter to only products matching these visibility states. Ignored on the public
      #
      #   @param api_version_date [String]
      #
      #   @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}]

      # The sort direction for results. Defaults to descending.
      module Direction
        extend WhopSDK::Internal::Type::Enum

        ASC = :asc
        DESC = :desc

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      module PlanType
        extend WhopSDK::Internal::Type::Enum

        RENEWAL = :renewal
        ONE_TIME = :one_time

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
