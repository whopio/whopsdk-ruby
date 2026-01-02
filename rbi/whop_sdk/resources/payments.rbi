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

      # Retrieves a payment by ID
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
        # The ID of the payment
        id,
        request_options: {}
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
        # The ID of the company to list payments for
        company_id:,
        # Returns the elements in the list that come after the specified cursor.
        after: nil,
        # Returns the elements in the list that come before the specified cursor.
        before: nil,
        # The billing reason for the payment
        billing_reasons: nil,
        # The minimum creation date to filter by
        created_after: nil,
        # The maximum creation date to filter by
        created_before: nil,
        # The currency of the payment.
        currencies: nil,
        # The direction of the sort.
        direction: nil,
        # Returns the first _n_ elements from the list.
        first: nil,
        # Whether to include free payments.
        include_free: nil,
        # Returns the last _n_ elements from the list.
        last: nil,
        # The order to sort the results by.
        order: nil,
        # A specific plan.
        plan_ids: nil,
        # A specific product.
        product_ids: nil,
        # The status of the payment.
        statuses: nil,
        # The substatus of the payment.
        substatuses: nil,
        request_options: {}
      )
      end

      # Lists fees for a payment
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
        # The ID of the payment to list fees for
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

      # Refunds a payment
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
        # The ID of the payment you want to update or take action upon.
        id,
        # An amount if the refund is supposed to be partial.
        partial_amount: nil,
        request_options: {}
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
      # - `member:phone:read`
      # - `promo_code:basic:read`
      sig do
        params(
          id: String,
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(WhopSDK::Payment)
      end
      def retry_(
        # The ID of the payment
        id,
        request_options: {}
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
      # - `member:phone:read`
      # - `promo_code:basic:read`
      sig do
        params(
          id: String,
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(WhopSDK::Payment)
      end
      def void(
        # The ID of the payment you want to void.
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
