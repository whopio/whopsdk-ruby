# typed: strong

module Whopsdk
  module Models
    class EntryListParams < Whopsdk::Internal::Type::BaseModel
      extend Whopsdk::Internal::Type::RequestParameters::Converter
      include Whopsdk::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(Whopsdk::EntryListParams, Whopsdk::Internal::AnyHash)
        end

      # The ID of the company
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

      # Returns the first _n_ elements from the list.
      sig { returns(T.nilable(Integer)) }
      attr_accessor :first

      # Returns the last _n_ elements from the list.
      sig { returns(T.nilable(Integer)) }
      attr_accessor :last

      # Which columns can be used to sort.
      sig { returns(T.nilable(Whopsdk::EntryListParams::Order::OrSymbol)) }
      attr_accessor :order

      # The plan IDs to filter the entries by
      sig { returns(T.nilable(T::Array[String])) }
      attr_accessor :plan_ids

      # The access pass IDs to filter the entries by
      sig { returns(T.nilable(T::Array[String])) }
      attr_accessor :product_ids

      # The statuses to filter the entries by
      sig do
        returns(T.nilable(T::Array[T.nilable(Whopsdk::EntryStatus::OrSymbol)]))
      end
      attr_accessor :statuses

      sig do
        params(
          company_id: String,
          after: T.nilable(String),
          before: T.nilable(String),
          direction: T.nilable(Whopsdk::Direction::OrSymbol),
          first: T.nilable(Integer),
          last: T.nilable(Integer),
          order: T.nilable(Whopsdk::EntryListParams::Order::OrSymbol),
          plan_ids: T.nilable(T::Array[String]),
          product_ids: T.nilable(T::Array[String]),
          statuses:
            T.nilable(T::Array[T.nilable(Whopsdk::EntryStatus::OrSymbol)]),
          request_options: Whopsdk::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # The ID of the company
        company_id:,
        # Returns the elements in the list that come after the specified cursor.
        after: nil,
        # Returns the elements in the list that come before the specified cursor.
        before: nil,
        # The direction of the sort.
        direction: nil,
        # Returns the first _n_ elements from the list.
        first: nil,
        # Returns the last _n_ elements from the list.
        last: nil,
        # Which columns can be used to sort.
        order: nil,
        # The plan IDs to filter the entries by
        plan_ids: nil,
        # The access pass IDs to filter the entries by
        product_ids: nil,
        # The statuses to filter the entries by
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
            direction: T.nilable(Whopsdk::Direction::OrSymbol),
            first: T.nilable(Integer),
            last: T.nilable(Integer),
            order: T.nilable(Whopsdk::EntryListParams::Order::OrSymbol),
            plan_ids: T.nilable(T::Array[String]),
            product_ids: T.nilable(T::Array[String]),
            statuses:
              T.nilable(T::Array[T.nilable(Whopsdk::EntryStatus::OrSymbol)]),
            request_options: Whopsdk::RequestOptions
          }
        )
      end
      def to_hash
      end

      # Which columns can be used to sort.
      module Order
        extend Whopsdk::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, Whopsdk::EntryListParams::Order) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        ID = T.let(:id, Whopsdk::EntryListParams::Order::TaggedSymbol)
        CREATED_AT =
          T.let(:created_at, Whopsdk::EntryListParams::Order::TaggedSymbol)

        sig do
          override.returns(
            T::Array[Whopsdk::EntryListParams::Order::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
