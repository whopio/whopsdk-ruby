# typed: strong

module Whopsdk
  module Models
    class TransferListParams < Whopsdk::Internal::Type::BaseModel
      extend Whopsdk::Internal::Type::RequestParameters::Converter
      include Whopsdk::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(Whopsdk::TransferListParams, Whopsdk::Internal::AnyHash)
        end

      # Returns the elements in the list that come after the specified cursor.
      sig { returns(T.nilable(String)) }
      attr_accessor :after

      # Returns the elements in the list that come before the specified cursor.
      sig { returns(T.nilable(String)) }
      attr_accessor :before

      # Filter transfers to only those that were sent to this destination account.
      # (user_xxx, biz_xxx, ldgr_xxx)
      sig { returns(T.nilable(String)) }
      attr_accessor :destination_id

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
      sig { returns(T.nilable(Whopsdk::TransferListParams::Order::OrSymbol)) }
      attr_accessor :order

      # Filter transfers to only those that were sent from this origin account.
      # (user_xxx, biz_xxx, ldgr_xxx)
      sig { returns(T.nilable(String)) }
      attr_accessor :origin_id

      sig do
        params(
          after: T.nilable(String),
          before: T.nilable(String),
          destination_id: T.nilable(String),
          direction: T.nilable(Whopsdk::Direction::OrSymbol),
          first: T.nilable(Integer),
          last: T.nilable(Integer),
          order: T.nilable(Whopsdk::TransferListParams::Order::OrSymbol),
          origin_id: T.nilable(String),
          request_options: Whopsdk::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # Returns the elements in the list that come after the specified cursor.
        after: nil,
        # Returns the elements in the list that come before the specified cursor.
        before: nil,
        # Filter transfers to only those that were sent to this destination account.
        # (user_xxx, biz_xxx, ldgr_xxx)
        destination_id: nil,
        # The direction of the sort.
        direction: nil,
        # Returns the first _n_ elements from the list.
        first: nil,
        # Returns the last _n_ elements from the list.
        last: nil,
        # Which columns can be used to sort.
        order: nil,
        # Filter transfers to only those that were sent from this origin account.
        # (user_xxx, biz_xxx, ldgr_xxx)
        origin_id: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            after: T.nilable(String),
            before: T.nilable(String),
            destination_id: T.nilable(String),
            direction: T.nilable(Whopsdk::Direction::OrSymbol),
            first: T.nilable(Integer),
            last: T.nilable(Integer),
            order: T.nilable(Whopsdk::TransferListParams::Order::OrSymbol),
            origin_id: T.nilable(String),
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
          T.type_alias { T.all(Symbol, Whopsdk::TransferListParams::Order) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        AMOUNT =
          T.let(:amount, Whopsdk::TransferListParams::Order::TaggedSymbol)
        CREATED_AT =
          T.let(:created_at, Whopsdk::TransferListParams::Order::TaggedSymbol)

        sig do
          override.returns(
            T::Array[Whopsdk::TransferListParams::Order::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
