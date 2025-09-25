# typed: strong

module Whopsdk
  module Resources
    class Invoices
      # Creates an invoice
      sig do
        params(
          collection_method: T.nilable(Whopsdk::CollectionMethod::OrSymbol),
          due_date: Integer,
          plan: Whopsdk::InvoiceCreateParams::Plan::OrHash,
          access_pass:
            T.nilable(Whopsdk::InvoiceCreateParams::AccessPass::OrHash),
          access_pass_id: T.nilable(String),
          charge_buyer_fee: T.nilable(T::Boolean),
          customer_name: T.nilable(String),
          email_address: T.nilable(String),
          member_id: T.nilable(String),
          payment_token_id: T.nilable(String),
          request_options: Whopsdk::RequestOptions::OrHash
        ).returns(T.nilable(Whopsdk::Models::InvoiceCreateResponse))
      end
      def create(
        # The method of collection for this invoice. If using charge_automatically, you
        # must provide a payment_token.
        collection_method:,
        # The date the invoice is due, if applicable.
        due_date:,
        # The properties of the plan to create for this invoice.
        plan:,
        # The properties of the access pass to create for this invoice. Include this if
        # you want to create an invoice for a new product.
        access_pass: nil,
        # The access pass ID to create this invoice for. Include this if you want to
        # create an invoice for an existing product.
        access_pass_id: nil,
        # Whether or not to charge the customer a buyer fee.
        charge_buyer_fee: nil,
        # The name of the customer to create this invoice for. This is required if you
        # want to create an invoice for a customer who does not have a member of your
        # company yet.
        customer_name: nil,
        # The email address to create this invoice for. This is required if you want to
        # create an invoice for a user who does not have a member of your company yet.
        email_address: nil,
        # The member ID to create this invoice for. Include this if you want to create an
        # invoice for an existing member. If you do not have a member ID, you must provide
        # an email_address and customer_name.
        member_id: nil,
        # The payment token ID to use for this invoice. If using charge_automatically, you
        # must provide a payment_token.
        payment_token_id: nil,
        request_options: {}
      )
      end

      # Retrieves an invoice by ID or token
      sig do
        params(
          id: String,
          request_options: Whopsdk::RequestOptions::OrHash
        ).returns(Whopsdk::Invoice)
      end
      def retrieve(id, request_options: {})
      end

      # Lists invoices
      sig do
        params(
          company_id: String,
          after: T.nilable(String),
          before: T.nilable(String),
          direction: T.nilable(Whopsdk::InvoiceListParams::Direction::OrSymbol),
          filters: T.nilable(Whopsdk::InvoiceListParams::Filters::OrHash),
          first: T.nilable(Integer),
          last: T.nilable(Integer),
          order: T.nilable(Whopsdk::InvoiceListParams::Order::OrSymbol),
          request_options: Whopsdk::RequestOptions::OrHash
        ).returns(Whopsdk::Models::InvoiceListResponse)
      end
      def list(
        # The ID of the company to list invoices for
        company_id:,
        # Returns the elements in the list that come after the specified cursor.
        after: nil,
        # Returns the elements in the list that come before the specified cursor.
        before: nil,
        # The direction to sort the invoices by
        direction: nil,
        # The filters to apply to the invoices
        filters: nil,
        # Returns the first _n_ elements from the list.
        first: nil,
        # Returns the last _n_ elements from the list.
        last: nil,
        # The order to sort the invoices by
        order: nil,
        request_options: {}
      )
      end

      # Void an invoice
      sig do
        params(
          id: String,
          request_options: Whopsdk::RequestOptions::OrHash
        ).returns(T.nilable(T::Boolean))
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
