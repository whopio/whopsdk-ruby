# frozen_string_literal: true

module Whopsdk
  module Resources
    class Invoices
      # @overload create(input:, request_options: {})
      #
      # @param input [Whopsdk::Models::InvoiceCreateParams::Input]
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

      # @api private
      #
      # @param client [Whopsdk::Client]
      def initialize(client:)
        @client = client
      end
    end
  end
end
