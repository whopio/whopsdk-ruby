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
      # - `plan:basic:read`
      #
      # @overload create(body:, request_options: {})
      #
      # @param body [WhopSDK::Models::InvoiceCreateParams::Body::CreateInvoiceInputWithProductAndMemberID, WhopSDK::Models::InvoiceCreateParams::Body::CreateInvoiceInputWithProductAndEmailAddress, WhopSDK::Models::InvoiceCreateParams::Body::CreateInvoiceInputWithProductIDAndMemberID, WhopSDK::Models::InvoiceCreateParams::Body::CreateInvoiceInputWithProductIDAndEmailAddress] Parameters for CreateInvoice
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
