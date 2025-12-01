# typed: strong

module WhopSDK
  module Resources
    class Invoices
      # Creates an invoice
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
          charge_buyer_fee: T.nilable(T::Boolean),
          customer_name: T.nilable(String),
          payment_token_id: T.nilable(String),
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(WhopSDK::Invoice)
      end
      def create(
        # The method of collection for this invoice. If using charge_automatically, you
        # must provide a payment_token.
        collection_method:,
        # The company ID to create this invoice for.
        company_id:,
        # The date the invoice is due, if applicable.
        due_date:,
        # The member ID to create this invoice for. Include this if you want to create an
        # invoice for an existing member. If you do not have a member ID, you must provide
        # an email_address and customer_name.
        member_id:,
        # The properties of the plan to create for this invoice.
        plan:,
        # The properties of the product to create for this invoice. Include this if you
        # want to create an invoice for a new product.
        product:,
        # The email address to create this invoice for. This is required if you want to
        # create an invoice for a user who does not have a member of your company yet.
        email_address:,
        # The product ID to create this invoice for. Include this if you want to create an
        # invoice for an existing product.
        product_id:,
        # Whether or not to charge the customer a buyer fee.
        charge_buyer_fee: nil,
        # The name of the customer to create this invoice for. This is required if you
        # want to create an invoice for a customer who does not have a member of your
        # company yet.
        customer_name: nil,
        # The payment token ID to use for this invoice. If using charge_automatically, you
        # must provide a payment_token.
        payment_token_id: nil,
        request_options: {}
      )
      end

      # Retrieves an invoice by ID or token
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
        # The ID of the invoice or a token
        id,
        request_options: {}
      )
      end

      # Lists invoices
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
        # The ID of the company to list invoices for
        company_id:,
        # Returns the elements in the list that come after the specified cursor.
        after: nil,
        # Returns the elements in the list that come before the specified cursor.
        before: nil,
        # Filter invoices by their collection method
        collection_methods: nil,
        # The minimum creation date to filter by
        created_after: nil,
        # The maximum creation date to filter by
        created_before: nil,
        # The direction of the sort.
        direction: nil,
        # Returns the first _n_ elements from the list.
        first: nil,
        # Returns the last _n_ elements from the list.
        last: nil,
        # Which columns can be used to sort.
        order: nil,
        # Return only invoices created for these specific product ids
        product_ids: nil,
        # The statuses to filter the invoices by
        statuses: nil,
        request_options: {}
      )
      end

      # Void an invoice
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
        # The ID of the invoice to void
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
