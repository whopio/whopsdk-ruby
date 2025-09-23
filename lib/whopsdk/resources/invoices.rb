# frozen_string_literal: true

module Whopsdk
  module Resources
    class Invoices
      # @overload create(request_options: {})
      #
      # @param request_options [Whopsdk::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Whopsdk::Models::InvoiceCreateResponse, nil]
      #
      # @see Whopsdk::Models::InvoiceCreateParams
      def create(params = {})
        @client.request(
          method: :post,
          path: "invoices",
          model: Whopsdk::Models::InvoiceCreateResponse,
          options: params[:request_options]
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

      # @overload list(request_options: {})
      #
      # @param request_options [Whopsdk::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Whopsdk::Models::InvoiceListResponse]
      #
      # @see Whopsdk::Models::InvoiceListParams
      def list(params = {})
        @client.request(
          method: :get,
          path: "invoices",
          model: Whopsdk::Models::InvoiceListResponse,
          options: params[:request_options]
        )
      end

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
