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
      #   Only return plans created after this timestamp.
      #
      #   @return [Time, nil]
      optional :created_after, Time, nil?: true

      # @!attribute created_before
      #   Only return plans created before this timestamp.
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
      #   The ways a relation of Plans can be ordered
      #
      #   @return [Symbol, WhopSDK::Models::PlanListParams::Order, nil]
      optional :order, enum: -> { WhopSDK::PlanListParams::Order }, nil?: true

      # @!attribute plan_types
      #   Filter to only plans matching these billing types.
      #
      #   @return [Array<Symbol, WhopSDK::Models::PlanType>, nil]
      optional :plan_types, -> { WhopSDK::Internal::Type::ArrayOf[enum: WhopSDK::PlanType] }, nil?: true

      # @!attribute product_ids
      #   Filter to only plans belonging to these product identifiers.
      #
      #   @return [Array<String>, nil]
      optional :product_ids, WhopSDK::Internal::Type::ArrayOf[String], nil?: true

      # @!attribute release_methods
      #   Filter to only plans matching these release methods.
      #
      #   @return [Array<Symbol, WhopSDK::Models::ReleaseMethod>, nil]
      optional :release_methods,
               -> { WhopSDK::Internal::Type::ArrayOf[enum: WhopSDK::ReleaseMethod] },
               nil?: true

      # @!attribute visibilities
      #   Filter to only plans matching these visibility states.
      #
      #   @return [Array<Symbol, WhopSDK::Models::VisibilityFilter>, nil]
      optional :visibilities,
               -> { WhopSDK::Internal::Type::ArrayOf[enum: WhopSDK::VisibilityFilter] },
               nil?: true

      # @!method initialize(company_id:, after: nil, before: nil, created_after: nil, created_before: nil, direction: nil, first: nil, last: nil, order: nil, plan_types: nil, product_ids: nil, release_methods: nil, visibilities: nil, request_options: {})
      #   @param company_id [String] The unique identifier of the company to list plans for.
      #
      #   @param after [String, nil] Returns the elements in the list that come after the specified cursor.
      #
      #   @param before [String, nil] Returns the elements in the list that come before the specified cursor.
      #
      #   @param created_after [Time, nil] Only return plans created after this timestamp.
      #
      #   @param created_before [Time, nil] Only return plans created before this timestamp.
      #
      #   @param direction [Symbol, WhopSDK::Models::Direction, nil] The direction of the sort.
      #
      #   @param first [Integer, nil] Returns the first _n_ elements from the list.
      #
      #   @param last [Integer, nil] Returns the last _n_ elements from the list.
      #
      #   @param order [Symbol, WhopSDK::Models::PlanListParams::Order, nil] The ways a relation of Plans can be ordered
      #
      #   @param plan_types [Array<Symbol, WhopSDK::Models::PlanType>, nil] Filter to only plans matching these billing types.
      #
      #   @param product_ids [Array<String>, nil] Filter to only plans belonging to these product identifiers.
      #
      #   @param release_methods [Array<Symbol, WhopSDK::Models::ReleaseMethod>, nil] Filter to only plans matching these release methods.
      #
      #   @param visibilities [Array<Symbol, WhopSDK::Models::VisibilityFilter>, nil] Filter to only plans matching these visibility states.
      #
      #   @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}]

      # The ways a relation of Plans can be ordered
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
