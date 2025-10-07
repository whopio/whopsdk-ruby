# typed: strong

module Whopsdk
  module Models
    class InvoiceListParams < Whopsdk::Internal::Type::BaseModel
      extend Whopsdk::Internal::Type::RequestParameters::Converter
      include Whopsdk::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(Whopsdk::InvoiceListParams, Whopsdk::Internal::AnyHash)
        end

      # The ID of the company to list invoices for
      sig { returns(String) }
      attr_accessor :company_id

      # Returns the elements in the list that come after the specified cursor.
      sig { returns(T.nilable(String)) }
      attr_accessor :after

      # Returns the elements in the list that come before the specified cursor.
      sig { returns(T.nilable(String)) }
      attr_accessor :before

      # The direction of the sort.
      sig { returns(T.nilable(Whopsdk::Direction::OrSymbol)) }
      attr_accessor :direction

      # The filters to apply to the invoices
      sig { returns(T.nilable(Whopsdk::InvoiceListParams::Filters)) }
      attr_reader :filters

      sig do
        params(
          filters: T.nilable(Whopsdk::InvoiceListParams::Filters::OrHash)
        ).void
      end
      attr_writer :filters

      # Returns the first _n_ elements from the list.
      sig { returns(T.nilable(Integer)) }
      attr_accessor :first

      # Returns the last _n_ elements from the list.
      sig { returns(T.nilable(Integer)) }
      attr_accessor :last

      # Which columns can be used to sort.
      sig { returns(T.nilable(Whopsdk::InvoiceListParams::Order::OrSymbol)) }
      attr_accessor :order

      sig do
        params(
          company_id: String,
          after: T.nilable(String),
          before: T.nilable(String),
          direction: T.nilable(Whopsdk::Direction::OrSymbol),
          filters: T.nilable(Whopsdk::InvoiceListParams::Filters::OrHash),
          first: T.nilable(Integer),
          last: T.nilable(Integer),
          order: T.nilable(Whopsdk::InvoiceListParams::Order::OrSymbol),
          request_options: Whopsdk::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # The ID of the company to list invoices for
        company_id:,
        # Returns the elements in the list that come after the specified cursor.
        after: nil,
        # Returns the elements in the list that come before the specified cursor.
        before: nil,
        # The direction of the sort.
        direction: nil,
        # The filters to apply to the invoices
        filters: nil,
        # Returns the first _n_ elements from the list.
        first: nil,
        # Returns the last _n_ elements from the list.
        last: nil,
        # Which columns can be used to sort.
        order: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            company_id: String,
            after: T.nilable(String),
            before: T.nilable(String),
            direction: T.nilable(Whopsdk::Direction::OrSymbol),
            filters: T.nilable(Whopsdk::InvoiceListParams::Filters),
            first: T.nilable(Integer),
            last: T.nilable(Integer),
            order: T.nilable(Whopsdk::InvoiceListParams::Order::OrSymbol),
            request_options: Whopsdk::RequestOptions
          }
        )
      end
      def to_hash
      end

      class Filters < Whopsdk::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Whopsdk::InvoiceListParams::Filters,
              Whopsdk::Internal::AnyHash
            )
          end

        # The access pass IDs to filter the invoices by
        sig { returns(T.nilable(T::Array[String])) }
        attr_accessor :access_pass_ids

        # The collection methods to filter the invoices by
        sig do
          returns(T.nilable(T::Array[Whopsdk::CollectionMethod::OrSymbol]))
        end
        attr_accessor :collection_methods

        # The statuses to filter the invoices by
        sig { returns(T.nilable(T::Array[Whopsdk::InvoiceStatus::OrSymbol])) }
        attr_accessor :statuses

        # The filters to apply to the invoices
        sig do
          params(
            access_pass_ids: T.nilable(T::Array[String]),
            collection_methods:
              T.nilable(T::Array[Whopsdk::CollectionMethod::OrSymbol]),
            statuses: T.nilable(T::Array[Whopsdk::InvoiceStatus::OrSymbol])
          ).returns(T.attached_class)
        end
        def self.new(
          # The access pass IDs to filter the invoices by
          access_pass_ids: nil,
          # The collection methods to filter the invoices by
          collection_methods: nil,
          # The statuses to filter the invoices by
          statuses: nil
        )
        end

        sig do
          override.returns(
            {
              access_pass_ids: T.nilable(T::Array[String]),
              collection_methods:
                T.nilable(T::Array[Whopsdk::CollectionMethod::OrSymbol]),
              statuses: T.nilable(T::Array[Whopsdk::InvoiceStatus::OrSymbol])
            }
          )
        end
        def to_hash
        end
      end

      # Which columns can be used to sort.
      module Order
        extend Whopsdk::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, Whopsdk::InvoiceListParams::Order) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        ID = T.let(:id, Whopsdk::InvoiceListParams::Order::TaggedSymbol)
        CREATED_AT =
          T.let(:created_at, Whopsdk::InvoiceListParams::Order::TaggedSymbol)
        DUE_DATE =
          T.let(:due_date, Whopsdk::InvoiceListParams::Order::TaggedSymbol)

        sig do
          override.returns(
            T::Array[Whopsdk::InvoiceListParams::Order::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
