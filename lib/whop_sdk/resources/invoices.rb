# frozen_string_literal: true

module WhopSDK
  module Resources
    # Invoices
    class Invoices
      # Some parameter documentations has been truncated, see
      # {WhopSDK::Models::InvoiceCreateParams} for more details.
      #
      # Create an invoice for a customer. The invoice can be charged automatically using
      # a stored payment method, or sent to the customer for manual payment.
      #
      # Required permissions:
      #
      # - `invoice:create`
      # - `plan:basic:read`
      #
      # @overload create(collection_method:, company_id:, due_date:, member_id:, plan:, product:, email_address:, product_id:, automatically_finalizes_at: nil, charge_buyer_fee: nil, customer_name: nil, payment_method_id: nil, payment_token_id: nil, request_options: {})
      #
      # @param collection_method [Symbol, WhopSDK::Models::CollectionMethod] How the invoice should be collected. Use charge_automatically to charge a stored
      #
      # @param company_id [String] The unique identifier of the company to create this invoice for.
      #
      # @param due_date [Time] The date by which the invoice must be paid.
      #
      # @param member_id [String] The unique identifier of an existing member to create this invoice for. If not p
      #
      # @param plan [WhopSDK::Models::InvoiceCreateParams::Plan] The plan attributes defining the price, currency, and billing interval for this
      #
      # @param product [WhopSDK::Models::InvoiceCreateParams::Product] The properties of the product to create for this invoice. Provide this to create
      #
      # @param email_address [String] The email address of the customer. Required when creating an invoice for a custo
      #
      # @param product_id [String] The unique identifier of an existing product to create this invoice for.
      #
      # @param automatically_finalizes_at [Time, nil] The date and time when the invoice will be automatically finalized and charged.
      #
      # @param charge_buyer_fee [Boolean, nil] Whether to charge the customer a buyer fee on this invoice.
      #
      # @param customer_name [String, nil] The name of the customer. Required when creating an invoice for a customer who i
      #
      # @param payment_method_id [String, nil] The unique identifier of the payment method to charge. Required when
      # collection\_
      #
      # @param payment_token_id [String, nil] The payment token ID to use for this invoice. If using charge_automatically, you
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
          body: parsed,
          model: WhopSDK::Invoice,
          options: options
        )
      end

      # Retrieves the details of an existing invoice.
      #
      # Required permissions:
      #
      # - `invoice:basic:read`
      # - `plan:basic:read`
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

      # Some parameter documentations has been truncated, see
      # {WhopSDK::Models::InvoiceListParams} for more details.
      #
      # Returns a paginated list of invoices for a company, with optional filtering by
      # product, status, collection method, and creation date.
      #
      # Required permissions:
      #
      # - `invoice:basic:read`
      # - `plan:basic:read`
      #
      # @overload list(company_id:, after: nil, before: nil, collection_methods: nil, created_after: nil, created_before: nil, direction: nil, first: nil, last: nil, order: nil, product_ids: nil, statuses: nil, request_options: {})
      #
      # @param company_id [String] The unique identifier of the company to list invoices for.
      #
      # @param after [String, nil] Returns the elements in the list that come after the specified cursor.
      #
      # @param before [String, nil] Returns the elements in the list that come before the specified cursor.
      #
      # @param collection_methods [Array<Symbol, WhopSDK::Models::CollectionMethod>, nil] Filter invoices by their collection method.
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
      def list(params)
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
