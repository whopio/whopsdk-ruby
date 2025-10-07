# frozen_string_literal: true

module Whopsdk
  module Models
    # @see Whopsdk::Resources::Plans#list
    class PlanListParams < Whopsdk::Internal::Type::BaseModel
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
      #   The ways a relation of Plans can be ordered
      #
      #   @return [Symbol, Whopsdk::Models::PlanListParams::Order, nil]
      optional :order, enum: -> { Whopsdk::PlanListParams::Order }, nil?: true

      # @!attribute plan_types
      #   The plan type to filter the plans by
      #
      #   @return [Array<Symbol, Whopsdk::Models::PlanType>, nil]
      optional :plan_types, -> { Whopsdk::Internal::Type::ArrayOf[enum: Whopsdk::PlanType] }, nil?: true

      # @!attribute product_ids
      #   The access pass IDs to filter the plans by
      #
      #   @return [Array<String>, nil]
      optional :product_ids, Whopsdk::Internal::Type::ArrayOf[String], nil?: true

      # @!attribute release_methods
      #   The release method to filter the plans by
      #
      #   @return [Array<Symbol, Whopsdk::Models::ReleaseMethod>, nil]
      optional :release_methods,
               -> { Whopsdk::Internal::Type::ArrayOf[enum: Whopsdk::ReleaseMethod] },
               nil?: true

      # @!attribute visibilities
      #   The visibility to filter the plans by
      #
      #   @return [Array<Symbol, Whopsdk::Models::VisibilityFilter>, nil]
      optional :visibilities,
               -> { Whopsdk::Internal::Type::ArrayOf[enum: Whopsdk::VisibilityFilter] },
               nil?: true

      # @!method initialize(company_id:, after: nil, before: nil, direction: nil, first: nil, last: nil, order: nil, plan_types: nil, product_ids: nil, release_methods: nil, visibilities: nil, request_options: {})
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
      #   @param order [Symbol, Whopsdk::Models::PlanListParams::Order, nil] The ways a relation of Plans can be ordered
      #
      #   @param plan_types [Array<Symbol, Whopsdk::Models::PlanType>, nil] The plan type to filter the plans by
      #
      #   @param product_ids [Array<String>, nil] The access pass IDs to filter the plans by
      #
      #   @param release_methods [Array<Symbol, Whopsdk::Models::ReleaseMethod>, nil] The release method to filter the plans by
      #
      #   @param visibilities [Array<Symbol, Whopsdk::Models::VisibilityFilter>, nil] The visibility to filter the plans by
      #
      #   @param request_options [Whopsdk::RequestOptions, Hash{Symbol=>Object}]

      # The ways a relation of Plans can be ordered
      module Order
        extend Whopsdk::Internal::Type::Enum

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
