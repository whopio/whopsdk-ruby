# frozen_string_literal: true

module Whopsdk
  module Resources
    class Invoices
      # Some parameter documentations has been truncated, see
      # {Whopsdk::Models::InvoiceCreateParams} for more details.
      #
      # Creates an invoice
      #
      # @overload create(collection_method:, due_date:, plan:, access_pass: nil, access_pass_id: nil, charge_buyer_fee: nil, client_mutation_id: nil, customer_name: nil, email_address: nil, member_id: nil, payment_token_id: nil, request_options: {})
      #
      # @param collection_method [Symbol, Whopsdk::Models::InvoiceCreateParams::CollectionMethod] The method of collection for this invoice. If using charge_automatically, you mu
      #
      # @param due_date [Integer] The date the invoice is due, if applicable.
      #
      # @param plan [Whopsdk::Models::InvoiceCreateParams::Plan] The properties of the plan to create for this invoice.
      #
      # @param access_pass [Whopsdk::Models::InvoiceCreateParams::AccessPass, nil] The properties of the access pass to create for this invoice. Include this if yo
      #
      # @param access_pass_id [String, nil] The access pass ID to create this invoice for. Include this if you want to creat
      #
      # @param charge_buyer_fee [Boolean, nil] Whether or not to charge the customer a buyer fee.
      #
      # @param client_mutation_id [String, nil] A unique identifier for the client performing the mutation.
      #
      # @param customer_name [String, nil] The name of the customer to create this invoice for. This is required if you wan
      #
      # @param email_address [String, nil] The email address to create this invoice for. This is required if you want to cr
      #
      # @param member_id [String, nil] The member ID to create this invoice for. Include this if you want to create an
      #
      # @param payment_token_id [String, nil] The payment token ID to use for this invoice. If using charge_automatically, you
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
      # @return [Whopsdk::Models::InvoiceRetrieveResponse]
      #
      # @see Whopsdk::Models::InvoiceRetrieveParams
      def retrieve(id, params = {})
        @client.request(
          method: :get,
          path: ["invoices/%1$s", id],
          model: Whopsdk::Models::InvoiceRetrieveResponse,
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
      # @param direction [Symbol, Whopsdk::Models::InvoiceListParams::Direction, nil] The direction to sort the invoices by
      #
      # @param filters [Whopsdk::Models::InvoiceListParams::Filters, nil] The filters to apply to the invoices
      #
      # @param first [Integer, nil] Returns the first _n_ elements from the list.
      #
      # @param last [Integer, nil] Returns the last _n_ elements from the list.
      #
      # @param order [Symbol, Whopsdk::Models::InvoiceListParams::Order, nil] The order to sort the invoices by
      #
      # @param request_options [Whopsdk::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Whopsdk::Models::InvoiceListResponse]
      #
      # @see Whopsdk::Models::InvoiceListParams
      def list(params)
        parsed, options = Whopsdk::InvoiceListParams.dump_request(params)
        @client.request(
          method: :get,
          path: "invoices",
          query: parsed,
          model: Whopsdk::Models::InvoiceListResponse,
          options: options
        )
      end

      # Void an invoice
      #
      # @overload void(id, client_mutation_id: nil, request_options: {})
      #
      # @param id [String]
      #
      # @param client_mutation_id [String, nil] A unique identifier for the client performing the mutation.
      #
      # @param request_options [Whopsdk::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Boolean, nil]
      #
      # @see Whopsdk::Models::InvoiceVoidParams
      def void(id, params = {})
        parsed, options = Whopsdk::InvoiceVoidParams.dump_request(params)
        @client.request(
          method: :post,
          path: ["invoices/%1$s/void", id],
          body: parsed,
          model: Whopsdk::Internal::Type::Boolean,
          options: options
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
