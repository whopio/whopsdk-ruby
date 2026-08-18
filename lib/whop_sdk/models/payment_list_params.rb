# frozen_string_literal: true

module WhopSDK
  module Models
    # @see WhopSDK::Resources::Payments#list
    class PaymentListParams < WhopSDK::Internal::Type::BaseModel
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

      # @!attribute billing_reasons
      #   Filter payments by their billing reason.
      #
      #   @return [Array<Symbol, WhopSDK::Models::BillingReasons>, nil]
      optional :billing_reasons, -> { WhopSDK::Internal::Type::ArrayOf[enum: WhopSDK::BillingReasons] }

      # @!attribute checkout_configuration_ids
      #   Only return payments from these checkout configurations.
      #
      #   @return [Array<String>, nil]
      optional :checkout_configuration_ids, WhopSDK::Internal::Type::ArrayOf[String]

      # @!attribute company_id
      #   The unique identifier of the company to list payments for.
      #
      #   @return [String, nil]
      optional :company_id, String

      # @!attribute created_after
      #   Only return payments created after this timestamp.
      #
      #   @return [Time, nil]
      optional :created_after, Time

      # @!attribute created_before
      #   Only return payments created before this timestamp.
      #
      #   @return [Time, nil]
      optional :created_before, Time

      # @!attribute currencies
      #   Filter payments by their currency code.
      #
      #   @return [Array<Symbol, WhopSDK::Models::Currency>, nil]
      optional :currencies, -> { WhopSDK::Internal::Type::ArrayOf[enum: WhopSDK::Currency] }

      # @!attribute direction
      #   The sort direction for ordering results, either ascending or descending.
      #
      #   @return [Symbol, WhopSDK::Models::Direction, nil]
      optional :direction, enum: -> { WhopSDK::Direction }

      # @!attribute first
      #   Returns the first _n_ elements from the list.
      #
      #   @return [Integer, nil]
      optional :first, Integer

      # @!attribute include_free
      #   Whether to include payments with a zero amount.
      #
      #   @return [Boolean, nil]
      optional :include_free, WhopSDK::Internal::Type::Boolean

      # @!attribute last
      #   Returns the last _n_ elements from the list.
      #
      #   @return [Integer, nil]
      optional :last, Integer

      # @!attribute order
      #   The field to order results by, such as creation date.
      #
      #   @return [Symbol, WhopSDK::Models::PaymentListParams::Order, nil]
      optional :order, enum: -> { WhopSDK::PaymentListParams::Order }

      # @!attribute plan_ids
      #   Filter payments to only those associated with these specific plan identifiers.
      #
      #   @return [Array<String>, nil]
      optional :plan_ids, WhopSDK::Internal::Type::ArrayOf[String]

      # @!attribute product_ids
      #   Filter payments to only those associated with these specific product
      #   identifiers.
      #
      #   @return [Array<String>, nil]
      optional :product_ids, WhopSDK::Internal::Type::ArrayOf[String]

      # @!attribute query
      #   Search payments by user ID, membership ID, user email, name, or username. Email
      #   filtering requires the member:email:read permission.
      #
      #   @return [String, nil]
      optional :query, String

      # @!attribute statuses
      #   Filter payments by their current status.
      #
      #   @return [Array<Symbol, WhopSDK::Models::ReceiptStatus>, nil]
      optional :statuses, -> { WhopSDK::Internal::Type::ArrayOf[enum: WhopSDK::ReceiptStatus] }

      # @!attribute substatuses
      #   Filter payments by their current substatus for more granular filtering.
      #
      #   @return [Array<Symbol, WhopSDK::Models::FriendlyReceiptStatus>, nil]
      optional :substatuses, -> { WhopSDK::Internal::Type::ArrayOf[enum: WhopSDK::FriendlyReceiptStatus] }

      # @!attribute updated_after
      #   Only return payments last updated after this timestamp.
      #
      #   @return [Time, nil]
      optional :updated_after, Time

      # @!attribute updated_before
      #   Only return payments last updated before this timestamp.
      #
      #   @return [Time, nil]
      optional :updated_before, Time

      # @!method initialize(after: nil, before: nil, billing_reasons: nil, checkout_configuration_ids: nil, company_id: nil, created_after: nil, created_before: nil, currencies: nil, direction: nil, first: nil, include_free: nil, last: nil, order: nil, plan_ids: nil, product_ids: nil, query: nil, statuses: nil, substatuses: nil, updated_after: nil, updated_before: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {WhopSDK::Models::PaymentListParams} for more details.
      #
      #   @param after [String] Returns the elements in the list that come after the specified cursor.
      #
      #   @param before [String] Returns the elements in the list that come before the specified cursor.
      #
      #   @param billing_reasons [Array<Symbol, WhopSDK::Models::BillingReasons>] Filter payments by their billing reason.
      #
      #   @param checkout_configuration_ids [Array<String>] Only return payments from these checkout configurations.
      #
      #   @param company_id [String] The unique identifier of the company to list payments for.
      #
      #   @param created_after [Time] Only return payments created after this timestamp.
      #
      #   @param created_before [Time] Only return payments created before this timestamp.
      #
      #   @param currencies [Array<Symbol, WhopSDK::Models::Currency>] Filter payments by their currency code.
      #
      #   @param direction [Symbol, WhopSDK::Models::Direction] The sort direction for ordering results, either ascending or descending.
      #
      #   @param first [Integer] Returns the first _n_ elements from the list.
      #
      #   @param include_free [Boolean] Whether to include payments with a zero amount.
      #
      #   @param last [Integer] Returns the last _n_ elements from the list.
      #
      #   @param order [Symbol, WhopSDK::Models::PaymentListParams::Order] The field to order results by, such as creation date.
      #
      #   @param plan_ids [Array<String>] Filter payments to only those associated with these specific plan identifiers.
      #
      #   @param product_ids [Array<String>] Filter payments to only those associated with these specific product identifiers
      #
      #   @param query [String] Search payments by user ID, membership ID, user email, name, or username. Email
      #
      #   @param statuses [Array<Symbol, WhopSDK::Models::ReceiptStatus>] Filter payments by their current status.
      #
      #   @param substatuses [Array<Symbol, WhopSDK::Models::FriendlyReceiptStatus>] Filter payments by their current substatus for more granular filtering.
      #
      #   @param updated_after [Time] Only return payments last updated after this timestamp.
      #
      #   @param updated_before [Time] Only return payments last updated before this timestamp.
      #
      #   @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}]

      # The field to order results by, such as creation date.
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
