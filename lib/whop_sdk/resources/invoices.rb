# frozen_string_literal: true

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
      #
      # @overload create(body:, request_options: {})
      #
      # @param body [WhopSDK::Models::InvoiceCreateParams::Body::CreateInvoiceInputWithProduct, WhopSDK::Models::InvoiceCreateParams::Body::CreateInvoiceInputWithProductID] Parameters for CreateInvoice
      #
      # @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [WhopSDK::Models::Invoice]
      #
      # @see WhopSDK::Models::InvoiceCreateParams
      def create(params)
        parsed, options = WhopSDK::InvoiceCreateParams.dump_request(params)
        @client.request(
          method: :post,
          path: "invoices",
          body: parsed[:body],
          model: WhopSDK::Invoice,
          options: options
        )
      end

      # Retrieves the details of an existing invoice.
      #
      # Required permissions:
      #
      # - `invoice:basic:read`
      #
      # @overload retrieve(id, request_options: {})
      #
      # @param id [String] The unique identifier of the invoice, or a secure token.
      #
      # @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [WhopSDK::Models::Invoice]
      #
      # @see WhopSDK::Models::InvoiceRetrieveParams
      def retrieve(id, params = {})
        @client.request(
          method: :get,
          path: ["invoices/%1$s", id],
          model: WhopSDK::Invoice,
          options: params[:request_options]
        )
      end

      # Update a draft invoice's details.
      #
      # Required permissions:
      #
      # - `invoice:update`
      #
      # @overload update(id, automatically_finalizes_at: nil, billing_address: nil, charge_buyer_fee: nil, collection_method: nil, customer_name: nil, due_date: nil, email_address: nil, line_items: nil, mailing_address_id: nil, member_id: nil, payment_method_id: nil, plan: nil, request_options: {})
      #
      # @param id [String] The unique identifier of the invoice to update.
      #
      # @param automatically_finalizes_at [Time, nil] The date and time when the invoice will be automatically finalized and charged.
      #
      # @param billing_address [WhopSDK::Models::InvoiceUpdateParams::BillingAddress, nil] Inline billing address to create or update a mailing address for this invoice.
      #
      # @param charge_buyer_fee [Boolean, nil] Whether to charge the customer a buyer fee on this invoice.
      #
      # @param collection_method [Symbol, WhopSDK::Models::CollectionMethod, nil] The method of collection for an invoice.
      #
      # @param customer_name [String, nil] The name of the customer.
      #
      # @param due_date [Time, nil] The date by which the invoice must be paid.
      #
      # @param email_address [String, nil] The email address of the customer.
      #
      # @param line_items [Array<WhopSDK::Models::InvoiceUpdateParams::LineItem>, nil] Line items that break down the invoice total.
      #
      # @param mailing_address_id [String, nil] The unique identifier of an existing mailing address to attach.
      #
      # @param member_id [String, nil] The unique identifier of a member to assign as the customer.
      #
      # @param payment_method_id [String, nil] The unique identifier of the payment method to charge.
      #
      # @param plan [WhopSDK::Models::InvoiceUpdateParams::Plan, nil] Updated plan attributes.
      #
      # @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [WhopSDK::Models::Invoice]
      #
      # @see WhopSDK::Models::InvoiceUpdateParams
      def update(id, params = {})
        parsed, options = WhopSDK::InvoiceUpdateParams.dump_request(params)
        @client.request(
          method: :patch,
          path: ["invoices/%1$s", id],
          body: parsed,
          model: WhopSDK::Invoice,
          options: options
        )
      end

      # Some parameter documentations has been truncated, see
      # {WhopSDK::Models::InvoiceListParams} for more details.
      #
      # Returns a paginated list of invoices for a company, with optional filtering by
      # product, status, collection method, and creation date.
      #
      # Required permissions:
      #
      # - `invoice:basic:read`
      #
      # @overload list(after: nil, before: nil, collection_methods: nil, company_id: nil, created_after: nil, created_before: nil, direction: nil, first: nil, last: nil, order: nil, product_ids: nil, statuses: nil, request_options: {})
      #
      # @param after [String, nil] Returns the elements in the list that come after the specified cursor.
      #
      # @param before [String, nil] Returns the elements in the list that come before the specified cursor.
      #
      # @param collection_methods [Array<Symbol, WhopSDK::Models::CollectionMethod>, nil] Filter invoices by their collection method.
      #
      # @param company_id [String, nil] The unique identifier of the company to list invoices for.
      #
      # @param created_after [Time, nil] Only return invoices created after this timestamp.
      #
      # @param created_before [Time, nil] Only return invoices created before this timestamp.
      #
      # @param direction [Symbol, WhopSDK::Models::Direction, nil] The direction of the sort.
      #
      # @param first [Integer, nil] Returns the first _n_ elements from the list.
      #
      # @param last [Integer, nil] Returns the last _n_ elements from the list.
      #
      # @param order [Symbol, WhopSDK::Models::InvoiceListParams::Order, nil] Which columns can be used to sort.
      #
      # @param product_ids [Array<String>, nil] Filter invoices to only those associated with these specific product identifiers
      #
      # @param statuses [Array<Symbol, WhopSDK::Models::InvoiceStatus>, nil] Filter invoices by their current status.
      #
      # @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [WhopSDK::Internal::CursorPage<WhopSDK::Models::InvoiceListItem>]
      #
      # @see WhopSDK::Models::InvoiceListParams
      def list(params = {})
        parsed, options = WhopSDK::InvoiceListParams.dump_request(params)
        query = WhopSDK::Internal::Util.encode_query_params(parsed)
        @client.request(
          method: :get,
          path: "invoices",
          query: query,
          page: WhopSDK::Internal::CursorPage,
          model: WhopSDK::InvoiceListItem,
          options: options
        )
      end

      # Delete a draft invoice.
      #
      # Required permissions:
      #
      # - `invoice:update`
      #
      # @overload delete(id, request_options: {})
      #
      # @param id [String] The unique identifier of the draft invoice to delete.
      #
      # @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Boolean]
      #
      # @see WhopSDK::Models::InvoiceDeleteParams
      def delete(id, params = {})
        @client.request(
          method: :delete,
          path: ["invoices/%1$s", id],
          model: WhopSDK::Internal::Type::Boolean,
          options: params[:request_options]
        )
      end

      # Mark an open invoice as paid when payment was collected outside of Whop.
      #
      # Required permissions:
      #
      # - `invoice:update`
      #
      # @overload mark_paid(id, request_options: {})
      #
      # @param id [String] The unique identifier of the invoice to mark as paid.
      #
      # @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Boolean]
      #
      # @see WhopSDK::Models::InvoiceMarkPaidParams
      def mark_paid(id, params = {})
        @client.request(
          method: :post,
          path: ["invoices/%1$s/mark_paid", id],
          model: WhopSDK::Internal::Type::Boolean,
          options: params[:request_options]
        )
      end

      # Mark an open invoice as uncollectible when payment is not expected.
      #
      # Required permissions:
      #
      # - `invoice:update`
      #
      # @overload mark_uncollectible(id, request_options: {})
      #
      # @param id [String] The unique identifier of the invoice to mark as uncollectible.
      #
      # @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Boolean]
      #
      # @see WhopSDK::Models::InvoiceMarkUncollectibleParams
      def mark_uncollectible(id, params = {})
        @client.request(
          method: :post,
          path: ["invoices/%1$s/mark_uncollectible", id],
          model: WhopSDK::Internal::Type::Boolean,
          options: params[:request_options]
        )
      end

      # Void an open invoice so it can no longer be paid. Voiding is permanent and
      # cannot be undone.
      #
      # Required permissions:
      #
      # - `invoice:update`
      #
      # @overload void(id, request_options: {})
      #
      # @param id [String] The unique identifier of the invoice to void.
      #
      # @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Boolean]
      #
      # @see WhopSDK::Models::InvoiceVoidParams
      def void(id, params = {})
        @client.request(
          method: :post,
          path: ["invoices/%1$s/void", id],
          model: WhopSDK::Internal::Type::Boolean,
          options: params[:request_options]
        )
      end

      # @api private
      #
      # @param client [WhopSDK::Client]
      def initialize(client:)
        @client = client
      end
    end
  end
end
