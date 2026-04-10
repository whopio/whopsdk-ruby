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

      # Update a draft invoice's details.
      #
      # Required permissions:
      #
      # - `invoice:update`
      sig do
        params(
          id: String,
          automatically_finalizes_at: T.nilable(Time),
          billing_address:
            T.nilable(WhopSDK::InvoiceUpdateParams::BillingAddress::OrHash),
          charge_buyer_fee: T.nilable(T::Boolean),
          collection_method: T.nilable(WhopSDK::CollectionMethod::OrSymbol),
          customer_name: T.nilable(String),
          due_date: T.nilable(Time),
          email_address: T.nilable(String),
          line_items:
            T.nilable(T::Array[WhopSDK::InvoiceUpdateParams::LineItem::OrHash]),
          mailing_address_id: T.nilable(String),
          member_id: T.nilable(String),
          payment_method_id: T.nilable(String),
          plan: T.nilable(WhopSDK::InvoiceUpdateParams::Plan::OrHash),
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(WhopSDK::Invoice)
      end
      def update(
        # The unique identifier of the invoice to update.
        id,
        # The date and time when the invoice will be automatically finalized and charged.
        automatically_finalizes_at: nil,
        # Inline billing address to create or update a mailing address for this invoice.
        billing_address: nil,
        # Whether to charge the customer a buyer fee on this invoice.
        charge_buyer_fee: nil,
        # The method of collection for an invoice.
        collection_method: nil,
        # The name of the customer.
        customer_name: nil,
        # The date by which the invoice must be paid.
        due_date: nil,
        # The email address of the customer.
        email_address: nil,
        # Line items that break down the invoice total.
        line_items: nil,
        # The unique identifier of an existing mailing address to attach.
        mailing_address_id: nil,
        # The unique identifier of a member to assign as the customer.
        member_id: nil,
        # The unique identifier of the payment method to charge.
        payment_method_id: nil,
        # Updated plan attributes.
        plan: nil,
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

      # Delete a draft invoice.
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
      def delete(
        # The unique identifier of the draft invoice to delete.
        id,
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
