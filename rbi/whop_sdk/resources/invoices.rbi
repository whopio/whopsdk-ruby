# typed: strong

module WhopSDK
  module Resources
    # Invoices
    class Invoices
      # Create an invoice for a customer. The invoice can be charged automatically using
      # a stored payment method, or sent to the customer for manual payment.
      #
      # Required permissions:
      #
      # - `invoice:create`
      sig do
        params(
          body:
            T.any(
              WhopSDK::InvoiceCreateParams::Body::CreateInvoiceInputWithProduct::OrHash,
              WhopSDK::InvoiceCreateParams::Body::CreateInvoiceInputWithProductID::OrHash
            ),
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(WhopSDK::Invoice)
      end
      def create(
        # Parameters for CreateInvoice
        body:,
        request_options: {}
      )
      end

      # Retrieves the details of an existing invoice.
      #
      # Required permissions:
      #
      # - `invoice:basic:read`
      sig do
        params(
          id: String,
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(WhopSDK::Invoice)
      end
      def retrieve(
        # The unique identifier of the invoice, or a secure token.
        id,
        request_options: {}
      )
      end

      # Returns a paginated list of invoices for a company, with optional filtering by
      # product, status, collection method, and creation date.
      #
      # Required permissions:
      #
      # - `invoice:basic:read`
      sig do
        params(
          after: T.nilable(String),
          before: T.nilable(String),
          collection_methods:
            T.nilable(T::Array[WhopSDK::CollectionMethod::OrSymbol]),
          company_id: T.nilable(String),
          created_after: T.nilable(Time),
          created_before: T.nilable(Time),
          direction: T.nilable(WhopSDK::Direction::OrSymbol),
          first: T.nilable(Integer),
          last: T.nilable(Integer),
          order: T.nilable(WhopSDK::InvoiceListParams::Order::OrSymbol),
          product_ids: T.nilable(T::Array[String]),
          statuses: T.nilable(T::Array[WhopSDK::InvoiceStatus::OrSymbol]),
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(WhopSDK::Internal::CursorPage[WhopSDK::InvoiceListItem])
      end
      def list(
        # Returns the elements in the list that come after the specified cursor.
        after: nil,
        # Returns the elements in the list that come before the specified cursor.
        before: nil,
        # Filter invoices by their collection method.
        collection_methods: nil,
        # The unique identifier of the company to list invoices for.
        company_id: nil,
        # Only return invoices created after this timestamp.
        created_after: nil,
        # Only return invoices created before this timestamp.
        created_before: nil,
        # The direction of the sort.
        direction: nil,
        # Returns the first _n_ elements from the list.
        first: nil,
        # Returns the last _n_ elements from the list.
        last: nil,
        # Which columns can be used to sort.
        order: nil,
        # Filter invoices to only those associated with these specific product
        # identifiers.
        product_ids: nil,
        # Filter invoices by their current status.
        statuses: nil,
        request_options: {}
      )
      end

      # Mark an open invoice as paid when payment was collected outside of Whop.
      #
      # Required permissions:
      #
      # - `invoice:update`
      sig do
        params(
          id: String,
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(T::Boolean)
      end
      def mark_paid(
        # The unique identifier of the invoice to mark as paid.
        id,
        request_options: {}
      )
      end

      # Mark an open invoice as uncollectible when payment is not expected.
      #
      # Required permissions:
      #
      # - `invoice:update`
      sig do
        params(
          id: String,
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(T::Boolean)
      end
      def mark_uncollectible(
        # The unique identifier of the invoice to mark as uncollectible.
        id,
        request_options: {}
      )
      end

      # Void an open invoice so it can no longer be paid. Voiding is permanent and
      # cannot be undone.
      #
      # Required permissions:
      #
      # - `invoice:update`
      sig do
        params(
          id: String,
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(T::Boolean)
      end
      def void(
        # The unique identifier of the invoice to void.
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
