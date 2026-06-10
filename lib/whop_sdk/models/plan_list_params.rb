# frozen_string_literal: true

module WhopSDK
  module Models
    # @see WhopSDK::Resources::Plans#list
    class PlanListParams < WhopSDK::Internal::Type::BaseModel
      extend WhopSDK::Internal::Type::RequestParameters::Converter
      include WhopSDK::Internal::Type::RequestParameters

      # @!attribute company_id
      #   The unique identifier of the company to list plans for.
      #
      #   @return [String]
      required :company_id, String

      # @!attribute after
      #   A cursor; returns plans after this position.
      #
      #   @return [String, nil]
      optional :after, String

      # @!attribute before
      #   A cursor; returns plans before this position.
      #
      #   @return [String, nil]
      optional :before, String

      # @!attribute created_after
      #   Only return plans created after this timestamp.
      #
      #   @return [String, nil]
      optional :created_after, String

      # @!attribute created_before
      #   Only return plans created before this timestamp.
      #
      #   @return [String, nil]
      optional :created_before, String

      # @!attribute direction
      #   The sort direction for results. Defaults to descending.
      #
      #   @return [Symbol, WhopSDK::Models::PlanListParams::Direction, nil]
      optional :direction, enum: -> { WhopSDK::PlanListParams::Direction }

      # @!attribute first
      #   The number of plans to return (default and max 100).
      #
      #   @return [Integer, nil]
      optional :first, Integer

      # @!attribute last
      #   The number of plans to return from the end of the range.
      #
      #   @return [Integer, nil]
      optional :last, Integer

      # @!attribute order
      #   The field to sort results by. Defaults to created_at.
      #
      #   @return [Symbol, WhopSDK::Models::PlanListParams::Order, nil]
      optional :order, enum: -> { WhopSDK::PlanListParams::Order }

      # @!attribute plan_types
      #   Filter to only plans matching these billing types.
      #
      #   @return [Array<String>, nil]
      optional :plan_types, WhopSDK::Internal::Type::ArrayOf[String]

      # @!attribute product_ids
      #   Filter to only plans belonging to these product identifiers.
      #
      #   @return [Array<String>, nil]
      optional :product_ids, WhopSDK::Internal::Type::ArrayOf[String]

      # @!attribute release_methods
      #   Filter to only plans matching these release methods.
      #
      #   @return [Array<String>, nil]
      optional :release_methods, WhopSDK::Internal::Type::ArrayOf[String]

      # @!attribute visibilities
      #   Filter to only plans matching these visibility states.
      #
      #   @return [Array<String>, nil]
      optional :visibilities, WhopSDK::Internal::Type::ArrayOf[String]

      # @!method initialize(company_id:, after: nil, before: nil, created_after: nil, created_before: nil, direction: nil, first: nil, last: nil, order: nil, plan_types: nil, product_ids: nil, release_methods: nil, visibilities: nil, request_options: {})
      #   @param company_id [String] The unique identifier of the company to list plans for.
      #
      #   @param after [String] A cursor; returns plans after this position.
      #
      #   @param before [String] A cursor; returns plans before this position.
      #
      #   @param created_after [String] Only return plans created after this timestamp.
      #
      #   @param created_before [String] Only return plans created before this timestamp.
      #
      #   @param direction [Symbol, WhopSDK::Models::PlanListParams::Direction] The sort direction for results. Defaults to descending.
      #
      #   @param first [Integer] The number of plans to return (default and max 100).
      #
      #   @param last [Integer] The number of plans to return from the end of the range.
      #
      #   @param order [Symbol, WhopSDK::Models::PlanListParams::Order] The field to sort results by. Defaults to created_at.
      #
      #   @param plan_types [Array<String>] Filter to only plans matching these billing types.
      #
      #   @param product_ids [Array<String>] Filter to only plans belonging to these product identifiers.
      #
      #   @param release_methods [Array<String>] Filter to only plans matching these release methods.
      #
      #   @param visibilities [Array<String>] Filter to only plans matching these visibility states.
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

      # The field to sort results by. Defaults to created_at.
      module Order
        extend WhopSDK::Internal::Type::Enum

        ID = :id
        ACTIVE_MEMBERS_COUNT = :active_members_count
        CREATED_AT = :created_at
        INTERNAL_NOTES = :internal_notes
        EXPIRES_AT = :expires_at

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
