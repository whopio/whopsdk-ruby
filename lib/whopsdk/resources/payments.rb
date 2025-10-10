# frozen_string_literal: true

module Whopsdk
  module Resources
    class Payments
      # Retrieves a payment by ID
      #
      # Required permissions:
      #
      # - `payment:basic:read`
      # - `plan:basic:read`
      # - `access_pass:basic:read`
      # - `member:email:read`
      # - `member:basic:read`
      # - `promo_code:basic:read`
      #
      # @overload retrieve(id, request_options: {})
      #
      # @param id [String]
      # @param request_options [Whopsdk::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Whopsdk::Models::Payment]
      #
      # @see Whopsdk::Models::PaymentRetrieveParams
      def retrieve(id, params = {})
        @client.request(
          method: :get,
          path: ["payments/%1$s", id],
          model: Whopsdk::Payment,
          options: params[:request_options]
        )
      end

      # Lists payments
      #
      # Required permissions:
      #
      # - `payment:basic:read`
      # - `plan:basic:read`
      # - `access_pass:basic:read`
      # - `member:email:read`
      # - `member:basic:read`
      # - `promo_code:basic:read`
      #
      # @overload list(company_id:, after: nil, before: nil, billing_reasons: nil, created_after: nil, created_before: nil, currencies: nil, direction: nil, first: nil, include_free: nil, last: nil, order: nil, plan_ids: nil, product_ids: nil, statuses: nil, substatuses: nil, request_options: {})
      #
      # @param company_id [String] The ID of the company to list payments for
      #
      # @param after [String, nil] Returns the elements in the list that come after the specified cursor.
      #
      # @param before [String, nil] Returns the elements in the list that come before the specified cursor.
      #
      # @param billing_reasons [Array<Symbol, Whopsdk::Models::PaymentListParams::BillingReason>, nil] The billing reason for the payment
      #
      # @param created_after [Integer, nil] The minimum creation date to filter by
      #
      # @param created_before [Integer, nil] The maximum creation date to filter by
      #
      # @param currencies [Array<Symbol, Whopsdk::Models::Currency>, nil] The currency of the payment.
      #
      # @param direction [Symbol, Whopsdk::Models::Direction, nil] The direction of the sort.
      #
      # @param first [Integer, nil] Returns the first _n_ elements from the list.
      #
      # @param include_free [Boolean, nil] Whether to include free payments.
      #
      # @param last [Integer, nil] Returns the last _n_ elements from the list.
      #
      # @param order [Symbol, Whopsdk::Models::PaymentListParams::Order, nil] The order to sort the results by.
      #
      # @param plan_ids [Array<String>, nil] A specific plan.
      #
      # @param product_ids [Array<String>, nil] A specific product.
      #
      # @param statuses [Array<Symbol, Whopsdk::Models::ReceiptStatus>, nil] The status of the payment.
      #
      # @param substatuses [Array<Symbol, Whopsdk::Models::FriendlyReceiptStatus>, nil] The substatus of the payment.
      #
      # @param request_options [Whopsdk::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Whopsdk::Internal::CursorPage<Whopsdk::Models::PaymentListResponse, nil>]
      #
      # @see Whopsdk::Models::PaymentListParams
      def list(params)
        parsed, options = Whopsdk::PaymentListParams.dump_request(params)
        @client.request(
          method: :get,
          path: "payments",
          query: parsed,
          page: Whopsdk::Internal::CursorPage,
          model: Whopsdk::Models::PaymentListResponse,
          options: options
        )
      end

      # Refunds a payment
      #
      # Required permissions:
      #
      # - `payment:manage`
      # - `plan:basic:read`
      # - `access_pass:basic:read`
      # - `member:email:read`
      # - `member:basic:read`
      # - `promo_code:basic:read`
      #
      # @overload refund(id, partial_amount: nil, request_options: {})
      #
      # @param id [String]
      #
      # @param partial_amount [Float, nil] refund_payment | An amount if the refund is supposed to be partial.
      #
      # @param request_options [Whopsdk::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Whopsdk::Models::Payment]
      #
      # @see Whopsdk::Models::PaymentRefundParams
      def refund(id, params = {})
        parsed, options = Whopsdk::PaymentRefundParams.dump_request(params)
        @client.request(
          method: :post,
          path: ["payments/%1$s/refund", id],
          body: parsed,
          model: Whopsdk::Payment,
          options: options
        )
      end

      # Retries a payment
      #
      # Required permissions:
      #
      # - `payment:manage`
      # - `plan:basic:read`
      # - `access_pass:basic:read`
      # - `member:email:read`
      # - `member:basic:read`
      # - `promo_code:basic:read`
      #
      # @overload retry_(id, request_options: {})
      #
      # @param id [String]
      # @param request_options [Whopsdk::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Whopsdk::Models::Payment]
      #
      # @see Whopsdk::Models::PaymentRetryParams
      def retry_(id, params = {})
        @client.request(
          method: :post,
          path: ["payments/%1$s/retry", id],
          model: Whopsdk::Payment,
          options: params[:request_options]
        )
      end

      # Voids a payment
      #
      # Required permissions:
      #
      # - `payment:manage`
      # - `plan:basic:read`
      # - `access_pass:basic:read`
      # - `member:email:read`
      # - `member:basic:read`
      # - `promo_code:basic:read`
      #
      # @overload void(id, request_options: {})
      #
      # @param id [String]
      # @param request_options [Whopsdk::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Whopsdk::Models::Payment]
      #
      # @see Whopsdk::Models::PaymentVoidParams
      def void(id, params = {})
        @client.request(
          method: :post,
          path: ["payments/%1$s/void", id],
          model: Whopsdk::Payment,
          options: params[:request_options]
        )
      end

      # @api private
      #
      # @param client [Whopsdk::Client]
      def initialize(client:)
        @client = client
      end
    end
  end
end
