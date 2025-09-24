# typed: strong

module Whopsdk
  module Resources
    class Invoices
      sig do
        params(
          collection_method:
            Whopsdk::InvoiceCreateParams::CollectionMethod::OrSymbol,
          due_date: Integer,
          plan: Whopsdk::InvoiceCreateParams::Plan::OrHash,
          access_pass:
            T.nilable(Whopsdk::InvoiceCreateParams::AccessPass::OrHash),
          access_pass_id: T.nilable(String),
          charge_buyer_fee: T.nilable(T::Boolean),
          client_mutation_id: T.nilable(String),
          customer_name: T.nilable(String),
          email_address: T.nilable(String),
          member_id: T.nilable(String),
          payment_token_id: T.nilable(String),
          request_options: Whopsdk::RequestOptions::OrHash
        ).returns(T.nilable(Whopsdk::Models::InvoiceCreateResponse))
      end
      def create(
        collection_method:,
        due_date:,
        plan:,
        access_pass: nil,
        access_pass_id: nil,
        charge_buyer_fee: nil,
        client_mutation_id: nil,
        customer_name: nil,
        email_address: nil,
        member_id: nil,
        payment_token_id: nil,
        request_options: {}
      )
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

      sig do
        params(
          id: String,
          client_mutation_id: T.nilable(String),
          request_options: Whopsdk::RequestOptions::OrHash
        ).returns(T.nilable(T::Boolean))
      end
      def void(id, client_mutation_id: nil, request_options: {})
      end

      # @api private
      sig { params(client: Whopsdk::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end
