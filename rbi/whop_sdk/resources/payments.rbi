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
      # Charge a buyer on-session with a `confirmation_token` for the method they
      # selected, or charge an existing member off-session using a stored payment
      # method. You can provide an existing plan or create one inline. The endpoint
      # returns a payment immediately, but processing continues asynchronously. Use
      # webhooks to learn whether it succeeds or fails, and poll the payment's status
      # endpoint for any step the buyer must complete.
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
      # - `shipment:basic:read`
      # - `payment:dispute:read`
      # - `payment:resolution_center_case:read`
      sig do
        params(
          body:
            T.any(
              WhopSDK::PaymentCreateParams::Body::CreatePaymentInputWithPlanAndConfirmationToken::OrHash,
              WhopSDK::PaymentCreateParams::Body::CreatePaymentInputWithPlanAndMemberID::OrHash,
              WhopSDK::PaymentCreateParams::Body::CreatePaymentInputWithPlanIDAndConfirmationToken::OrHash,
              WhopSDK::PaymentCreateParams::Body::CreatePaymentInputWithPlanIDAndMemberID::OrHash
            ),
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(WhopSDK::Models::PaymentCreateResponse)
      end
      def create(
        # Parameters for CreatePayment
        body:,
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
      # - `shipment:basic:read`
      # - `payment:dispute:read`
      # - `payment:resolution_center_case:read`
      sig do
        params(
          id: String,
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(WhopSDK::Models::PaymentRetrieveResponse)
      end
      def retrieve(
        # The unique identifier of the payment.
        id,
        request_options: {}
      )
      end

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
      # - `shipment:basic:read`
      sig do
        params(
          after: String,
          before: String,
          billing_reasons: T::Array[WhopSDK::BillingReasons::OrSymbol],
          checkout_configuration_ids: T::Array[String],
          company_id: String,
          created_after: Time,
          created_before: Time,
          currencies: T::Array[WhopSDK::Currency::OrSymbol],
          direction: WhopSDK::Direction::OrSymbol,
          first: Integer,
          include_free: T::Boolean,
          last: Integer,
          order: WhopSDK::PaymentListParams::Order::OrSymbol,
          plan_ids: T::Array[String],
          product_ids: T::Array[String],
          query: String,
          statuses: T::Array[WhopSDK::ReceiptStatus::OrSymbol],
          substatuses: T::Array[WhopSDK::FriendlyReceiptStatus::OrSymbol],
          updated_after: Time,
          updated_before: Time,
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(
          WhopSDK::Internal::CursorPage[WhopSDK::Models::PaymentListResponse]
        )
      end
      def list(
        # Returns the elements in the list that come after the specified cursor.
        after: nil,
        # Returns the elements in the list that come before the specified cursor.
        before: nil,
        # Filter payments by their billing reason.
        billing_reasons: nil,
        # Only return payments from these checkout configurations.
        checkout_configuration_ids: nil,
        # The unique identifier of the company to list payments for.
        company_id: nil,
        # Only return payments created after this timestamp.
        created_after: nil,
        # Only return payments created before this timestamp.
        created_before: nil,
        # Filter payments by their currency code.
        currencies: nil,
        # The sort direction for ordering results, either ascending or descending.
        direction: nil,
        # Returns the first _n_ elements from the list.
        first: nil,
        # Whether to include payments with a zero amount. Defaults to false, so
        # zero-amount payments are omitted unless you set this to true — a company whose
        # sales are all free plans returns an empty list without it.
        include_free: nil,
        # Returns the last _n_ elements from the list.
        last: nil,
        # The field to order results by, such as creation date.
        order: nil,
        # Filter payments to only those associated with these specific plan identifiers.
        plan_ids: nil,
        # Filter payments to only those associated with these specific product
        # identifiers.
        product_ids: nil,
        # Search payments by user ID, membership ID, user email, name, or username. Email
        # filtering requires the member:email:read permission.
        query: nil,
        # Filter payments by their current status.
        statuses: nil,
        # Filter payments by their current substatus for more granular filtering.
        substatuses: nil,
        # Only return payments last updated after this timestamp.
        updated_after: nil,
        # Only return payments last updated before this timestamp.
        updated_before: nil,
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
          after: String,
          before: String,
          first: Integer,
          last: Integer,
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
      # - `shipment:basic:read`
      # - `payment:dispute:read`
      # - `payment:resolution_center_case:read`
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
        # The amount to refund. For multi-currency payments, this is in the charge
        # currency (what the buyer paid). For single-currency, this is in the payment
        # currency. If omitted, the full payment amount is refunded.
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
      # - `shipment:basic:read`
      # - `payment:dispute:read`
      # - `payment:resolution_center_case:read`
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
      # - `shipment:basic:read`
      # - `payment:dispute:read`
      # - `payment:resolution_center_case:read`
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
