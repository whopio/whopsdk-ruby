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
      attr_reader :after

      sig { params(after: String).void }
      attr_writer :after

      # Returns the elements in the list that come before the specified cursor.
      sig { returns(T.nilable(String)) }
      attr_reader :before

      sig { params(before: String).void }
      attr_writer :before

      # Filter payments by their billing reason.
      sig { returns(T.nilable(T::Array[WhopSDK::BillingReasons::OrSymbol])) }
      attr_reader :billing_reasons

      sig do
        params(
          billing_reasons: T::Array[WhopSDK::BillingReasons::OrSymbol]
        ).void
      end
      attr_writer :billing_reasons

      # Only return payments from these checkout configurations.
      sig { returns(T.nilable(T::Array[String])) }
      attr_reader :checkout_configuration_ids

      sig { params(checkout_configuration_ids: T::Array[String]).void }
      attr_writer :checkout_configuration_ids

      # The unique identifier of the company to list payments for.
      sig { returns(T.nilable(String)) }
      attr_reader :company_id

      sig { params(company_id: String).void }
      attr_writer :company_id

      # Only return payments created after this timestamp.
      sig { returns(T.nilable(Time)) }
      attr_reader :created_after

      sig { params(created_after: Time).void }
      attr_writer :created_after

      # Only return payments created before this timestamp.
      sig { returns(T.nilable(Time)) }
      attr_reader :created_before

      sig { params(created_before: Time).void }
      attr_writer :created_before

      # Filter payments by their currency code.
      sig { returns(T.nilable(T::Array[WhopSDK::Currency::OrSymbol])) }
      attr_reader :currencies

      sig { params(currencies: T::Array[WhopSDK::Currency::OrSymbol]).void }
      attr_writer :currencies

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

      # Whether to include payments with a zero amount.
      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :include_free

      sig { params(include_free: T::Boolean).void }
      attr_writer :include_free

      # Returns the last _n_ elements from the list.
      sig { returns(T.nilable(Integer)) }
      attr_reader :last

      sig { params(last: Integer).void }
      attr_writer :last

      # The field to order results by, such as creation date.
      sig { returns(T.nilable(WhopSDK::PaymentListParams::Order::OrSymbol)) }
      attr_reader :order

      sig { params(order: WhopSDK::PaymentListParams::Order::OrSymbol).void }
      attr_writer :order

      # Filter payments to only those associated with these specific plan identifiers.
      sig { returns(T.nilable(T::Array[String])) }
      attr_reader :plan_ids

      sig { params(plan_ids: T::Array[String]).void }
      attr_writer :plan_ids

      # Filter payments to only those associated with these specific product
      # identifiers.
      sig { returns(T.nilable(T::Array[String])) }
      attr_reader :product_ids

      sig { params(product_ids: T::Array[String]).void }
      attr_writer :product_ids

      # Search payments by user ID, membership ID, user email, name, or username. Email
      # filtering requires the member:email:read permission.
      sig { returns(T.nilable(String)) }
      attr_reader :query

      sig { params(query: String).void }
      attr_writer :query

      # Filter payments by their current status.
      sig { returns(T.nilable(T::Array[WhopSDK::ReceiptStatus::OrSymbol])) }
      attr_reader :statuses

      sig { params(statuses: T::Array[WhopSDK::ReceiptStatus::OrSymbol]).void }
      attr_writer :statuses

      # Filter payments by their current substatus for more granular filtering.
      sig do
        returns(T.nilable(T::Array[WhopSDK::FriendlyReceiptStatus::OrSymbol]))
      end
      attr_reader :substatuses

      sig do
        params(
          substatuses: T::Array[WhopSDK::FriendlyReceiptStatus::OrSymbol]
        ).void
      end
      attr_writer :substatuses

      # Only return payments last updated after this timestamp.
      sig { returns(T.nilable(Time)) }
      attr_reader :updated_after

      sig { params(updated_after: Time).void }
      attr_writer :updated_after

      # Only return payments last updated before this timestamp.
      sig { returns(T.nilable(Time)) }
      attr_reader :updated_before

      sig { params(updated_before: Time).void }
      attr_writer :updated_before

      sig do
        params(
          after: String,
          before: String,
          billing_reasons: T::Array[WhopSDK::BillingReasons::OrSymbol],
          checkout_configuration_ids: T::Array[String],
          company_id: String,
          created_after: Time,
          created_before: Time,
          currencies: T::Array[WhopSDK::Currency::OrSymbol],
          direction: WhopSDK::Direction::OrSymbol,
          first: Integer,
          include_free: T::Boolean,
          last: Integer,
          order: WhopSDK::PaymentListParams::Order::OrSymbol,
          plan_ids: T::Array[String],
          product_ids: T::Array[String],
          query: String,
          statuses: T::Array[WhopSDK::ReceiptStatus::OrSymbol],
          substatuses: T::Array[WhopSDK::FriendlyReceiptStatus::OrSymbol],
          updated_after: Time,
          updated_before: Time,
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
        # Only return payments from these checkout configurations.
        checkout_configuration_ids: nil,
        # The unique identifier of the company to list payments for.
        company_id: nil,
        # Only return payments created after this timestamp.
        created_after: nil,
        # Only return payments created before this timestamp.
        created_before: nil,
        # Filter payments by their currency code.
        currencies: nil,
        # The sort direction for ordering results, either ascending or descending.
        direction: nil,
        # Returns the first _n_ elements from the list.
        first: nil,
        # Whether to include payments with a zero amount.
        include_free: nil,
        # Returns the last _n_ elements from the list.
        last: nil,
        # The field to order results by, such as creation date.
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
        # Only return payments last updated after this timestamp.
        updated_after: nil,
        # Only return payments last updated before this timestamp.
        updated_before: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            after: String,
            before: String,
            billing_reasons: T::Array[WhopSDK::BillingReasons::OrSymbol],
            checkout_configuration_ids: T::Array[String],
            company_id: String,
            created_after: Time,
            created_before: Time,
            currencies: T::Array[WhopSDK::Currency::OrSymbol],
            direction: WhopSDK::Direction::OrSymbol,
            first: Integer,
            include_free: T::Boolean,
            last: Integer,
            order: WhopSDK::PaymentListParams::Order::OrSymbol,
            plan_ids: T::Array[String],
            product_ids: T::Array[String],
            query: String,
            statuses: T::Array[WhopSDK::ReceiptStatus::OrSymbol],
            substatuses: T::Array[WhopSDK::FriendlyReceiptStatus::OrSymbol],
            updated_after: Time,
            updated_before: Time,
            request_options: WhopSDK::RequestOptions
          }
        )
      end
      def to_hash
      end

      # The field to order results by, such as creation date.
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
