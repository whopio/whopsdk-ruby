# typed: strong

module WhopSDK
  module Resources
    class Payments
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
      sig do
        params(
          company_id: String,
          member_id: String,
          payment_method_id: String,
          plan: WhopSDK::PaymentCreateParams::Plan::OrHash,
          plan_id: String,
          metadata: T.nilable(T::Hash[Symbol, T.anything]),
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(WhopSDK::Payment)
      end
      def create(
        # The ID of the company to create the payment for.
        company_id:,
        # The ID of the member to create the payment for.
        member_id:,
        # The ID of the payment method to use for the payment. It must be connected to the
        # Member being charged.
        payment_method_id:,
        # Pass this object to create a new plan for this payment
        plan:,
        # An ID of an existing plan to use for the payment.
        plan_id:,
        # Custom metadata to attach to the payment.
        metadata: nil,
        request_options: {}
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
      sig do
        params(
          id: String,
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(WhopSDK::Payment)
      end
      def retrieve(
        # The unique identifier of the payment.
        id,
        request_options: {}
      )
      end

      # Returns a paginated list of payments for a company, with optional filtering by
      # product, plan, status, billing reason, currency, and creation date.
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
      sig do
        params(
          company_id: String,
          after: T.nilable(String),
          before: T.nilable(String),
          billing_reasons:
            T.nilable(T::Array[WhopSDK::BillingReasons::OrSymbol]),
          created_after: T.nilable(Time),
          created_before: T.nilable(Time),
          currencies: T.nilable(T::Array[WhopSDK::Currency::OrSymbol]),
          direction: T.nilable(WhopSDK::Direction::OrSymbol),
          first: T.nilable(Integer),
          include_free: T.nilable(T::Boolean),
          last: T.nilable(Integer),
          order: T.nilable(WhopSDK::PaymentListParams::Order::OrSymbol),
          plan_ids: T.nilable(T::Array[String]),
          product_ids: T.nilable(T::Array[String]),
          statuses: T.nilable(T::Array[WhopSDK::ReceiptStatus::OrSymbol]),
          substatuses:
            T.nilable(T::Array[WhopSDK::FriendlyReceiptStatus::OrSymbol]),
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(
          WhopSDK::Internal::CursorPage[WhopSDK::Models::PaymentListResponse]
        )
      end
      def list(
        # The unique identifier of the company to list payments for.
        company_id:,
        # Returns the elements in the list that come after the specified cursor.
        after: nil,
        # Returns the elements in the list that come before the specified cursor.
        before: nil,
        # Filter payments by their billing reason.
        billing_reasons: nil,
        # Only return payments created after this timestamp.
        created_after: nil,
        # Only return payments created before this timestamp.
        created_before: nil,
        # Filter payments by their currency code.
        currencies: nil,
        # The direction of the sort.
        direction: nil,
        # Returns the first _n_ elements from the list.
        first: nil,
        # Whether to include payments with a zero amount.
        include_free: nil,
        # Returns the last _n_ elements from the list.
        last: nil,
        # The order to sort the results by.
        order: nil,
        # Filter payments to only those associated with these specific plan identifiers.
        plan_ids: nil,
        # Filter payments to only those associated with these specific product
        # identifiers.
        product_ids: nil,
        # Filter payments by their current status.
        statuses: nil,
        # Filter payments by their current substatus for more granular filtering.
        substatuses: nil,
        request_options: {}
      )
      end

      # Returns the list of fees associated with a specific payment, including platform
      # fees and processing fees.
      #
      # Required permissions:
      #
      # - `payment:basic:read`
      sig do
        params(
          id: String,
          after: T.nilable(String),
          before: T.nilable(String),
          first: T.nilable(Integer),
          last: T.nilable(Integer),
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(
          WhopSDK::Internal::CursorPage[
            WhopSDK::Models::PaymentListFeesResponse
          ]
        )
      end
      def list_fees(
        # The unique identifier of the payment to list fees for.
        id,
        # Returns the elements in the list that come after the specified cursor.
        after: nil,
        # Returns the elements in the list that come before the specified cursor.
        before: nil,
        # Returns the first _n_ elements from the list.
        first: nil,
        # Returns the last _n_ elements from the list.
        last: nil,
        request_options: {}
      )
      end

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
      sig do
        params(
          id: String,
          partial_amount: T.nilable(Float),
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(WhopSDK::Payment)
      end
      def refund(
        # The unique identifier of the payment to refund.
        id,
        # The amount to refund in the payment currency. If omitted, the full payment
        # amount is refunded.
        partial_amount: nil,
        request_options: {}
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
      sig do
        params(
          id: String,
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(WhopSDK::Payment)
      end
      def retry_(
        # The unique identifier of the payment to retry.
        id,
        request_options: {}
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
      sig do
        params(
          id: String,
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(WhopSDK::Payment)
      end
      def void(
        # The unique identifier of the payment to void.
        id,
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
