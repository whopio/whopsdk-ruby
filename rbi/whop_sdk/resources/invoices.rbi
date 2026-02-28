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
      # - `plan:basic:read`
      sig do
        params(
          collection_method: WhopSDK::CollectionMethod::OrSymbol,
          company_id: String,
          due_date: Time,
          member_id: String,
          plan: WhopSDK::InvoiceCreateParams::Plan::OrHash,
          product: WhopSDK::InvoiceCreateParams::Product::OrHash,
          email_address: String,
          product_id: String,
          automatically_finalizes_at: T.nilable(Time),
          charge_buyer_fee: T.nilable(T::Boolean),
          customer_name: T.nilable(String),
          payment_method_id: T.nilable(String),
          payment_token_id: T.nilable(String),
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(WhopSDK::Invoice)
      end
      def create(
        # How the invoice should be collected. Use charge_automatically to charge a stored
        # payment method, or send_invoice to email the customer.
        collection_method:,
        # The unique identifier of the company to create this invoice for.
        company_id:,
        # The date by which the invoice must be paid.
        due_date:,
        # The unique identifier of an existing member to create this invoice for. If not
        # provided, you must supply an email_address and customer_name.
        member_id:,
        # The plan attributes defining the price, currency, and billing interval for this
        # invoice.
        plan:,
        # The properties of the product to create for this invoice. Provide this to create
        # a new product inline.
        product:,
        # The email address of the customer. Required when creating an invoice for a
        # customer who is not yet a member of the company.
        email_address:,
        # The unique identifier of an existing product to create this invoice for.
        product_id:,
        # The date and time when the invoice will be automatically finalized and charged.
        # Only valid when collection_method is charge_automatically. If not provided, the
        # charge will be processed immediately.
        automatically_finalizes_at: nil,
        # Whether to charge the customer a buyer fee on this invoice.
        charge_buyer_fee: nil,
        # The name of the customer. Required when creating an invoice for a customer who
        # is not yet a member of the company.
        customer_name: nil,
        # The unique identifier of the payment method to charge. Required when
        # collection_method is charge_automatically.
        payment_method_id: nil,
        # The payment token ID to use for this invoice. If using charge_automatically, you
        # must provide a payment_token.
        payment_token_id: nil,
        request_options: {}
      )
      end

      # Retrieves the details of an existing invoice.
      #
      # Required permissions:
      #
      # - `invoice:basic:read`
      # - `plan:basic:read`
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
      # - `plan:basic:read`
      sig do
        params(
          company_id: String,
          after: T.nilable(String),
          before: T.nilable(String),
          collection_methods:
            T.nilable(T::Array[WhopSDK::CollectionMethod::OrSymbol]),
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
        # The unique identifier of the company to list invoices for.
        company_id:,
        # Returns the elements in the list that come after the specified cursor.
        after: nil,
        # Returns the elements in the list that come before the specified cursor.
        before: nil,
        # Filter invoices by their collection method.
        collection_methods: nil,
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
