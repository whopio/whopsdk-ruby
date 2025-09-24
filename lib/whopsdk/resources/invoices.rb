# frozen_string_literal: true

module Whopsdk
  module Resources
    class Invoices
      # Some parameter documentations has been truncated, see
      # {Whopsdk::Models::InvoiceCreateParams} for more details.
      #
      # @overload create(collection_method:, due_date:, plan:, access_pass: nil, access_pass_id: nil, charge_buyer_fee: nil, client_mutation_id: nil, customer_name: nil, email_address: nil, member_id: nil, payment_token_id: nil, request_options: {})
      #
      # @param collection_method [Symbol, Whopsdk::Models::InvoiceCreateParams::CollectionMethod] The method of collection for an invoice.
      #
      # @param due_date [Integer] A valid timestamp in seconds, transported as an integer
      #
      # @param plan [Whopsdk::Models::InvoiceCreateParams::Plan] The properties of the plan to create for this invoice.
      #
      # @param access_pass [Whopsdk::Models::InvoiceCreateParams::AccessPass, nil] The properties of the access pass to create for this invoice.
      #
      # @param access_pass_id [String, nil] Represents a unique identifier that is Base64 obfuscated. It is often used to re
      #
      # @param charge_buyer_fee [Boolean, nil] Represents `true` or `false` values.
      #
      # @param client_mutation_id [String, nil] Represents textual data as UTF-8 character sequences. This type is most often us
      #
      # @param customer_name [String, nil] Represents textual data as UTF-8 character sequences. This type is most often us
      #
      # @param email_address [String, nil] Represents textual data as UTF-8 character sequences. This type is most often us
      #
      # @param member_id [String, nil] Represents a unique identifier that is Base64 obfuscated. It is often used to re
      #
      # @param payment_token_id [String, nil] Represents a unique identifier that is Base64 obfuscated. It is often used to re
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

      # Some parameter documentations has been truncated, see
      # {Whopsdk::Models::InvoiceListParams} for more details.
      #
      # @overload list(company_id:, after: nil, before: nil, direction: nil, filters: nil, first: nil, last: nil, order: nil, request_options: {})
      #
      # @param company_id [String] Represents a unique identifier that is Base64 obfuscated. It is often used to re
      #
      # @param after [String, nil] Represents textual data as UTF-8 character sequences. This type is most often us
      #
      # @param before [String, nil] Represents textual data as UTF-8 character sequences. This type is most often us
      #
      # @param direction [Symbol, Whopsdk::Models::InvoiceListParams::Direction, nil] The direction of the sort.
      #
      # @param filters [Whopsdk::Models::InvoiceListParams::Filters, nil] Filters for the invoices table.
      #
      # @param first [Integer, nil] Represents non-fractional signed whole numeric values. Int can represent values
      #
      # @param last [Integer, nil] Represents non-fractional signed whole numeric values. Int can represent values
      #
      # @param order [Symbol, Whopsdk::Models::InvoiceListParams::Order, nil] Which columns can be used to sort.
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

      # Some parameter documentations has been truncated, see
      # {Whopsdk::Models::InvoiceVoidParams} for more details.
      #
      # @overload void(id, client_mutation_id: nil, request_options: {})
      #
      # @param id [String]
      #
      # @param client_mutation_id [String, nil] Represents textual data as UTF-8 character sequences. This type is most often us
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
