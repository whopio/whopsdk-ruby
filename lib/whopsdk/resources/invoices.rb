# frozen_string_literal: true

module Whopsdk
  module Resources
    class Invoices
      # Some parameter documentations has been truncated, see
      # {Whopsdk::Models::InvoiceCreateParams} for more details.
      #
      # Creates an invoice
      #
      # @overload create(collection_method:, company_id:, due_date:, plan:, charge_buyer_fee: nil, customer_name: nil, email_address: nil, member_id: nil, payment_token_id: nil, product: nil, product_id: nil, request_options: {})
      #
      # @param collection_method [Symbol, Whopsdk::Models::CollectionMethod] The method of collection for this invoice. If using charge_automatically, you mu
      #
      # @param company_id [String] The company ID to create this invoice for.
      #
      # @param due_date [Integer] The date the invoice is due, if applicable.
      #
      # @param plan [Whopsdk::Models::InvoiceCreateParams::Plan] The properties of the plan to create for this invoice.
      #
      # @param charge_buyer_fee [Boolean, nil] Whether or not to charge the customer a buyer fee.
      #
      # @param customer_name [String, nil] The name of the customer to create this invoice for. This is required if you wan
      #
      # @param email_address [String, nil] The email address to create this invoice for. This is required if you want to cr
      #
      # @param member_id [String, nil] The member ID to create this invoice for. Include this if you want to create an
      #
      # @param payment_token_id [String, nil] The payment token ID to use for this invoice. If using charge_automatically, you
      #
      # @param product [Whopsdk::Models::InvoiceCreateParams::Product, nil] The properties of the access pass to create for this invoice. Include this if yo
      #
      # @param product_id [String, nil] The access pass ID to create this invoice for. Include this if you want to creat
      #
      # @param request_options [Whopsdk::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Whopsdk::Models::InvoiceCreateResponse, nil]
      #
      # @see Whopsdk::Models::InvoiceCreateParams
      def create(params)
        parsed, options = Whopsdk::InvoiceCreateParams.dump_request(params)
        @client.request(
          method: :post,
          path: "invoices",
          body: parsed,
          model: Whopsdk::Models::InvoiceCreateResponse,
          options: options
        )
      end

      # Retrieves an invoice by ID or token
      #
      # @overload retrieve(id, request_options: {})
      #
      # @param id [String]
      # @param request_options [Whopsdk::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Whopsdk::Models::Invoice]
      #
      # @see Whopsdk::Models::InvoiceRetrieveParams
      def retrieve(id, params = {})
        @client.request(
          method: :get,
          path: ["invoices/%1$s", id],
          model: Whopsdk::Invoice,
          options: params[:request_options]
        )
      end

      # Lists invoices
      #
      # @overload list(company_id:, after: nil, before: nil, direction: nil, filters: nil, first: nil, last: nil, order: nil, request_options: {})
      #
      # @param company_id [String] The ID of the company to list invoices for
      #
      # @param after [String, nil] Returns the elements in the list that come after the specified cursor.
      #
      # @param before [String, nil] Returns the elements in the list that come before the specified cursor.
      #
      # @param direction [Symbol, Whopsdk::Models::InvoiceListParams::Direction, nil] The direction of the sort.
      #
      # @param filters [Whopsdk::Models::InvoiceListParams::Filters, nil] The filters to apply to the invoices
      #
      # @param first [Integer, nil] Returns the first _n_ elements from the list.
      #
      # @param last [Integer, nil] Returns the last _n_ elements from the list.
      #
      # @param order [Symbol, Whopsdk::Models::InvoiceListParams::Order, nil] Which columns can be used to sort.
      #
      # @param request_options [Whopsdk::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Whopsdk::Internal::CursorPage<Whopsdk::Models::InvoiceListItem, nil>]
      #
      # @see Whopsdk::Models::InvoiceListParams
      def list(params)
        parsed, options = Whopsdk::InvoiceListParams.dump_request(params)
        @client.request(
          method: :get,
          path: "invoices",
          query: parsed,
          page: Whopsdk::Internal::CursorPage,
          model: Whopsdk::InvoiceListItem,
          options: options
        )
      end

      # Void an invoice
      #
      # @overload void(id, request_options: {})
      #
      # @param id [String]
      # @param request_options [Whopsdk::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Boolean, nil]
      #
      # @see Whopsdk::Models::InvoiceVoidParams
      def void(id, params = {})
        @client.request(
          method: :post,
          path: ["invoices/%1$s/void", id],
          model: Whopsdk::Internal::Type::Boolean,
          options: params[:request_options]
        )
      end

      # @api private
      #
      # @param client [Whopsdk::Client]
      def initialize(client:)
        @client = client
      end
    end
  end
end
