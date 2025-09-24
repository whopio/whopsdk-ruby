# frozen_string_literal: true

module Whopsdk
  module Resources
    class Invoices
      # @overload create(collection_method:, due_date:, plan:, access_pass: nil, access_pass_id: nil, charge_buyer_fee: nil, client_mutation_id: nil, customer_name: nil, email_address: nil, member_id: nil, payment_token_id: nil, request_options: {})
      #
      # @param collection_method [Symbol, Whopsdk::Models::InvoiceCreateParams::CollectionMethod]
      # @param due_date [Integer]
      # @param plan [Whopsdk::Models::InvoiceCreateParams::Plan]
      # @param access_pass [Whopsdk::Models::InvoiceCreateParams::AccessPass, nil]
      # @param access_pass_id [String, nil]
      # @param charge_buyer_fee [Boolean, nil]
      # @param client_mutation_id [String, nil]
      # @param customer_name [String, nil]
      # @param email_address [String, nil]
      # @param member_id [String, nil]
      # @param payment_token_id [String, nil]
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

      # @overload list(company_id:, after: nil, before: nil, direction: nil, filters: nil, first: nil, last: nil, order: nil, request_options: {})
      #
      # @param company_id [String]
      # @param after [String, nil]
      # @param before [String, nil]
      # @param direction [Symbol, Whopsdk::Models::InvoiceListParams::Direction, nil]
      # @param filters [Whopsdk::Models::InvoiceListParams::Filters, nil]
      # @param first [Integer, nil]
      # @param last [Integer, nil]
      # @param order [Symbol, Whopsdk::Models::InvoiceListParams::Order, nil]
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

      # @overload void(id, client_mutation_id: nil, request_options: {})
      #
      # @param id [String]
      # @param client_mutation_id [String, nil]
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
