# frozen_string_literal: true

module WhopSDK
  module Resources
    # Payments
    class Payments
      # Some parameter documentations has been truncated, see
      # {WhopSDK::Models::PaymentCreateParams} for more details.
      #
      # Charge an existing member off-session using one of their stored payment methods.
      # You can provide an existing plan, or create a new one in-line. This endpoint
      # will respond with a payment object immediately, but the payment is processed
      # asynchronously in the background. Use webhooks to be notified when the payment
      # succeeds or fails.
      #
      # Required permissions:
      #
      # - `payment:charge`
      # - `plan:create`
      # - `access_pass:create`
      # - `access_pass:update`
      # - `plan:basic:read`
      # - `access_pass:basic:read`
      # - `member:email:read`
      # - `member:basic:read`
      # - `member:phone:read`
      # - `promo_code:basic:read`
      # - `payment:dispute:read`
      # - `payment:resolution_center_case:read`
      #
      # @overload create(company_id:, member_id:, payment_method_id:, plan:, plan_id:, metadata: nil, request_options: {})
      #
      # @param company_id [String] The ID of the company to create the payment for.
      #
      # @param member_id [String] The ID of the member to create the payment for.
      #
      # @param payment_method_id [String] The ID of the payment method to use for the payment. It must be connected to the
      #
      # @param plan [WhopSDK::Models::PaymentCreateParams::Plan] Pass this object to create a new plan for this payment
      #
      # @param plan_id [String] An ID of an existing plan to use for the payment.
      #
      # @param metadata [Hash{Symbol=>Object}, nil] Custom metadata to attach to the payment.
      #
      # @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [WhopSDK::Models::Payment]
      #
      # @see WhopSDK::Models::PaymentCreateParams
      def create(params)
        parsed, options = WhopSDK::PaymentCreateParams.dump_request(params)
        @client.request(
          method: :post,
          path: "payments",
          body: parsed,
          model: WhopSDK::Payment,
          options: options
        )
      end

      # Retrieves the details of an existing payment.
      #
      # Required permissions:
      #
      # - `payment:basic:read`
      # - `plan:basic:read`
      # - `access_pass:basic:read`
      # - `member:email:read`
      # - `member:basic:read`
      # - `member:phone:read`
      # - `promo_code:basic:read`
      # - `payment:dispute:read`
      # - `payment:resolution_center_case:read`
      #
      # @overload retrieve(id, request_options: {})
      #
      # @param id [String] The unique identifier of the payment.
      #
      # @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [WhopSDK::Models::Payment]
      #
      # @see WhopSDK::Models::PaymentRetrieveParams
      def retrieve(id, params = {})
        @client.request(
          method: :get,
          path: ["payments/%1$s", id],
          model: WhopSDK::Payment,
          options: params[:request_options]
        )
      end

      # Some parameter documentations has been truncated, see
      # {WhopSDK::Models::PaymentListParams} for more details.
      #
      # Returns a paginated list of payments for the actor in context, with optional
      # filtering by product, plan, status, billing reason, currency, and creation date.
      #
      # Required permissions:
      #
      # - `payment:basic:read`
      # - `plan:basic:read`
      # - `access_pass:basic:read`
      # - `member:email:read`
      # - `member:basic:read`
      # - `member:phone:read`
      # - `promo_code:basic:read`
      #
      # @overload list(after: nil, before: nil, billing_reasons: nil, company_id: nil, created_after: nil, created_before: nil, currencies: nil, direction: nil, first: nil, include_free: nil, last: nil, order: nil, plan_ids: nil, product_ids: nil, query: nil, statuses: nil, substatuses: nil, request_options: {})
      #
      # @param after [String, nil] Returns the elements in the list that come after the specified cursor.
      #
      # @param before [String, nil] Returns the elements in the list that come before the specified cursor.
      #
      # @param billing_reasons [Array<Symbol, WhopSDK::Models::BillingReasons>, nil] Filter payments by their billing reason.
      #
      # @param company_id [String, nil] The unique identifier of the company to list payments for.
      #
      # @param created_after [Time, nil] Only return payments created after this timestamp.
      #
      # @param created_before [Time, nil] Only return payments created before this timestamp.
      #
      # @param currencies [Array<Symbol, WhopSDK::Models::Currency>, nil] Filter payments by their currency code.
      #
      # @param direction [Symbol, WhopSDK::Models::Direction, nil] The direction of the sort.
      #
      # @param first [Integer, nil] Returns the first _n_ elements from the list.
      #
      # @param include_free [Boolean, nil] Whether to include payments with a zero amount.
      #
      # @param last [Integer, nil] Returns the last _n_ elements from the list.
      #
      # @param order [Symbol, WhopSDK::Models::PaymentListParams::Order, nil] The order to sort the results by.
      #
      # @param plan_ids [Array<String>, nil] Filter payments to only those associated with these specific plan identifiers.
      #
      # @param product_ids [Array<String>, nil] Filter payments to only those associated with these specific product identifiers
      #
      # @param query [String, nil] Search payments by user ID, membership ID, user email, name, or username. Email
      #
      # @param statuses [Array<Symbol, WhopSDK::Models::ReceiptStatus>, nil] Filter payments by their current status.
      #
      # @param substatuses [Array<Symbol, WhopSDK::Models::FriendlyReceiptStatus>, nil] Filter payments by their current substatus for more granular filtering.
      #
      # @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [WhopSDK::Internal::CursorPage<WhopSDK::Models::PaymentListResponse>]
      #
      # @see WhopSDK::Models::PaymentListParams
      def list(params = {})
        parsed, options = WhopSDK::PaymentListParams.dump_request(params)
        query = WhopSDK::Internal::Util.encode_query_params(parsed)
        @client.request(
          method: :get,
          path: "payments",
          query: query,
          page: WhopSDK::Internal::CursorPage,
          model: WhopSDK::Models::PaymentListResponse,
          options: options
        )
      end

      # Returns the list of fees associated with a specific payment, including platform
      # fees and processing fees.
      #
      # Required permissions:
      #
      # - `payment:basic:read`
      #
      # @overload list_fees(id, after: nil, before: nil, first: nil, last: nil, request_options: {})
      #
      # @param id [String] The unique identifier of the payment to list fees for.
      #
      # @param after [String, nil] Returns the elements in the list that come after the specified cursor.
      #
      # @param before [String, nil] Returns the elements in the list that come before the specified cursor.
      #
      # @param first [Integer, nil] Returns the first _n_ elements from the list.
      #
      # @param last [Integer, nil] Returns the last _n_ elements from the list.
      #
      # @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [WhopSDK::Internal::CursorPage<WhopSDK::Models::PaymentListFeesResponse>]
      #
      # @see WhopSDK::Models::PaymentListFeesParams
      def list_fees(id, params = {})
        parsed, options = WhopSDK::PaymentListFeesParams.dump_request(params)
        query = WhopSDK::Internal::Util.encode_query_params(parsed)
        @client.request(
          method: :get,
          path: ["payments/%1$s/fees", id],
          query: query,
          page: WhopSDK::Internal::CursorPage,
          model: WhopSDK::Models::PaymentListFeesResponse,
          options: options
        )
      end

      # Some parameter documentations has been truncated, see
      # {WhopSDK::Models::PaymentRefundParams} for more details.
      #
      # Issue a full or partial refund for a payment. The refund is processed through
      # the original payment processor and the membership status is updated accordingly.
      #
      # Required permissions:
      #
      # - `payment:manage`
      # - `plan:basic:read`
      # - `access_pass:basic:read`
      # - `member:email:read`
      # - `member:basic:read`
      # - `member:phone:read`
      # - `promo_code:basic:read`
      # - `payment:dispute:read`
      # - `payment:resolution_center_case:read`
      #
      # @overload refund(id, partial_amount: nil, request_options: {})
      #
      # @param id [String] The unique identifier of the payment to refund.
      #
      # @param partial_amount [Float, nil] The amount to refund in the payment currency. If omitted, the full payment amoun
      #
      # @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [WhopSDK::Models::Payment]
      #
      # @see WhopSDK::Models::PaymentRefundParams
      def refund(id, params = {})
        parsed, options = WhopSDK::PaymentRefundParams.dump_request(params)
        @client.request(
          method: :post,
          path: ["payments/%1$s/refund", id],
          body: parsed,
          model: WhopSDK::Payment,
          options: options
        )
      end

      # Retry a failed or pending payment. This re-attempts the charge using the
      # original payment method and plan details.
      #
      # Required permissions:
      #
      # - `payment:manage`
      # - `plan:basic:read`
      # - `access_pass:basic:read`
      # - `member:email:read`
      # - `member:basic:read`
      # - `member:phone:read`
      # - `promo_code:basic:read`
      # - `payment:dispute:read`
      # - `payment:resolution_center_case:read`
      #
      # @overload retry_(id, request_options: {})
      #
      # @param id [String] The unique identifier of the payment to retry.
      #
      # @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [WhopSDK::Models::Payment]
      #
      # @see WhopSDK::Models::PaymentRetryParams
      def retry_(id, params = {})
        @client.request(
          method: :post,
          path: ["payments/%1$s/retry", id],
          model: WhopSDK::Payment,
          options: params[:request_options]
        )
      end

      # Void a payment that has not yet been settled. Voiding cancels the payment before
      # it is captured by the payment processor.
      #
      # Required permissions:
      #
      # - `payment:manage`
      # - `plan:basic:read`
      # - `access_pass:basic:read`
      # - `member:email:read`
      # - `member:basic:read`
      # - `member:phone:read`
      # - `promo_code:basic:read`
      # - `payment:dispute:read`
      # - `payment:resolution_center_case:read`
      #
      # @overload void(id, request_options: {})
      #
      # @param id [String] The unique identifier of the payment to void.
      #
      # @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [WhopSDK::Models::Payment]
      #
      # @see WhopSDK::Models::PaymentVoidParams
      def void(id, params = {})
        @client.request(
          method: :post,
          path: ["payments/%1$s/void", id],
          model: WhopSDK::Payment,
          options: params[:request_options]
        )
      end

      # @api private
      #
      # @param client [WhopSDK::Client]
      def initialize(client:)
        @client = client
      end
    end
  end
end
