# typed: strong

module WhopSDK
  module Models
    class RefundListParams < WhopSDK::Internal::Type::BaseModel
      extend WhopSDK::Internal::Type::RequestParameters::Converter
      include WhopSDK::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(WhopSDK::RefundListParams, WhopSDK::Internal::AnyHash)
        end

      # Only refunds issued by this account, prefixed `biz_`.
      sig { returns(T.nilable(String)) }
      attr_reader :account_id

      sig { params(account_id: String).void }
      attr_writer :account_id

      # A cursor; returns refunds after this position.
      sig { returns(T.nilable(String)) }
      attr_reader :after

      sig { params(after: String).void }
      attr_writer :after

      # A cursor; returns refunds before this position.
      sig { returns(T.nilable(String)) }
      attr_reader :before

      sig { params(before: String).void }
      attr_writer :before

      # Only refunds requested after this ISO 8601 timestamp.
      sig { returns(T.nilable(Time)) }
      attr_reader :created_after

      sig { params(created_after: Time).void }
      attr_writer :created_after

      # Only refunds requested before this ISO 8601 timestamp.
      sig { returns(T.nilable(Time)) }
      attr_reader :created_before

      sig { params(created_before: Time).void }
      attr_writer :created_before

      # The sort direction.
      sig { returns(T.nilable(WhopSDK::RefundListParams::Direction::OrSymbol)) }
      attr_reader :direction

      sig do
        params(direction: WhopSDK::RefundListParams::Direction::OrSymbol).void
      end
      attr_writer :direction

      # The number of refunds to return.
      sig { returns(T.nilable(Integer)) }
      attr_reader :first

      sig { params(first: Integer).void }
      attr_writer :first

      # The number of refunds to return from the end of the range.
      sig { returns(T.nilable(Integer)) }
      attr_reader :last

      sig { params(last: Integer).void }
      attr_writer :last

      # The field to sort by.
      sig { returns(T.nilable(WhopSDK::RefundListParams::Order::OrSymbol)) }
      attr_reader :order

      sig { params(order: WhopSDK::RefundListParams::Order::OrSymbol).void }
      attr_writer :order

      # Only refunds of this payment, prefixed `pay_`.
      sig { returns(T.nilable(String)) }
      attr_reader :payment_id

      sig { params(payment_id: String).void }
      attr_writer :payment_id

      # Only refunds to this buyer, prefixed `user_`.
      sig { returns(T.nilable(String)) }
      attr_reader :user_id

      sig { params(user_id: String).void }
      attr_writer :user_id

      sig { returns(T.nilable(String)) }
      attr_reader :api_version_date

      sig { params(api_version_date: String).void }
      attr_writer :api_version_date

      sig do
        params(
          account_id: String,
          after: String,
          before: String,
          created_after: Time,
          created_before: Time,
          direction: WhopSDK::RefundListParams::Direction::OrSymbol,
          first: Integer,
          last: Integer,
          order: WhopSDK::RefundListParams::Order::OrSymbol,
          payment_id: String,
          user_id: String,
          api_version_date: String,
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # Only refunds issued by this account, prefixed `biz_`.
        account_id: nil,
        # A cursor; returns refunds after this position.
        after: nil,
        # A cursor; returns refunds before this position.
        before: nil,
        # Only refunds requested after this ISO 8601 timestamp.
        created_after: nil,
        # Only refunds requested before this ISO 8601 timestamp.
        created_before: nil,
        # The sort direction.
        direction: nil,
        # The number of refunds to return.
        first: nil,
        # The number of refunds to return from the end of the range.
        last: nil,
        # The field to sort by.
        order: nil,
        # Only refunds of this payment, prefixed `pay_`.
        payment_id: nil,
        # Only refunds to this buyer, prefixed `user_`.
        user_id: nil,
        api_version_date: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            account_id: String,
            after: String,
            before: String,
            created_after: Time,
            created_before: Time,
            direction: WhopSDK::RefundListParams::Direction::OrSymbol,
            first: Integer,
            last: Integer,
            order: WhopSDK::RefundListParams::Order::OrSymbol,
            payment_id: String,
            user_id: String,
            api_version_date: String,
            request_options: WhopSDK::RequestOptions
          }
        )
      end
      def to_hash
      end

      # The sort direction.
      module Direction
        extend WhopSDK::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, WhopSDK::RefundListParams::Direction) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        ASC = T.let(:asc, WhopSDK::RefundListParams::Direction::TaggedSymbol)
        DESC = T.let(:desc, WhopSDK::RefundListParams::Direction::TaggedSymbol)

        sig do
          override.returns(
            T::Array[WhopSDK::RefundListParams::Direction::TaggedSymbol]
          )
        end
        def self.values
        end
      end

      # The field to sort by.
      module Order
        extend WhopSDK::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, WhopSDK::RefundListParams::Order) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        CREATED_AT =
          T.let(:created_at, WhopSDK::RefundListParams::Order::TaggedSymbol)

        sig do
          override.returns(
            T::Array[WhopSDK::RefundListParams::Order::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
