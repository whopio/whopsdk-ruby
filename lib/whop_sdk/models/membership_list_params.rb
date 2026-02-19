# frozen_string_literal: true

module WhopSDK
  module Models
    # @see WhopSDK::Resources::Memberships#list
    class MembershipListParams < WhopSDK::Internal::Type::BaseModel
      extend WhopSDK::Internal::Type::RequestParameters::Converter
      include WhopSDK::Internal::Type::RequestParameters

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

      # @!attribute cancel_options
      #   Filter to only memberships matching these cancellation reasons.
      #
      #   @return [Array<Symbol, WhopSDK::Models::CancelOptions>, nil]
      optional :cancel_options,
               -> { WhopSDK::Internal::Type::ArrayOf[enum: WhopSDK::CancelOptions] },
               nil?: true

      # @!attribute company_id
      #   The unique identifier of the company to list memberships for. Required when
      #   using an API key.
      #
      #   @return [String, nil]
      optional :company_id, String, nil?: true

      # @!attribute created_after
      #   Only return memberships created after this timestamp.
      #
      #   @return [Time, nil]
      optional :created_after, Time, nil?: true

      # @!attribute created_before
      #   Only return memberships created before this timestamp.
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
      #   Which columns can be used to sort.
      #
      #   @return [Symbol, WhopSDK::Models::MembershipListParams::Order, nil]
      optional :order, enum: -> { WhopSDK::MembershipListParams::Order }, nil?: true

      # @!attribute plan_ids
      #   Filter to only memberships belonging to these plan identifiers.
      #
      #   @return [Array<String>, nil]
      optional :plan_ids, WhopSDK::Internal::Type::ArrayOf[String], nil?: true

      # @!attribute product_ids
      #   Filter to only memberships belonging to these product identifiers.
      #
      #   @return [Array<String>, nil]
      optional :product_ids, WhopSDK::Internal::Type::ArrayOf[String], nil?: true

      # @!attribute promo_code_ids
      #   Filter to only memberships that used these promo code identifiers.
      #
      #   @return [Array<String>, nil]
      optional :promo_code_ids, WhopSDK::Internal::Type::ArrayOf[String], nil?: true

      # @!attribute statuses
      #   Filter to only memberships matching these statuses.
      #
      #   @return [Array<Symbol, WhopSDK::Models::MembershipStatus>, nil]
      optional :statuses, -> { WhopSDK::Internal::Type::ArrayOf[enum: WhopSDK::MembershipStatus] }, nil?: true

      # @!attribute user_ids
      #   Filter to only memberships belonging to these user identifiers.
      #
      #   @return [Array<String>, nil]
      optional :user_ids, WhopSDK::Internal::Type::ArrayOf[String], nil?: true

      # @!method initialize(after: nil, before: nil, cancel_options: nil, company_id: nil, created_after: nil, created_before: nil, direction: nil, first: nil, last: nil, order: nil, plan_ids: nil, product_ids: nil, promo_code_ids: nil, statuses: nil, user_ids: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {WhopSDK::Models::MembershipListParams} for more details.
      #
      #   @param after [String, nil] Returns the elements in the list that come after the specified cursor.
      #
      #   @param before [String, nil] Returns the elements in the list that come before the specified cursor.
      #
      #   @param cancel_options [Array<Symbol, WhopSDK::Models::CancelOptions>, nil] Filter to only memberships matching these cancellation reasons.
      #
      #   @param company_id [String, nil] The unique identifier of the company to list memberships for. Required when usin
      #
      #   @param created_after [Time, nil] Only return memberships created after this timestamp.
      #
      #   @param created_before [Time, nil] Only return memberships created before this timestamp.
      #
      #   @param direction [Symbol, WhopSDK::Models::Direction, nil] The direction of the sort.
      #
      #   @param first [Integer, nil] Returns the first _n_ elements from the list.
      #
      #   @param last [Integer, nil] Returns the last _n_ elements from the list.
      #
      #   @param order [Symbol, WhopSDK::Models::MembershipListParams::Order, nil] Which columns can be used to sort.
      #
      #   @param plan_ids [Array<String>, nil] Filter to only memberships belonging to these plan identifiers.
      #
      #   @param product_ids [Array<String>, nil] Filter to only memberships belonging to these product identifiers.
      #
      #   @param promo_code_ids [Array<String>, nil] Filter to only memberships that used these promo code identifiers.
      #
      #   @param statuses [Array<Symbol, WhopSDK::Models::MembershipStatus>, nil] Filter to only memberships matching these statuses.
      #
      #   @param user_ids [Array<String>, nil] Filter to only memberships belonging to these user identifiers.
      #
      #   @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}]

      # Which columns can be used to sort.
      module Order
        extend WhopSDK::Internal::Type::Enum

        ID = :id
        CREATED_AT = :created_at
        STATUS = :status
        CANCELED_AT = :canceled_at
        DATE_JOINED = :date_joined
        TOTAL_SPEND = :total_spend

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
