# typed: strong

module WhopSDK
  module Models
    class PaymentListParams < WhopSDK::Internal::Type::BaseModel
      extend WhopSDK::Internal::Type::RequestParameters::Converter
      include WhopSDK::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(WhopSDK::PaymentListParams, WhopSDK::Internal::AnyHash)
        end

      # Returns the elements in the list that come after the specified cursor.
      sig { returns(T.nilable(String)) }
      attr_accessor :after

      # Returns the elements in the list that come before the specified cursor.
      sig { returns(T.nilable(String)) }
      attr_accessor :before

      # Filter payments by their billing reason.
      sig { returns(T.nilable(T::Array[WhopSDK::BillingReasons::OrSymbol])) }
      attr_accessor :billing_reasons

      # The unique identifier of the company to list payments for.
      sig { returns(T.nilable(String)) }
      attr_accessor :company_id

      # Only return payments created after this timestamp.
      sig { returns(T.nilable(Time)) }
      attr_accessor :created_after

      # Only return payments created before this timestamp.
      sig { returns(T.nilable(Time)) }
      attr_accessor :created_before

      # Filter payments by their currency code.
      sig { returns(T.nilable(T::Array[WhopSDK::Currency::OrSymbol])) }
      attr_accessor :currencies

      # The direction of the sort.
      sig { returns(T.nilable(WhopSDK::Direction::OrSymbol)) }
      attr_accessor :direction

      # Returns the first _n_ elements from the list.
      sig { returns(T.nilable(Integer)) }
      attr_accessor :first

      # Whether to include payments with a zero amount.
      sig { returns(T.nilable(T::Boolean)) }
      attr_accessor :include_free

      # Returns the last _n_ elements from the list.
      sig { returns(T.nilable(Integer)) }
      attr_accessor :last

      # The order to sort the results by.
      sig { returns(T.nilable(WhopSDK::PaymentListParams::Order::OrSymbol)) }
      attr_accessor :order

      # Filter payments to only those associated with these specific plan identifiers.
      sig { returns(T.nilable(T::Array[String])) }
      attr_accessor :plan_ids

      # Filter payments to only those associated with these specific product
      # identifiers.
      sig { returns(T.nilable(T::Array[String])) }
      attr_accessor :product_ids

      # Search payments by user ID, membership ID, user email, name, or username. Email
      # filtering requires the member:email:read permission.
      sig { returns(T.nilable(String)) }
      attr_accessor :query

      # Filter payments by their current status.
      sig { returns(T.nilable(T::Array[WhopSDK::ReceiptStatus::OrSymbol])) }
      attr_accessor :statuses

      # Filter payments by their current substatus for more granular filtering.
      sig do
        returns(T.nilable(T::Array[WhopSDK::FriendlyReceiptStatus::OrSymbol]))
      end
      attr_accessor :substatuses

      sig do
        params(
          after: T.nilable(String),
          before: T.nilable(String),
          billing_reasons:
            T.nilable(T::Array[WhopSDK::BillingReasons::OrSymbol]),
          company_id: T.nilable(String),
          created_after: T.nilable(Time),
          created_before: T.nilable(Time),
          currencies: T.nilable(T::Array[WhopSDK::Currency::OrSymbol]),
          direction: T.nilable(WhopSDK::Direction::OrSymbol),
          first: T.nilable(Integer),
          include_free: T.nilable(T::Boolean),
          last: T.nilable(Integer),
          order: T.nilable(WhopSDK::PaymentListParams::Order::OrSymbol),
          plan_ids: T.nilable(T::Array[String]),
          product_ids: T.nilable(T::Array[String]),
          query: T.nilable(String),
          statuses: T.nilable(T::Array[WhopSDK::ReceiptStatus::OrSymbol]),
          substatuses:
            T.nilable(T::Array[WhopSDK::FriendlyReceiptStatus::OrSymbol]),
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # Returns the elements in the list that come after the specified cursor.
        after: nil,
        # Returns the elements in the list that come before the specified cursor.
        before: nil,
        # Filter payments by their billing reason.
        billing_reasons: nil,
        # The unique identifier of the company to list payments for.
        company_id: nil,
        # Only return payments created after this timestamp.
        created_after: nil,
        # Only return payments created before this timestamp.
        created_before: nil,
        # Filter payments by their currency code.
        currencies: nil,
        # The direction of the sort.
        direction: nil,
        # Returns the first _n_ elements from the list.
        first: nil,
        # Whether to include payments with a zero amount.
        include_free: nil,
        # Returns the last _n_ elements from the list.
        last: nil,
        # The order to sort the results by.
        order: nil,
        # Filter payments to only those associated with these specific plan identifiers.
        plan_ids: nil,
        # Filter payments to only those associated with these specific product
        # identifiers.
        product_ids: nil,
        # Search payments by user ID, membership ID, user email, name, or username. Email
        # filtering requires the member:email:read permission.
        query: nil,
        # Filter payments by their current status.
        statuses: nil,
        # Filter payments by their current substatus for more granular filtering.
        substatuses: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            after: T.nilable(String),
            before: T.nilable(String),
            billing_reasons:
              T.nilable(T::Array[WhopSDK::BillingReasons::OrSymbol]),
            company_id: T.nilable(String),
            created_after: T.nilable(Time),
            created_before: T.nilable(Time),
            currencies: T.nilable(T::Array[WhopSDK::Currency::OrSymbol]),
            direction: T.nilable(WhopSDK::Direction::OrSymbol),
            first: T.nilable(Integer),
            include_free: T.nilable(T::Boolean),
            last: T.nilable(Integer),
            order: T.nilable(WhopSDK::PaymentListParams::Order::OrSymbol),
            plan_ids: T.nilable(T::Array[String]),
            product_ids: T.nilable(T::Array[String]),
            query: T.nilable(String),
            statuses: T.nilable(T::Array[WhopSDK::ReceiptStatus::OrSymbol]),
            substatuses:
              T.nilable(T::Array[WhopSDK::FriendlyReceiptStatus::OrSymbol]),
            request_options: WhopSDK::RequestOptions
          }
        )
      end
      def to_hash
      end

      # The order to sort the results by.
      module Order
        extend WhopSDK::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, WhopSDK::PaymentListParams::Order) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        FINAL_AMOUNT =
          T.let(:final_amount, WhopSDK::PaymentListParams::Order::TaggedSymbol)
        CREATED_AT =
          T.let(:created_at, WhopSDK::PaymentListParams::Order::TaggedSymbol)
        PAID_AT =
          T.let(:paid_at, WhopSDK::PaymentListParams::Order::TaggedSymbol)

        sig do
          override.returns(
            T::Array[WhopSDK::PaymentListParams::Order::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
