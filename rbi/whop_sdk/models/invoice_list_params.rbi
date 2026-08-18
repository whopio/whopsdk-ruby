# typed: strong

module WhopSDK
  module Models
    class InvoiceListParams < WhopSDK::Internal::Type::BaseModel
      extend WhopSDK::Internal::Type::RequestParameters::Converter
      include WhopSDK::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(WhopSDK::InvoiceListParams, WhopSDK::Internal::AnyHash)
        end

      # Returns the elements in the list that come after the specified cursor.
      sig { returns(T.nilable(String)) }
      attr_reader :after

      sig { params(after: String).void }
      attr_writer :after

      # Returns the elements in the list that come before the specified cursor.
      sig { returns(T.nilable(String)) }
      attr_reader :before

      sig { params(before: String).void }
      attr_writer :before

      # Filter invoices by their collection method.
      sig { returns(T.nilable(T::Array[WhopSDK::CollectionMethod::OrSymbol])) }
      attr_reader :collection_methods

      sig do
        params(
          collection_methods: T::Array[WhopSDK::CollectionMethod::OrSymbol]
        ).void
      end
      attr_writer :collection_methods

      # The unique identifier of the company to list invoices for.
      sig { returns(T.nilable(String)) }
      attr_reader :company_id

      sig { params(company_id: String).void }
      attr_writer :company_id

      # Only return invoices created after this timestamp.
      sig { returns(T.nilable(Time)) }
      attr_reader :created_after

      sig { params(created_after: Time).void }
      attr_writer :created_after

      # Only return invoices created before this timestamp.
      sig { returns(T.nilable(Time)) }
      attr_reader :created_before

      sig { params(created_before: Time).void }
      attr_writer :created_before

      # The sort direction for ordering results, either ascending or descending.
      sig { returns(T.nilable(WhopSDK::Direction::OrSymbol)) }
      attr_reader :direction

      sig { params(direction: WhopSDK::Direction::OrSymbol).void }
      attr_writer :direction

      # Returns the first _n_ elements from the list.
      sig { returns(T.nilable(Integer)) }
      attr_reader :first

      sig { params(first: Integer).void }
      attr_writer :first

      # Returns the last _n_ elements from the list.
      sig { returns(T.nilable(Integer)) }
      attr_reader :last

      sig { params(last: Integer).void }
      attr_writer :last

      # The field to order results by, such as creation date or due date.
      sig { returns(T.nilable(WhopSDK::InvoiceListParams::Order::OrSymbol)) }
      attr_reader :order

      sig { params(order: WhopSDK::InvoiceListParams::Order::OrSymbol).void }
      attr_writer :order

      # Filter invoices to only those associated with these specific product
      # identifiers.
      sig { returns(T.nilable(T::Array[String])) }
      attr_reader :product_ids

      sig { params(product_ids: T::Array[String]).void }
      attr_writer :product_ids

      # Filter invoices by their current status.
      sig { returns(T.nilable(T::Array[WhopSDK::InvoiceStatus::OrSymbol])) }
      attr_reader :statuses

      sig { params(statuses: T::Array[WhopSDK::InvoiceStatus::OrSymbol]).void }
      attr_writer :statuses

      sig do
        params(
          after: String,
          before: String,
          collection_methods: T::Array[WhopSDK::CollectionMethod::OrSymbol],
          company_id: String,
          created_after: Time,
          created_before: Time,
          direction: WhopSDK::Direction::OrSymbol,
          first: Integer,
          last: Integer,
          order: WhopSDK::InvoiceListParams::Order::OrSymbol,
          product_ids: T::Array[String],
          statuses: T::Array[WhopSDK::InvoiceStatus::OrSymbol],
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # Returns the elements in the list that come after the specified cursor.
        after: nil,
        # Returns the elements in the list that come before the specified cursor.
        before: nil,
        # Filter invoices by their collection method.
        collection_methods: nil,
        # The unique identifier of the company to list invoices for.
        company_id: nil,
        # Only return invoices created after this timestamp.
        created_after: nil,
        # Only return invoices created before this timestamp.
        created_before: nil,
        # The sort direction for ordering results, either ascending or descending.
        direction: nil,
        # Returns the first _n_ elements from the list.
        first: nil,
        # Returns the last _n_ elements from the list.
        last: nil,
        # The field to order results by, such as creation date or due date.
        order: nil,
        # Filter invoices to only those associated with these specific product
        # identifiers.
        product_ids: nil,
        # Filter invoices by their current status.
        statuses: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            after: String,
            before: String,
            collection_methods: T::Array[WhopSDK::CollectionMethod::OrSymbol],
            company_id: String,
            created_after: Time,
            created_before: Time,
            direction: WhopSDK::Direction::OrSymbol,
            first: Integer,
            last: Integer,
            order: WhopSDK::InvoiceListParams::Order::OrSymbol,
            product_ids: T::Array[String],
            statuses: T::Array[WhopSDK::InvoiceStatus::OrSymbol],
            request_options: WhopSDK::RequestOptions
          }
        )
      end
      def to_hash
      end

      # The field to order results by, such as creation date or due date.
      module Order
        extend WhopSDK::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, WhopSDK::InvoiceListParams::Order) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        ID = T.let(:id, WhopSDK::InvoiceListParams::Order::TaggedSymbol)
        CREATED_AT =
          T.let(:created_at, WhopSDK::InvoiceListParams::Order::TaggedSymbol)
        DUE_DATE =
          T.let(:due_date, WhopSDK::InvoiceListParams::Order::TaggedSymbol)

        sig do
          override.returns(
            T::Array[WhopSDK::InvoiceListParams::Order::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
