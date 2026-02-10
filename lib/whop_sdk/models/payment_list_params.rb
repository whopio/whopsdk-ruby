# frozen_string_literal: true

module WhopSDK
  module Models
    # @see WhopSDK::Resources::Payments#list
    class PaymentListParams < WhopSDK::Internal::Type::BaseModel
      extend WhopSDK::Internal::Type::RequestParameters::Converter
      include WhopSDK::Internal::Type::RequestParameters

      # @!attribute company_id
      #   The unique identifier of the company to list payments for.
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

      # @!attribute billing_reasons
      #   Filter payments by their billing reason.
      #
      #   @return [Array<Symbol, WhopSDK::Models::BillingReasons>, nil]
      optional :billing_reasons,
               -> { WhopSDK::Internal::Type::ArrayOf[enum: WhopSDK::BillingReasons] },
               nil?: true

      # @!attribute created_after
      #   Only return payments created after this timestamp.
      #
      #   @return [Time, nil]
      optional :created_after, Time, nil?: true

      # @!attribute created_before
      #   Only return payments created before this timestamp.
      #
      #   @return [Time, nil]
      optional :created_before, Time, nil?: true

      # @!attribute currencies
      #   Filter payments by their currency code.
      #
      #   @return [Array<Symbol, WhopSDK::Models::Currency>, nil]
      optional :currencies, -> { WhopSDK::Internal::Type::ArrayOf[enum: WhopSDK::Currency] }, nil?: true

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

      # @!attribute include_free
      #   Whether to include payments with a zero amount.
      #
      #   @return [Boolean, nil]
      optional :include_free, WhopSDK::Internal::Type::Boolean, nil?: true

      # @!attribute last
      #   Returns the last _n_ elements from the list.
      #
      #   @return [Integer, nil]
      optional :last, Integer, nil?: true

      # @!attribute order
      #   The order to sort the results by.
      #
      #   @return [Symbol, WhopSDK::Models::PaymentListParams::Order, nil]
      optional :order, enum: -> { WhopSDK::PaymentListParams::Order }, nil?: true

      # @!attribute plan_ids
      #   Filter payments to only those associated with these specific plan identifiers.
      #
      #   @return [Array<String>, nil]
      optional :plan_ids, WhopSDK::Internal::Type::ArrayOf[String], nil?: true

      # @!attribute product_ids
      #   Filter payments to only those associated with these specific product
      #   identifiers.
      #
      #   @return [Array<String>, nil]
      optional :product_ids, WhopSDK::Internal::Type::ArrayOf[String], nil?: true

      # @!attribute statuses
      #   Filter payments by their current status.
      #
      #   @return [Array<Symbol, WhopSDK::Models::ReceiptStatus>, nil]
      optional :statuses, -> { WhopSDK::Internal::Type::ArrayOf[enum: WhopSDK::ReceiptStatus] }, nil?: true

      # @!attribute substatuses
      #   Filter payments by their current substatus for more granular filtering.
      #
      #   @return [Array<Symbol, WhopSDK::Models::FriendlyReceiptStatus>, nil]
      optional :substatuses,
               -> { WhopSDK::Internal::Type::ArrayOf[enum: WhopSDK::FriendlyReceiptStatus] },
               nil?: true

      # @!method initialize(company_id:, after: nil, before: nil, billing_reasons: nil, created_after: nil, created_before: nil, currencies: nil, direction: nil, first: nil, include_free: nil, last: nil, order: nil, plan_ids: nil, product_ids: nil, statuses: nil, substatuses: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {WhopSDK::Models::PaymentListParams} for more details.
      #
      #   @param company_id [String] The unique identifier of the company to list payments for.
      #
      #   @param after [String, nil] Returns the elements in the list that come after the specified cursor.
      #
      #   @param before [String, nil] Returns the elements in the list that come before the specified cursor.
      #
      #   @param billing_reasons [Array<Symbol, WhopSDK::Models::BillingReasons>, nil] Filter payments by their billing reason.
      #
      #   @param created_after [Time, nil] Only return payments created after this timestamp.
      #
      #   @param created_before [Time, nil] Only return payments created before this timestamp.
      #
      #   @param currencies [Array<Symbol, WhopSDK::Models::Currency>, nil] Filter payments by their currency code.
      #
      #   @param direction [Symbol, WhopSDK::Models::Direction, nil] The direction of the sort.
      #
      #   @param first [Integer, nil] Returns the first _n_ elements from the list.
      #
      #   @param include_free [Boolean, nil] Whether to include payments with a zero amount.
      #
      #   @param last [Integer, nil] Returns the last _n_ elements from the list.
      #
      #   @param order [Symbol, WhopSDK::Models::PaymentListParams::Order, nil] The order to sort the results by.
      #
      #   @param plan_ids [Array<String>, nil] Filter payments to only those associated with these specific plan identifiers.
      #
      #   @param product_ids [Array<String>, nil] Filter payments to only those associated with these specific product identifiers
      #
      #   @param statuses [Array<Symbol, WhopSDK::Models::ReceiptStatus>, nil] Filter payments by their current status.
      #
      #   @param substatuses [Array<Symbol, WhopSDK::Models::FriendlyReceiptStatus>, nil] Filter payments by their current substatus for more granular filtering.
      #
      #   @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}]

      # The order to sort the results by.
      module Order
        extend WhopSDK::Internal::Type::Enum

        FINAL_AMOUNT = :final_amount
        CREATED_AT = :created_at
        PAID_AT = :paid_at

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
