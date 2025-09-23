# typed: strong

module Whopsdk
  module Resources
    class Invoices
      sig do
        params(request_options: Whopsdk::RequestOptions::OrHash).returns(
          T.nilable(Whopsdk::Models::InvoiceCreateResponse)
        )
      end
      def create(request_options: {})
      end

      sig do
        params(
          id: String,
          request_options: Whopsdk::RequestOptions::OrHash
        ).returns(Whopsdk::Models::InvoiceRetrieveResponse)
      end
      def retrieve(id, request_options: {})
      end

      sig do
        params(request_options: Whopsdk::RequestOptions::OrHash).returns(
          Whopsdk::Models::InvoiceListResponse
        )
      end
      def list(request_options: {})
      end

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
