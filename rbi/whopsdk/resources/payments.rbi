# typed: strong

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
      # - `member:phone:read`
      # - `promo_code:basic:read`
      sig do
        params(
          id: String,
          request_options: Whopsdk::RequestOptions::OrHash
        ).returns(Whopsdk::Payment)
      end
      def retrieve(id, request_options: {})
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
            T.nilable(
              T::Array[Whopsdk::PaymentListParams::BillingReason::OrSymbol]
            ),
          created_after: T.nilable(Integer),
          created_before: T.nilable(Integer),
          currencies: T.nilable(T::Array[Whopsdk::Currency::OrSymbol]),
          direction: T.nilable(Whopsdk::Direction::OrSymbol),
          first: T.nilable(Integer),
          include_free: T.nilable(T::Boolean),
          last: T.nilable(Integer),
          order: T.nilable(Whopsdk::PaymentListParams::Order::OrSymbol),
          plan_ids: T.nilable(T::Array[String]),
          product_ids: T.nilable(T::Array[String]),
          statuses: T.nilable(T::Array[Whopsdk::ReceiptStatus::OrSymbol]),
          substatuses:
            T.nilable(T::Array[Whopsdk::FriendlyReceiptStatus::OrSymbol]),
          request_options: Whopsdk::RequestOptions::OrHash
        ).returns(
          Whopsdk::Internal::CursorPage[Whopsdk::Models::PaymentListResponse]
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
          request_options: Whopsdk::RequestOptions::OrHash
        ).returns(Whopsdk::Payment)
      end
      def refund(
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
          request_options: Whopsdk::RequestOptions::OrHash
        ).returns(Whopsdk::Payment)
      end
      def retry_(id, request_options: {})
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
          request_options: Whopsdk::RequestOptions::OrHash
        ).returns(Whopsdk::Payment)
      end
      def void(id, request_options: {})
      end

      # @api private
      sig { params(client: Whopsdk::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end
