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

      # @!attribute access_pass_types
      #   Filter to only products matching these types.
      #
      #   @return [Array<String>, nil]
      optional :access_pass_types, WhopSDK::Internal::Type::ArrayOf[String]

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

      # @!attribute last
      #   The number of products to return from the end of the range.
      #
      #   @return [Integer, nil]
      optional :last, Integer

      # @!attribute order
      #   The field to sort results by. Defaults to created_at.
      #
      #   @return [String, nil]
      optional :order, String

      # @!attribute visibilities
      #   Filter to only products matching these visibility states.
      #
      #   @return [Array<String>, nil]
      optional :visibilities, WhopSDK::Internal::Type::ArrayOf[String]

      # @!method initialize(company_id:, access_pass_types: nil, after: nil, before: nil, direction: nil, first: nil, last: nil, order: nil, visibilities: nil, request_options: {})
      #   @param company_id [String] The unique identifier of the company to list products for.
      #
      #   @param access_pass_types [Array<String>] Filter to only products matching these types.
      #
      #   @param after [String] A cursor; returns products after this position.
      #
      #   @param before [String] A cursor; returns products before this position.
      #
      #   @param direction [Symbol, WhopSDK::Models::ProductListParams::Direction] The sort direction for results. Defaults to descending.
      #
      #   @param first [Integer] The number of products to return (default and max 100).
      #
      #   @param last [Integer] The number of products to return from the end of the range.
      #
      #   @param order [String] The field to sort results by. Defaults to created_at.
      #
      #   @param visibilities [Array<String>] Filter to only products matching these visibility states.
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
    end
  end
end
