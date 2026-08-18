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
      optional :after, String

      # @!attribute before
      #   Returns the elements in the list that come before the specified cursor.
      #
      #   @return [String, nil]
      optional :before, String

      # @!attribute cancel_options
      #   Filter to only memberships matching these cancellation reasons.
      #
      #   @return [Array<Symbol, WhopSDK::Models::CancelOptions>, nil]
      optional :cancel_options, -> { WhopSDK::Internal::Type::ArrayOf[enum: WhopSDK::CancelOptions] }

      # @!attribute cancelation_status
      #   Filter memberships by whether the customer is canceling, left, or was won back.
      #
      #   @return [Symbol, WhopSDK::Models::MembershipListParams::CancelationStatus, nil]
      optional :cancelation_status, enum: -> { WhopSDK::MembershipListParams::CancelationStatus }

      # @!attribute company_id
      #   The unique identifier of the company to list memberships for. Required when
      #   using an API key.
      #
      #   @return [String, nil]
      optional :company_id, String

      # @!attribute created_after
      #   Only return memberships created after this timestamp.
      #
      #   @return [Time, nil]
      optional :created_after, Time

      # @!attribute created_before
      #   Only return memberships created before this timestamp.
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

      # @!attribute has_cancelation_reason
      #   Filter memberships by whether they have a structured or free-text cancellation
      #   reason.
      #
      #   @return [Boolean, nil]
      optional :has_cancelation_reason, WhopSDK::Internal::Type::Boolean

      # @!attribute include_text_only_cancelation_reasons
      #   When filtering by the other cancellation option, also include memberships that
      #   only have a free-text cancellation reason.
      #
      #   @return [Boolean, nil]
      optional :include_text_only_cancelation_reasons, WhopSDK::Internal::Type::Boolean

      # @!attribute last
      #   Returns the last _n_ elements from the list.
      #
      #   @return [Integer, nil]
      optional :last, Integer

      # @!attribute order
      #   The field to sort results by. Null uses the default sort order.
      #
      #   @return [Symbol, WhopSDK::Models::MembershipListParams::Order, nil]
      optional :order, enum: -> { WhopSDK::MembershipListParams::Order }

      # @!attribute plan_ids
      #   Filter to only memberships belonging to these plan identifiers.
      #
      #   @return [Array<String>, nil]
      optional :plan_ids, WhopSDK::Internal::Type::ArrayOf[String]

      # @!attribute product_ids
      #   Filter to only memberships belonging to these product identifiers.
      #
      #   @return [Array<String>, nil]
      optional :product_ids, WhopSDK::Internal::Type::ArrayOf[String]

      # @!attribute promo_code_ids
      #   Filter to only memberships that used these promo code identifiers.
      #
      #   @return [Array<String>, nil]
      optional :promo_code_ids, WhopSDK::Internal::Type::ArrayOf[String]

      # @!attribute statuses
      #   Filter to only memberships matching these statuses.
      #
      #   @return [Array<Symbol, WhopSDK::Models::MembershipStatus>, nil]
      optional :statuses, -> { WhopSDK::Internal::Type::ArrayOf[enum: WhopSDK::MembershipStatus] }

      # @!attribute user_ids
      #   Filter to only memberships belonging to these user identifiers.
      #
      #   @return [Array<String>, nil]
      optional :user_ids, WhopSDK::Internal::Type::ArrayOf[String]

      # @!method initialize(after: nil, before: nil, cancel_options: nil, cancelation_status: nil, company_id: nil, created_after: nil, created_before: nil, direction: nil, first: nil, has_cancelation_reason: nil, include_text_only_cancelation_reasons: nil, last: nil, order: nil, plan_ids: nil, product_ids: nil, promo_code_ids: nil, statuses: nil, user_ids: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {WhopSDK::Models::MembershipListParams} for more details.
      #
      #   @param after [String] Returns the elements in the list that come after the specified cursor.
      #
      #   @param before [String] Returns the elements in the list that come before the specified cursor.
      #
      #   @param cancel_options [Array<Symbol, WhopSDK::Models::CancelOptions>] Filter to only memberships matching these cancellation reasons.
      #
      #   @param cancelation_status [Symbol, WhopSDK::Models::MembershipListParams::CancelationStatus] Filter memberships by whether the customer is canceling, left, or was won back.
      #
      #   @param company_id [String] The unique identifier of the company to list memberships for. Required when usin
      #
      #   @param created_after [Time] Only return memberships created after this timestamp.
      #
      #   @param created_before [Time] Only return memberships created before this timestamp.
      #
      #   @param direction [Symbol, WhopSDK::Models::Direction] The sort direction for results. Defaults to descending.
      #
      #   @param first [Integer] Returns the first _n_ elements from the list.
      #
      #   @param has_cancelation_reason [Boolean] Filter memberships by whether they have a structured or free-text cancellation r
      #
      #   @param include_text_only_cancelation_reasons [Boolean] When filtering by the other cancellation option, also include memberships that o
      #
      #   @param last [Integer] Returns the last _n_ elements from the list.
      #
      #   @param order [Symbol, WhopSDK::Models::MembershipListParams::Order] The field to sort results by. Null uses the default sort order.
      #
      #   @param plan_ids [Array<String>] Filter to only memberships belonging to these plan identifiers.
      #
      #   @param product_ids [Array<String>] Filter to only memberships belonging to these product identifiers.
      #
      #   @param promo_code_ids [Array<String>] Filter to only memberships that used these promo code identifiers.
      #
      #   @param statuses [Array<Symbol, WhopSDK::Models::MembershipStatus>] Filter to only memberships matching these statuses.
      #
      #   @param user_ids [Array<String>] Filter to only memberships belonging to these user identifiers.
      #
      #   @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}]

      # Filter memberships by whether the customer is canceling, left, or was won back.
      module CancelationStatus
        extend WhopSDK::Internal::Type::Enum

        WON_BACK = :won_back
        LEFT = :left
        CANCELING = :canceling

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # The field to sort results by. Null uses the default sort order.
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
