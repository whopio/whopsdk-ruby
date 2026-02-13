# typed: strong

module WhopSDK
  module Models
    class TransferListParams < WhopSDK::Internal::Type::BaseModel
      extend WhopSDK::Internal::Type::RequestParameters::Converter
      include WhopSDK::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(WhopSDK::TransferListParams, WhopSDK::Internal::AnyHash)
        end

      # Returns the elements in the list that come after the specified cursor.
      sig { returns(T.nilable(String)) }
      attr_accessor :after

      # Returns the elements in the list that come before the specified cursor.
      sig { returns(T.nilable(String)) }
      attr_accessor :before

      # Only return transfers created after this timestamp.
      sig { returns(T.nilable(Time)) }
      attr_accessor :created_after

      # Only return transfers created before this timestamp.
      sig { returns(T.nilable(Time)) }
      attr_accessor :created_before

      # Filter to transfers received by this account. Accepts a user, company, or ledger
      # account ID.
      sig { returns(T.nilable(String)) }
      attr_accessor :destination_id

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
      sig { returns(T.nilable(WhopSDK::TransferListParams::Order::OrSymbol)) }
      attr_accessor :order

      # Filter to transfers sent from this account. Accepts a user, company, or ledger
      # account ID.
      sig { returns(T.nilable(String)) }
      attr_accessor :origin_id

      sig do
        params(
          after: T.nilable(String),
          before: T.nilable(String),
          created_after: T.nilable(Time),
          created_before: T.nilable(Time),
          destination_id: T.nilable(String),
          direction: T.nilable(WhopSDK::Direction::OrSymbol),
          first: T.nilable(Integer),
          last: T.nilable(Integer),
          order: T.nilable(WhopSDK::TransferListParams::Order::OrSymbol),
          origin_id: T.nilable(String),
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # Returns the elements in the list that come after the specified cursor.
        after: nil,
        # Returns the elements in the list that come before the specified cursor.
        before: nil,
        # Only return transfers created after this timestamp.
        created_after: nil,
        # Only return transfers created before this timestamp.
        created_before: nil,
        # Filter to transfers received by this account. Accepts a user, company, or ledger
        # account ID.
        destination_id: nil,
        # The direction of the sort.
        direction: nil,
        # Returns the first _n_ elements from the list.
        first: nil,
        # Returns the last _n_ elements from the list.
        last: nil,
        # Which columns can be used to sort.
        order: nil,
        # Filter to transfers sent from this account. Accepts a user, company, or ledger
        # account ID.
        origin_id: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            after: T.nilable(String),
            before: T.nilable(String),
            created_after: T.nilable(Time),
            created_before: T.nilable(Time),
            destination_id: T.nilable(String),
            direction: T.nilable(WhopSDK::Direction::OrSymbol),
            first: T.nilable(Integer),
            last: T.nilable(Integer),
            order: T.nilable(WhopSDK::TransferListParams::Order::OrSymbol),
            origin_id: T.nilable(String),
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
          T.type_alias { T.all(Symbol, WhopSDK::TransferListParams::Order) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        AMOUNT =
          T.let(:amount, WhopSDK::TransferListParams::Order::TaggedSymbol)
        CREATED_AT =
          T.let(:created_at, WhopSDK::TransferListParams::Order::TaggedSymbol)

        sig do
          override.returns(
            T::Array[WhopSDK::TransferListParams::Order::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
