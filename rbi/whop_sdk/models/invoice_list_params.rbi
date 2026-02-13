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

      # The unique identifier of the company to list invoices for.
      sig { returns(String) }
      attr_accessor :company_id

      # Returns the elements in the list that come after the specified cursor.
      sig { returns(T.nilable(String)) }
      attr_accessor :after

      # Returns the elements in the list that come before the specified cursor.
      sig { returns(T.nilable(String)) }
      attr_accessor :before

      # Filter invoices by their collection method.
      sig { returns(T.nilable(T::Array[WhopSDK::CollectionMethod::OrSymbol])) }
      attr_accessor :collection_methods

      # Only return invoices created after this timestamp.
      sig { returns(T.nilable(Time)) }
      attr_accessor :created_after

      # Only return invoices created before this timestamp.
      sig { returns(T.nilable(Time)) }
      attr_accessor :created_before

      # The direction of the sort.
      sig { returns(T.nilable(WhopSDK::Direction::OrSymbol)) }
      attr_accessor :direction

      # Returns the first _n_ elements from the list.
      sig { returns(T.nilable(Integer)) }
      attr_accessor :first

      # Returns the last _n_ elements from the list.
      sig { returns(T.nilable(Integer)) }
      attr_accessor :last

      # Which columns can be used to sort.
      sig { returns(T.nilable(WhopSDK::InvoiceListParams::Order::OrSymbol)) }
      attr_accessor :order

      # Filter invoices to only those associated with these specific product
      # identifiers.
      sig { returns(T.nilable(T::Array[String])) }
      attr_accessor :product_ids

      # Filter invoices by their current status.
      sig { returns(T.nilable(T::Array[WhopSDK::InvoiceStatus::OrSymbol])) }
      attr_accessor :statuses

      sig do
        params(
          company_id: String,
          after: T.nilable(String),
          before: T.nilable(String),
          collection_methods:
            T.nilable(T::Array[WhopSDK::CollectionMethod::OrSymbol]),
          created_after: T.nilable(Time),
          created_before: T.nilable(Time),
          direction: T.nilable(WhopSDK::Direction::OrSymbol),
          first: T.nilable(Integer),
          last: T.nilable(Integer),
          order: T.nilable(WhopSDK::InvoiceListParams::Order::OrSymbol),
          product_ids: T.nilable(T::Array[String]),
          statuses: T.nilable(T::Array[WhopSDK::InvoiceStatus::OrSymbol]),
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # The unique identifier of the company to list invoices for.
        company_id:,
        # Returns the elements in the list that come after the specified cursor.
        after: nil,
        # Returns the elements in the list that come before the specified cursor.
        before: nil,
        # Filter invoices by their collection method.
        collection_methods: nil,
        # Only return invoices created after this timestamp.
        created_after: nil,
        # Only return invoices created before this timestamp.
        created_before: nil,
        # The direction of the sort.
        direction: nil,
        # Returns the first _n_ elements from the list.
        first: nil,
        # Returns the last _n_ elements from the list.
        last: nil,
        # Which columns can be used to sort.
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
            company_id: String,
            after: T.nilable(String),
            before: T.nilable(String),
            collection_methods:
              T.nilable(T::Array[WhopSDK::CollectionMethod::OrSymbol]),
            created_after: T.nilable(Time),
            created_before: T.nilable(Time),
            direction: T.nilable(WhopSDK::Direction::OrSymbol),
            first: T.nilable(Integer),
            last: T.nilable(Integer),
            order: T.nilable(WhopSDK::InvoiceListParams::Order::OrSymbol),
            product_ids: T.nilable(T::Array[String]),
            statuses: T.nilable(T::Array[WhopSDK::InvoiceStatus::OrSymbol]),
            request_options: WhopSDK::RequestOptions
          }
        )
      end
      def to_hash
      end

      # Which columns can be used to sort.
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
