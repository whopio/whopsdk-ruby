# typed: strong

module WhopSDK
  module Models
    class AccountListParams < WhopSDK::Internal::Type::BaseModel
      extend WhopSDK::Internal::Type::RequestParameters::Converter
      include WhopSDK::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(WhopSDK::AccountListParams, WhopSDK::Internal::AnyHash)
        end

      # A cursor; returns accounts after this position.
      sig { returns(T.nilable(String)) }
      attr_reader :after

      sig { params(after: String).void }
      attr_writer :after

      # A cursor; returns accounts before this position.
      sig { returns(T.nilable(String)) }
      attr_reader :before

      sig { params(before: String).void }
      attr_writer :before

      # Sort direction.
      sig do
        returns(T.nilable(WhopSDK::AccountListParams::Direction::OrSymbol))
      end
      attr_reader :direction

      sig do
        params(direction: WhopSDK::AccountListParams::Direction::OrSymbol).void
      end
      attr_writer :direction

      # The number of accounts to return (default 10, max 50).
      sig { returns(T.nilable(Integer)) }
      attr_reader :first

      sig { params(first: Integer).void }
      attr_writer :first

      # The number of accounts to return from the end of the range.
      sig { returns(T.nilable(Integer)) }
      attr_reader :last

      sig { params(last: Integer).void }
      attr_writer :last

      # The field to sort accounts by.
      sig { returns(T.nilable(WhopSDK::AccountListParams::Order::OrSymbol)) }
      attr_reader :order

      sig { params(order: WhopSDK::AccountListParams::Order::OrSymbol).void }
      attr_writer :order

      sig do
        params(
          after: String,
          before: String,
          direction: WhopSDK::AccountListParams::Direction::OrSymbol,
          first: Integer,
          last: Integer,
          order: WhopSDK::AccountListParams::Order::OrSymbol,
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # A cursor; returns accounts after this position.
        after: nil,
        # A cursor; returns accounts before this position.
        before: nil,
        # Sort direction.
        direction: nil,
        # The number of accounts to return (default 10, max 50).
        first: nil,
        # The number of accounts to return from the end of the range.
        last: nil,
        # The field to sort accounts by.
        order: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            after: String,
            before: String,
            direction: WhopSDK::AccountListParams::Direction::OrSymbol,
            first: Integer,
            last: Integer,
            order: WhopSDK::AccountListParams::Order::OrSymbol,
            request_options: WhopSDK::RequestOptions
          }
        )
      end
      def to_hash
      end

      # Sort direction.
      module Direction
        extend WhopSDK::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, WhopSDK::AccountListParams::Direction) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        ASC = T.let(:asc, WhopSDK::AccountListParams::Direction::TaggedSymbol)
        DESC = T.let(:desc, WhopSDK::AccountListParams::Direction::TaggedSymbol)

        sig do
          override.returns(
            T::Array[WhopSDK::AccountListParams::Direction::TaggedSymbol]
          )
        end
        def self.values
        end
      end

      # The field to sort accounts by.
      module Order
        extend WhopSDK::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, WhopSDK::AccountListParams::Order) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        CREATED_AT =
          T.let(:created_at, WhopSDK::AccountListParams::Order::TaggedSymbol)

        sig do
          override.returns(
            T::Array[WhopSDK::AccountListParams::Order::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
