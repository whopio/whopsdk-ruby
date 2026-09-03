# frozen_string_literal: true

module WhopSDK
  module Resources
    # A Payment is one charge against a buyer. Create an on-session payment with a
    # `confirmation_token` for the method the buyer selected, or an off-session
    # payment with an existing member's stored payment method.
    #
    # Collection runs in the background, so the create response is not the outcome.
    # Poll [Retrieve status](/api-reference/beta/payments/retrieve-status) for how far
    # the payment has got and, while it is `requires_action`, what the buyer must do
    # next — follow a redirect, complete 3D Secure, display transfer instructions, or
    # link a bank account. Use the return_url operation to change where they land
    # afterwards, up until they come back.
    class Payments
      # Some parameter documentations has been truncated, see
      # {WhopSDK::Models::PaymentCreateParams} for more details.
      #
      # Charges a buyer for a plan. Pass a payment method already on file (`member_id`
      # and `payment_method_id`), or a `confirmation_token` describing a method the
      # buyer just supplied. Collection runs in the background: the response is the
      # payment as created, not its outcome — poll Retrieve status for how far it has
      # got and, for a confirmation-token payment, what the buyer must still do.
      # `plan_id` names the plan to charge for.
      #
      # @overload create(account_id:, plan_id:, capture: nil, confirmation_token: nil, email: nil, member_id: nil, metadata: nil, payment_method_id: nil, promo_code_id: nil, return_url: nil, api_version_date: nil, idempotency_key: nil, request_options: {})
      #
      # @param account_id [String] Body param: The account to charge for, prefixed `biz_`.
      #
      # @param plan_id [String] Body param: The plan to charge for, prefixed `plan_`. It must belong to the acco
      #
      # @param capture [Boolean, nil] Body param: Whether to capture a card payment immediately. Defaults to true. Pas
      #
      # @param confirmation_token [String, nil] Body param: A confirmation token describing a payment method the buyer just supp
      #
      # @param email [String, nil] Body param: Overrides the buyer email carried on the confirmation token, resolvi
      #
      # @param member_id [String, nil] Body param: The member to charge, prefixed `mber_`. Required with `payment_metho
      #
      # @param metadata [Hash{Symbol=>String}, nil] Body param: Custom metadata to attach to the payment.
      #
      # @param payment_method_id [String, nil] Body param: The stored payment method to charge, prefixed `payt_`. It must belon
      #
      # @param promo_code_id [String, nil] Body param: An active promo code to apply, prefixed `promo_`. It must belong to
      #
      # @param return_url [String, nil] Body param: Where the buyer continues after completing an off-site step. An abso
      #
      # @param api_version_date [String] Header param: Pins the request to a dated API version.
      #
      # @param idempotency_key [String] Header param: A unique key that makes this request safe to retry. See [Idempoten
      #
      # @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [WhopSDK::Models::Payment]
      #
      # @see WhopSDK::Models::PaymentCreateParams
      def create(params)
        parsed, options = WhopSDK::PaymentCreateParams.dump_request(params)
        header_params = {api_version_date: "api-version-date", idempotency_key: "idempotency-key"}
        @client.request(
          method: :post,
          path: "payments",
          headers: parsed.slice(*header_params.keys).transform_keys(header_params),
          body: parsed.except(*header_params.keys),
          model: WhopSDK::Payment,
          options: options
        )
      end

      # Returns one payment. Related records are ids — resolve a plan, membership,
      # member or shipment on its own endpoint, and list this payment's refunds,
      # disputes or Resolution Center cases with `?payment_id=`.
      #
      # @overload retrieve(id, api_version_date: nil, request_options: {})
      #
      # @param id [String] The payment to retrieve, prefixed `pay_`.
      #
      # @param api_version_date [String] Pins the request to a dated API version.
      #
      # @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [WhopSDK::Models::Payment]
      #
      # @see WhopSDK::Models::PaymentRetrieveParams
      def retrieve(id, params = {})
        parsed, options = WhopSDK::PaymentRetrieveParams.dump_request(params)
        @client.request(
          method: :get,
          path: ["payments/%1$s", id],
          headers: parsed.transform_keys(api_version_date: "api-version-date"),
          model: WhopSDK::Payment,
          options: options
        )
      end

      # Some parameter documentations has been truncated, see
      # {WhopSDK::Models::PaymentListParams} for more details.
      #
      # Lists payments, newest first. Without filters this is every payment the caller
      # can read: a company credential's own account, or for a user every account they
      # can read payments for. Filters narrow by account, buyer, product, plan,
      # membership, status, billing reason, currency, and creation window. Filtering by
      # `billing_reason=subscription_cycle` also matches renewals recorded as
      # `subscription_update`. `settlement_time_at` is null on list rows — retrieve the
      # payment for it.
      #
      # @overload list(account_id: nil, after: nil, before: nil, billing_reason: nil, created_after: nil, created_before: nil, currency: nil, direction: nil, first: nil, last: nil, member_id: nil, membership_id: nil, order: nil, plan_id: nil, product_id: nil, query: nil, status: nil, user_id: nil, api_version_date: nil, request_options: {})
      #
      # @param account_id [String] Query param: Only payments charged by this account, prefixed `biz_`.
      #
      # @param after [String] Query param: A cursor; returns payments after this position.
      #
      # @param before [String] Query param: A cursor; returns payments before this position.
      #
      # @param billing_reason [Symbol, WhopSDK::Models::PaymentListParams::BillingReason] Query param: Only payments charged for this reason.
      #
      # @param created_after [Time] Query param: Only payments created after this ISO 8601 timestamp.
      #
      # @param created_before [Time] Query param: Only payments created before this ISO 8601 timestamp.
      #
      # @param currency [String] Query param: Only payments presented in this three-letter currency, such as `usd
      #
      # @param direction [Symbol, WhopSDK::Models::PaymentListParams::Direction] Query param: The sort direction.
      #
      # @param first [Integer] Query param: The number of payments to return.
      #
      # @param last [Integer] Query param: The number of payments to return from the end of the range.
      #
      # @param member_id [String] Query param: Only payments made by this member, prefixed `mber_`.
      #
      # @param membership_id [String] Query param: Only payments billed under this membership, prefixed `mem_`.
      #
      # @param order [Symbol, WhopSDK::Models::PaymentListParams::Order] Query param: The field to sort by.
      #
      # @param plan_id [String] Query param: Only payments priced by this plan, prefixed `plan_`.
      #
      # @param product_id [String] Query param: Only payments for this product, prefixed `prod_`.
      #
      # @param query [String] Query param: Search payments by user ID, membership ID, user email, name, or use
      #
      # @param status [Symbol, WhopSDK::Models::PaymentListParams::Status] Query param: Only payments in this lifecycle state.
      #
      # @param user_id [String] Query param: Only payments made by this buyer, prefixed `user_`.
      #
      # @param api_version_date [String] Header param: Pins the request to a dated API version.
      #
      # @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [WhopSDK::Internal::CursorPage<WhopSDK::Models::Payment>]
      #
      # @see WhopSDK::Models::PaymentListParams
      def list(params = {})
        query_params =
          [
            :account_id,
            :after,
            :before,
            :billing_reason,
            :created_after,
            :created_before,
            :currency,
            :direction,
            :first,
            :last,
            :member_id,
            :membership_id,
            :order,
            :plan_id,
            :product_id,
            :query,
            :status,
            :user_id
          ]
        parsed, options = WhopSDK::PaymentListParams.dump_request(params)
        query = WhopSDK::Internal::Util.encode_query_params(parsed.slice(*query_params))
        @client.request(
          method: :get,
          path: "payments",
          query: query,
          headers: parsed.except(*query_params).transform_keys(api_version_date: "api-version-date"),
          page: WhopSDK::Internal::CursorPage,
          model: WhopSDK::Payment,
          options: options
        )
      end

      # Returns the fee breakdown of one payment — Whop's fee, processing, affiliate and
      # other lines — each in the currency it was collected in and converted to the
      # payment's settlement currency. The list is complete in one page.
      #
      # @overload list_fees(id, api_version_date: nil, request_options: {})
      #
      # @param id [String] The payment whose fees to list, prefixed `pay_`.
      #
      # @param api_version_date [String] Pins the request to a dated API version.
      #
      # @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [WhopSDK::Models::PaymentListFeesResponse]
      #
      # @see WhopSDK::Models::PaymentListFeesParams
      def list_fees(id, params = {})
        parsed, options = WhopSDK::PaymentListFeesParams.dump_request(params)
        @client.request(
          method: :get,
          path: ["payments/%1$s/fees", id],
          headers: parsed.transform_keys(api_version_date: "api-version-date"),
          model: WhopSDK::Models::PaymentListFeesResponse,
          options: options
        )
      end

      # Some parameter documentations has been truncated, see
      # {WhopSDK::Models::PaymentRefundParams} for more details.
      #
      # Issues a full or partial refund for a payment. The refund is processed through
      # the original payment processor and the membership status is updated accordingly.
      #
      # @overload refund(id, partial_amount: nil, api_version_date: nil, idempotency_key: nil, request_options: {})
      #
      # @param id [String] Path param: The payment to refund, prefixed `pay_`.
      #
      # @param partial_amount [Float, nil] Body param: The amount to refund. For multi-currency payments, this is in the ch
      #
      # @param api_version_date [String] Header param: Pins the request to a dated API version.
      #
      # @param idempotency_key [String] Header param: A unique key that makes this request safe to retry. See [Idempoten
      #
      # @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [WhopSDK::Models::Payment]
      #
      # @see WhopSDK::Models::PaymentRefundParams
      def refund(id, params = {})
        parsed, options = WhopSDK::PaymentRefundParams.dump_request(params)
        header_params = {api_version_date: "api-version-date", idempotency_key: "idempotency-key"}
        @client.request(
          method: :post,
          path: ["payments/%1$s/refund", id],
          headers: parsed.slice(*header_params.keys).transform_keys(header_params),
          body: parsed.except(*header_params.keys),
          model: WhopSDK::Payment,
          options: options
        )
      end

      # Some parameter documentations has been truncated, see
      # {WhopSDK::Models::PaymentRetryParams} for more details.
      #
      # Retries a failed or pending payment. This re-attempts the charge using the
      # original payment method and plan details.
      #
      # @overload retry_(id, api_version_date: nil, idempotency_key: nil, request_options: {})
      #
      # @param id [String] The payment to retry, prefixed `pay_`.
      #
      # @param api_version_date [String] Pins the request to a dated API version.
      #
      # @param idempotency_key [String] A unique key that makes this request safe to retry. See [Idempotent requests](ht
      #
      # @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [WhopSDK::Models::Payment]
      #
      # @see WhopSDK::Models::PaymentRetryParams
      def retry_(id, params = {})
        parsed, options = WhopSDK::PaymentRetryParams.dump_request(params)
        @client.request(
          method: :post,
          path: ["payments/%1$s/retry", id],
          headers: parsed.transform_keys(
            api_version_date: "api-version-date",
            idempotency_key: "idempotency-key"
          ),
          model: WhopSDK::Payment,
          options: options
        )
      end

      # Some parameter documentations has been truncated, see
      # {WhopSDK::Models::PaymentVoidParams} for more details.
      #
      # Voids a payment that has not yet been settled. Voiding cancels the payment
      # before it is captured by the payment processor.
      #
      # @overload void(id, api_version_date: nil, idempotency_key: nil, request_options: {})
      #
      # @param id [String] The payment to void, prefixed `pay_`.
      #
      # @param api_version_date [String] Pins the request to a dated API version.
      #
      # @param idempotency_key [String] A unique key that makes this request safe to retry. See [Idempotent requests](ht
      #
      # @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [WhopSDK::Models::Payment]
      #
      # @see WhopSDK::Models::PaymentVoidParams
      def void(id, params = {})
        parsed, options = WhopSDK::PaymentVoidParams.dump_request(params)
        @client.request(
          method: :post,
          path: ["payments/%1$s/void", id],
          headers: parsed.transform_keys(
            api_version_date: "api-version-date",
            idempotency_key: "idempotency-key"
          ),
          model: WhopSDK::Payment,
          options: options
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
