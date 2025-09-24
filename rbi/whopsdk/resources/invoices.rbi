# typed: strong

module Whopsdk
  module Resources
    class Invoices
      sig do
        params(
          input: Whopsdk::InvoiceCreateParams::Input::OrHash,
          request_options: Whopsdk::RequestOptions::OrHash
        ).returns(T.nilable(Whopsdk::Models::InvoiceCreateResponse))
      end
      def create(input:, request_options: {})
      end

      sig do
        params(
          company_id: String,
          after: T.nilable(String),
          before: T.nilable(String),
          direction: T.nilable(Whopsdk::InvoiceListParams::Direction::OrSymbol),
          filters: T.nilable(Whopsdk::InvoiceListParams::Filters::OrHash),
          first: T.nilable(Integer),
          last: T.nilable(Integer),
          order: T.nilable(Whopsdk::InvoiceListParams::Order::OrSymbol),
          request_options: Whopsdk::RequestOptions::OrHash
        ).returns(Whopsdk::Models::InvoiceListResponse)
      end
      def list(
        company_id:,
        after: nil,
        before: nil,
        direction: nil,
        filters: nil,
        first: nil,
        last: nil,
        order: nil,
        request_options: {}
      )
      end

      # @api private
      sig { params(client: Whopsdk::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end
