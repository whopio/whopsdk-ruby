# frozen_string_literal: true

module Whopsdk
  module Models
    # @see Whopsdk::Resources::Payments#list
    class PaymentListParams < Whopsdk::Internal::Type::BaseModel
      extend Whopsdk::Internal::Type::RequestParameters::Converter
      include Whopsdk::Internal::Type::RequestParameters

      # @!attribute company_id
      #   The ID of the company to list payments for
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
      #   The billing reason for the payment
      #
      #   @return [Array<Symbol, Whopsdk::Models::PaymentListParams::BillingReason>, nil]
      optional :billing_reasons,
               -> { Whopsdk::Internal::Type::ArrayOf[enum: Whopsdk::PaymentListParams::BillingReason] },
               nil?: true

      # @!attribute created_after
      #   The minimum creation date to filter by
      #
      #   @return [Time, nil]
      optional :created_after, Time, nil?: true

      # @!attribute created_before
      #   The maximum creation date to filter by
      #
      #   @return [Time, nil]
      optional :created_before, Time, nil?: true

      # @!attribute currencies
      #   The currency of the payment.
      #
      #   @return [Array<Symbol, Whopsdk::Models::Currency>, nil]
      optional :currencies, -> { Whopsdk::Internal::Type::ArrayOf[enum: Whopsdk::Currency] }, nil?: true

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

      # @!attribute include_free
      #   Whether to include free payments.
      #
      #   @return [Boolean, nil]
      optional :include_free, Whopsdk::Internal::Type::Boolean, nil?: true

      # @!attribute last
      #   Returns the last _n_ elements from the list.
      #
      #   @return [Integer, nil]
      optional :last, Integer, nil?: true

      # @!attribute order
      #   The order to sort the results by.
      #
      #   @return [Symbol, Whopsdk::Models::PaymentListParams::Order, nil]
      optional :order, enum: -> { Whopsdk::PaymentListParams::Order }, nil?: true

      # @!attribute plan_ids
      #   A specific plan.
      #
      #   @return [Array<String>, nil]
      optional :plan_ids, Whopsdk::Internal::Type::ArrayOf[String], nil?: true

      # @!attribute product_ids
      #   A specific product.
      #
      #   @return [Array<String>, nil]
      optional :product_ids, Whopsdk::Internal::Type::ArrayOf[String], nil?: true

      # @!attribute statuses
      #   The status of the payment.
      #
      #   @return [Array<Symbol, Whopsdk::Models::ReceiptStatus>, nil]
      optional :statuses, -> { Whopsdk::Internal::Type::ArrayOf[enum: Whopsdk::ReceiptStatus] }, nil?: true

      # @!attribute substatuses
      #   The substatus of the payment.
      #
      #   @return [Array<Symbol, Whopsdk::Models::FriendlyReceiptStatus>, nil]
      optional :substatuses,
               -> { Whopsdk::Internal::Type::ArrayOf[enum: Whopsdk::FriendlyReceiptStatus] },
               nil?: true

      # @!method initialize(company_id:, after: nil, before: nil, billing_reasons: nil, created_after: nil, created_before: nil, currencies: nil, direction: nil, first: nil, include_free: nil, last: nil, order: nil, plan_ids: nil, product_ids: nil, statuses: nil, substatuses: nil, request_options: {})
      #   @param company_id [String] The ID of the company to list payments for
      #
      #   @param after [String, nil] Returns the elements in the list that come after the specified cursor.
      #
      #   @param before [String, nil] Returns the elements in the list that come before the specified cursor.
      #
      #   @param billing_reasons [Array<Symbol, Whopsdk::Models::PaymentListParams::BillingReason>, nil] The billing reason for the payment
      #
      #   @param created_after [Time, nil] The minimum creation date to filter by
      #
      #   @param created_before [Time, nil] The maximum creation date to filter by
      #
      #   @param currencies [Array<Symbol, Whopsdk::Models::Currency>, nil] The currency of the payment.
      #
      #   @param direction [Symbol, Whopsdk::Models::Direction, nil] The direction of the sort.
      #
      #   @param first [Integer, nil] Returns the first _n_ elements from the list.
      #
      #   @param include_free [Boolean, nil] Whether to include free payments.
      #
      #   @param last [Integer, nil] Returns the last _n_ elements from the list.
      #
      #   @param order [Symbol, Whopsdk::Models::PaymentListParams::Order, nil] The order to sort the results by.
      #
      #   @param plan_ids [Array<String>, nil] A specific plan.
      #
      #   @param product_ids [Array<String>, nil] A specific product.
      #
      #   @param statuses [Array<Symbol, Whopsdk::Models::ReceiptStatus>, nil] The status of the payment.
      #
      #   @param substatuses [Array<Symbol, Whopsdk::Models::FriendlyReceiptStatus>, nil] The substatus of the payment.
      #
      #   @param request_options [Whopsdk::RequestOptions, Hash{Symbol=>Object}]

      # The reason why a specific payment was billed
      module BillingReason
        extend Whopsdk::Internal::Type::Enum

        SUBSCRIPTION_CREATE = :subscription_create
        SUBSCRIPTION_CYCLE = :subscription_cycle
        SUBSCRIPTION_UPDATE = :subscription_update
        ONE_TIME = :one_time
        MANUAL = :manual
        SUBSCRIPTION = :subscription

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # The order to sort the results by.
      module Order
        extend Whopsdk::Internal::Type::Enum

        FINAL_AMOUNT = :final_amount
        CREATED_AT = :created_at
        PAID_AT = :paid_at

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
