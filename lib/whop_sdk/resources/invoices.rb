# frozen_string_literal: true

module WhopSDK
  module Resources
    class Invoices
      # Some parameter documentations has been truncated, see
      # {WhopSDK::Models::InvoiceCreateParams} for more details.
      #
      # Creates an invoice
      #
      # Required permissions:
      #
      # - `invoice:create`
      # - `plan:basic:read`
      #
      # @overload create(collection_method:, company_id:, due_date:, member_id:, plan:, product:, email_address:, product_id:, charge_buyer_fee: nil, customer_name: nil, payment_method_id: nil, payment_token_id: nil, request_options: {})
      #
      # @param collection_method [Symbol, WhopSDK::Models::CollectionMethod] The method of collection for this invoice. If using charge_automatically, you mu
      #
      # @param company_id [String] The company ID to create this invoice for.
      #
      # @param due_date [Time] The date the invoice is due, if applicable.
      #
      # @param member_id [String] The member ID to create this invoice for. Include this if you want to create an
      #
      # @param plan [WhopSDK::Models::InvoiceCreateParams::Plan] The properties of the plan to create for this invoice.
      #
      # @param product [WhopSDK::Models::InvoiceCreateParams::Product] The properties of the product to create for this invoice. Include this if you wa
      #
      # @param email_address [String] The email address to create this invoice for. This is required if you want to cr
      #
      # @param product_id [String] The product ID to create this invoice for. Include this if you want to create an
      #
      # @param charge_buyer_fee [Boolean, nil] Whether or not to charge the customer a buyer fee.
      #
      # @param customer_name [String, nil] The name of the customer to create this invoice for. This is required if you wan
      #
      # @param payment_method_id [String, nil] The payment method ID to use for this invoice. If using charge_automatically, yo
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

      # Retrieves an invoice by ID or token
      #
      # Required permissions:
      #
      # - `invoice:basic:read`
      # - `plan:basic:read`
      #
      # @overload retrieve(id, request_options: {})
      #
      # @param id [String] The ID of the invoice or a token
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

      # Lists invoices
      #
      # Required permissions:
      #
      # - `invoice:basic:read`
      # - `plan:basic:read`
      #
      # @overload list(company_id:, after: nil, before: nil, collection_methods: nil, created_after: nil, created_before: nil, direction: nil, first: nil, last: nil, order: nil, product_ids: nil, statuses: nil, request_options: {})
      #
      # @param company_id [String] The ID of the company to list invoices for
      #
      # @param after [String, nil] Returns the elements in the list that come after the specified cursor.
      #
      # @param before [String, nil] Returns the elements in the list that come before the specified cursor.
      #
      # @param collection_methods [Array<Symbol, WhopSDK::Models::CollectionMethod>, nil] Filter invoices by their collection method
      #
      # @param created_after [Time, nil] The minimum creation date to filter by
      #
      # @param created_before [Time, nil] The maximum creation date to filter by
      #
      # @param direction [Symbol, WhopSDK::Models::Direction, nil] The direction of the sort.
      #
      # @param first [Integer, nil] Returns the first _n_ elements from the list.
      #
      # @param last [Integer, nil] Returns the last _n_ elements from the list.
      #
      # @param order [Symbol, WhopSDK::Models::InvoiceListParams::Order, nil] Which columns can be used to sort.
      #
      # @param product_ids [Array<String>, nil] Return only invoices created for these specific product ids
      #
      # @param statuses [Array<Symbol, WhopSDK::Models::InvoiceStatus>, nil] The statuses to filter the invoices by
      #
      # @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [WhopSDK::Internal::CursorPage<WhopSDK::Models::InvoiceListItem>]
      #
      # @see WhopSDK::Models::InvoiceListParams
      def list(params)
        parsed, options = WhopSDK::InvoiceListParams.dump_request(params)
        @client.request(
          method: :get,
          path: "invoices",
          query: parsed,
          page: WhopSDK::Internal::CursorPage,
          model: WhopSDK::InvoiceListItem,
          options: options
        )
      end

      # Void an invoice
      #
      # Required permissions:
      #
      # - `invoice:update`
      #
      # @overload void(id, request_options: {})
      #
      # @param id [String] The ID of the invoice to void
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
