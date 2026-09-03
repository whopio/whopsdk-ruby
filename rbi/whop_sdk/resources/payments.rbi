# typed: strong

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
      # Charges a buyer for a plan. Pass a payment method already on file (`member_id`
      # and `payment_method_id`), or a `confirmation_token` describing a method the
      # buyer just supplied. Collection runs in the background: the response is the
      # payment as created, not its outcome — poll Retrieve status for how far it has
      # got and, for a confirmation-token payment, what the buyer must still do.
      # `plan_id` names the plan to charge for.
      sig do
        params(
          account_id: String,
          plan_id: String,
          capture: T.nilable(T::Boolean),
          confirmation_token: T.nilable(String),
          email: T.nilable(String),
          member_id: T.nilable(String),
          metadata: T.nilable(T::Hash[Symbol, String]),
          payment_method_id: T.nilable(String),
          promo_code_id: T.nilable(String),
          return_url: T.nilable(String),
          api_version_date: String,
          idempotency_key: String,
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(WhopSDK::Payment)
      end
      def create(
        # Body param: The account to charge for, prefixed `biz_`.
        account_id:,
        # Body param: The plan to charge for, prefixed `plan_`. It must belong to the
        # account.
        plan_id:,
        # Body param: Whether to capture a card payment immediately. Defaults to true.
        # Pass false to place an authorization hold that must be captured in full within
        # five days via the capture endpoint.
        capture: nil,
        # Body param: A confirmation token describing a payment method the buyer just
        # supplied. Provide this instead of `member_id` and `payment_method_id`; the buyer
        # is resolved from the token's billing email, or from `email`. The buyer may still
        # have a step to complete — poll the payment's status for what to do next.
        confirmation_token: nil,
        # Body param: Overrides the buyer email carried on the confirmation token,
        # resolving or creating the user the payment belongs to. Ignored unless
        # `confirmation_token` is provided, and when the token was created by a signed-in
        # buyer.
        email: nil,
        # Body param: The member to charge, prefixed `mber_`. Required with
        # `payment_method_id` unless `confirmation_token` is provided.
        member_id: nil,
        # Body param: Custom metadata to attach to the payment.
        metadata: nil,
        # Body param: The stored payment method to charge, prefixed `payt_`. It must
        # belong to the member. Required unless `confirmation_token` is provided.
        payment_method_id: nil,
        # Body param: An active promo code to apply, prefixed `promo_`. It must belong to
        # the account and be valid for the plan.
        promo_code_id: nil,
        # Body param: Where the buyer continues after completing an off-site step. An
        # absolute https URL without credentials, at most 2,048 characters. Ignored unless
        # `confirmation_token` is provided.
        return_url: nil,
        # Header param: Pins the request to a dated API version.
        api_version_date: nil,
        # Header param: A unique key that makes this request safe to retry. See
        # [Idempotent requests](https://docs.whop.com/developer/api/idempotency).
        idempotency_key: nil,
        request_options: {}
      )
      end

      # Returns one payment. Related records are ids — resolve a plan, membership,
      # member or shipment on its own endpoint, and list this payment's refunds,
      # disputes or Resolution Center cases with `?payment_id=`.
      sig do
        params(
          id: String,
          api_version_date: String,
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(WhopSDK::Payment)
      end
      def retrieve(
        # The payment to retrieve, prefixed `pay_`.
        id,
        # Pins the request to a dated API version.
        api_version_date: nil,
        request_options: {}
      )
      end

      # Lists payments, newest first. Without filters this is every payment the caller
      # can read: a company credential's own account, or for a user every account they
      # can read payments for. Filters narrow by account, buyer, product, plan,
      # membership, status, billing reason, currency, and creation window. Filtering by
      # `billing_reason=subscription_cycle` also matches renewals recorded as
      # `subscription_update`. `settlement_time_at` is null on list rows — retrieve the
      # payment for it.
      sig do
        params(
          account_id: String,
          after: String,
          before: String,
          billing_reason: WhopSDK::PaymentListParams::BillingReason::OrSymbol,
          created_after: Time,
          created_before: Time,
          currency: String,
          direction: WhopSDK::PaymentListParams::Direction::OrSymbol,
          first: Integer,
          last: Integer,
          member_id: String,
          membership_id: String,
          order: WhopSDK::PaymentListParams::Order::OrSymbol,
          plan_id: String,
          product_id: String,
          query: String,
          status: WhopSDK::PaymentListParams::Status::OrSymbol,
          user_id: String,
          api_version_date: String,
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(WhopSDK::Internal::CursorPage[WhopSDK::Payment])
      end
      def list(
        # Query param: Only payments charged by this account, prefixed `biz_`.
        account_id: nil,
        # Query param: A cursor; returns payments after this position.
        after: nil,
        # Query param: A cursor; returns payments before this position.
        before: nil,
        # Query param: Only payments charged for this reason.
        billing_reason: nil,
        # Query param: Only payments created after this ISO 8601 timestamp.
        created_after: nil,
        # Query param: Only payments created before this ISO 8601 timestamp.
        created_before: nil,
        # Query param: Only payments presented in this three-letter currency, such as
        # `usd`.
        currency: nil,
        # Query param: The sort direction.
        direction: nil,
        # Query param: The number of payments to return.
        first: nil,
        # Query param: The number of payments to return from the end of the range.
        last: nil,
        # Query param: Only payments made by this member, prefixed `mber_`.
        member_id: nil,
        # Query param: Only payments billed under this membership, prefixed `mem_`.
        membership_id: nil,
        # Query param: The field to sort by.
        order: nil,
        # Query param: Only payments priced by this plan, prefixed `plan_`.
        plan_id: nil,
        # Query param: Only payments for this product, prefixed `prod_`.
        product_id: nil,
        # Query param: Search payments by user ID, membership ID, user email, name, or
        # username. Email filtering requires the member:email:read permission.
        query: nil,
        # Query param: Only payments in this lifecycle state.
        status: nil,
        # Query param: Only payments made by this buyer, prefixed `user_`.
        user_id: nil,
        # Header param: Pins the request to a dated API version.
        api_version_date: nil,
        request_options: {}
      )
      end

      # Returns the fee breakdown of one payment — Whop's fee, processing, affiliate and
      # other lines — each in the currency it was collected in and converted to the
      # payment's settlement currency. The list is complete in one page.
      sig do
        params(
          id: String,
          api_version_date: String,
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(WhopSDK::Models::PaymentListFeesResponse)
      end
      def list_fees(
        # The payment whose fees to list, prefixed `pay_`.
        id,
        # Pins the request to a dated API version.
        api_version_date: nil,
        request_options: {}
      )
      end

      # Issues a full or partial refund for a payment. The refund is processed through
      # the original payment processor and the membership status is updated accordingly.
      sig do
        params(
          id: String,
          partial_amount: T.nilable(Float),
          api_version_date: String,
          idempotency_key: String,
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(WhopSDK::Payment)
      end
      def refund(
        # Path param: The payment to refund, prefixed `pay_`.
        id,
        # Body param: The amount to refund. For multi-currency payments, this is in the
        # charge currency (what the buyer paid). For single-currency, this is in the
        # payment currency. If omitted, the full payment amount is refunded.
        partial_amount: nil,
        # Header param: Pins the request to a dated API version.
        api_version_date: nil,
        # Header param: A unique key that makes this request safe to retry. See
        # [Idempotent requests](https://docs.whop.com/developer/api/idempotency).
        idempotency_key: nil,
        request_options: {}
      )
      end

      # Retries a failed or pending payment. This re-attempts the charge using the
      # original payment method and plan details.
      sig do
        params(
          id: String,
          api_version_date: String,
          idempotency_key: String,
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(WhopSDK::Payment)
      end
      def retry_(
        # The payment to retry, prefixed `pay_`.
        id,
        # Pins the request to a dated API version.
        api_version_date: nil,
        # A unique key that makes this request safe to retry. See
        # [Idempotent requests](https://docs.whop.com/developer/api/idempotency).
        idempotency_key: nil,
        request_options: {}
      )
      end

      # Voids a payment that has not yet been settled. Voiding cancels the payment
      # before it is captured by the payment processor.
      sig do
        params(
          id: String,
          api_version_date: String,
          idempotency_key: String,
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(WhopSDK::Payment)
      end
      def void(
        # The payment to void, prefixed `pay_`.
        id,
        # Pins the request to a dated API version.
        api_version_date: nil,
        # A unique key that makes this request safe to retry. See
        # [Idempotent requests](https://docs.whop.com/developer/api/idempotency).
        idempotency_key: nil,
        request_options: {}
      )
      end

      # @api private
      sig { params(client: WhopSDK::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end
