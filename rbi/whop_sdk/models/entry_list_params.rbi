# typed: strong

module WhopSDK
  module Models
    class EntryListParams < WhopSDK::Internal::Type::BaseModel
      extend WhopSDK::Internal::Type::RequestParameters::Converter
      include WhopSDK::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(WhopSDK::EntryListParams, WhopSDK::Internal::AnyHash)
        end

      # The unique identifier of the company to list waitlist entries for.
      sig { returns(String) }
      attr_accessor :account_id

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

      # Only return entries created after this timestamp.
      sig { returns(T.nilable(Time)) }
      attr_reader :created_after

      sig { params(created_after: Time).void }
      attr_writer :created_after

      # Only return entries created before this timestamp.
      sig { returns(T.nilable(Time)) }
      attr_reader :created_before

      sig { params(created_before: Time).void }
      attr_writer :created_before

      # The sort direction for results. Defaults to descending.
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

      # The column to sort waitlist entries by. Defaults to creation date.
      sig { returns(T.nilable(WhopSDK::EntryListParams::Order::OrSymbol)) }
      attr_reader :order

      sig { params(order: WhopSDK::EntryListParams::Order::OrSymbol).void }
      attr_writer :order

      # Filter entries to only those for specific plans.
      sig { returns(T.nilable(T::Array[String])) }
      attr_reader :plan_ids

      sig { params(plan_ids: T::Array[String]).void }
      attr_writer :plan_ids

      # Filter entries to only those for specific products.
      sig { returns(T.nilable(T::Array[String])) }
      attr_reader :product_ids

      sig { params(product_ids: T::Array[String]).void }
      attr_writer :product_ids

      # Filter entries by their current status.
      sig { returns(T.nilable(T::Array[WhopSDK::EntryStatus::OrSymbol])) }
      attr_reader :statuses

      sig { params(statuses: T::Array[WhopSDK::EntryStatus::OrSymbol]).void }
      attr_writer :statuses

      sig do
        params(
          account_id: String,
          after: String,
          before: String,
          created_after: Time,
          created_before: Time,
          direction: WhopSDK::Direction::OrSymbol,
          first: Integer,
          last: Integer,
          order: WhopSDK::EntryListParams::Order::OrSymbol,
          plan_ids: T::Array[String],
          product_ids: T::Array[String],
          statuses: T::Array[WhopSDK::EntryStatus::OrSymbol],
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # The unique identifier of the company to list waitlist entries for.
        account_id:,
        # Returns the elements in the list that come after the specified cursor.
        after: nil,
        # Returns the elements in the list that come before the specified cursor.
        before: nil,
        # Only return entries created after this timestamp.
        created_after: nil,
        # Only return entries created before this timestamp.
        created_before: nil,
        # The sort direction for results. Defaults to descending.
        direction: nil,
        # Returns the first _n_ elements from the list.
        first: nil,
        # Returns the last _n_ elements from the list.
        last: nil,
        # The column to sort waitlist entries by. Defaults to creation date.
        order: nil,
        # Filter entries to only those for specific plans.
        plan_ids: nil,
        # Filter entries to only those for specific products.
        product_ids: nil,
        # Filter entries by their current status.
        statuses: nil,
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
            direction: WhopSDK::Direction::OrSymbol,
            first: Integer,
            last: Integer,
            order: WhopSDK::EntryListParams::Order::OrSymbol,
            plan_ids: T::Array[String],
            product_ids: T::Array[String],
            statuses: T::Array[WhopSDK::EntryStatus::OrSymbol],
            request_options: WhopSDK::RequestOptions
          }
        )
      end
      def to_hash
      end

      # The column to sort waitlist entries by. Defaults to creation date.
      module Order
        extend WhopSDK::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, WhopSDK::EntryListParams::Order) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        ID = T.let(:id, WhopSDK::EntryListParams::Order::TaggedSymbol)
        CREATED_AT =
          T.let(:created_at, WhopSDK::EntryListParams::Order::TaggedSymbol)

        sig do
          override.returns(
            T::Array[WhopSDK::EntryListParams::Order::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
