# typed: strong

module Whopsdk
  module Models
    class PaymentListParams < Whopsdk::Internal::Type::BaseModel
      extend Whopsdk::Internal::Type::RequestParameters::Converter
      include Whopsdk::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(Whopsdk::PaymentListParams, Whopsdk::Internal::AnyHash)
        end

      # The ID of the company to list payments for
      sig { returns(String) }
      attr_accessor :company_id

      # Returns the elements in the list that come after the specified cursor.
      sig { returns(T.nilable(String)) }
      attr_accessor :after

      # Returns the elements in the list that come before the specified cursor.
      sig { returns(T.nilable(String)) }
      attr_accessor :before

      # The billing reason for the payment
      sig do
        returns(
          T.nilable(
            T::Array[Whopsdk::PaymentListParams::BillingReason::OrSymbol]
          )
        )
      end
      attr_accessor :billing_reasons

      # The minimum creation date to filter by
      sig { returns(T.nilable(Time)) }
      attr_accessor :created_after

      # The maximum creation date to filter by
      sig { returns(T.nilable(Time)) }
      attr_accessor :created_before

      # The currency of the payment.
      sig { returns(T.nilable(T::Array[Whopsdk::Currency::OrSymbol])) }
      attr_accessor :currencies

      # The direction of the sort.
      sig { returns(T.nilable(Whopsdk::Direction::OrSymbol)) }
      attr_accessor :direction

      # Returns the first _n_ elements from the list.
      sig { returns(T.nilable(Integer)) }
      attr_accessor :first

      # Whether to include free payments.
      sig { returns(T.nilable(T::Boolean)) }
      attr_accessor :include_free

      # Returns the last _n_ elements from the list.
      sig { returns(T.nilable(Integer)) }
      attr_accessor :last

      # The order to sort the results by.
      sig { returns(T.nilable(Whopsdk::PaymentListParams::Order::OrSymbol)) }
      attr_accessor :order

      # A specific plan.
      sig { returns(T.nilable(T::Array[String])) }
      attr_accessor :plan_ids

      # A specific product.
      sig { returns(T.nilable(T::Array[String])) }
      attr_accessor :product_ids

      # The status of the payment.
      sig { returns(T.nilable(T::Array[Whopsdk::ReceiptStatus::OrSymbol])) }
      attr_accessor :statuses

      # The substatus of the payment.
      sig do
        returns(T.nilable(T::Array[Whopsdk::FriendlyReceiptStatus::OrSymbol]))
      end
      attr_accessor :substatuses

      sig do
        params(
          company_id: String,
          after: T.nilable(String),
          before: T.nilable(String),
          billing_reasons:
            T.nilable(
              T::Array[Whopsdk::PaymentListParams::BillingReason::OrSymbol]
            ),
          created_after: T.nilable(Time),
          created_before: T.nilable(Time),
          currencies: T.nilable(T::Array[Whopsdk::Currency::OrSymbol]),
          direction: T.nilable(Whopsdk::Direction::OrSymbol),
          first: T.nilable(Integer),
          include_free: T.nilable(T::Boolean),
          last: T.nilable(Integer),
          order: T.nilable(Whopsdk::PaymentListParams::Order::OrSymbol),
          plan_ids: T.nilable(T::Array[String]),
          product_ids: T.nilable(T::Array[String]),
          statuses: T.nilable(T::Array[Whopsdk::ReceiptStatus::OrSymbol]),
          substatuses:
            T.nilable(T::Array[Whopsdk::FriendlyReceiptStatus::OrSymbol]),
          request_options: Whopsdk::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # The ID of the company to list payments for
        company_id:,
        # Returns the elements in the list that come after the specified cursor.
        after: nil,
        # Returns the elements in the list that come before the specified cursor.
        before: nil,
        # The billing reason for the payment
        billing_reasons: nil,
        # The minimum creation date to filter by
        created_after: nil,
        # The maximum creation date to filter by
        created_before: nil,
        # The currency of the payment.
        currencies: nil,
        # The direction of the sort.
        direction: nil,
        # Returns the first _n_ elements from the list.
        first: nil,
        # Whether to include free payments.
        include_free: nil,
        # Returns the last _n_ elements from the list.
        last: nil,
        # The order to sort the results by.
        order: nil,
        # A specific plan.
        plan_ids: nil,
        # A specific product.
        product_ids: nil,
        # The status of the payment.
        statuses: nil,
        # The substatus of the payment.
        substatuses: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            company_id: String,
            after: T.nilable(String),
            before: T.nilable(String),
            billing_reasons:
              T.nilable(
                T::Array[Whopsdk::PaymentListParams::BillingReason::OrSymbol]
              ),
            created_after: T.nilable(Time),
            created_before: T.nilable(Time),
            currencies: T.nilable(T::Array[Whopsdk::Currency::OrSymbol]),
            direction: T.nilable(Whopsdk::Direction::OrSymbol),
            first: T.nilable(Integer),
            include_free: T.nilable(T::Boolean),
            last: T.nilable(Integer),
            order: T.nilable(Whopsdk::PaymentListParams::Order::OrSymbol),
            plan_ids: T.nilable(T::Array[String]),
            product_ids: T.nilable(T::Array[String]),
            statuses: T.nilable(T::Array[Whopsdk::ReceiptStatus::OrSymbol]),
            substatuses:
              T.nilable(T::Array[Whopsdk::FriendlyReceiptStatus::OrSymbol]),
            request_options: Whopsdk::RequestOptions
          }
        )
      end
      def to_hash
      end

      # The reason why a specific payment was billed
      module BillingReason
        extend Whopsdk::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Whopsdk::PaymentListParams::BillingReason)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        SUBSCRIPTION_CREATE =
          T.let(
            :subscription_create,
            Whopsdk::PaymentListParams::BillingReason::TaggedSymbol
          )
        SUBSCRIPTION_CYCLE =
          T.let(
            :subscription_cycle,
            Whopsdk::PaymentListParams::BillingReason::TaggedSymbol
          )
        SUBSCRIPTION_UPDATE =
          T.let(
            :subscription_update,
            Whopsdk::PaymentListParams::BillingReason::TaggedSymbol
          )
        ONE_TIME =
          T.let(
            :one_time,
            Whopsdk::PaymentListParams::BillingReason::TaggedSymbol
          )
        MANUAL =
          T.let(
            :manual,
            Whopsdk::PaymentListParams::BillingReason::TaggedSymbol
          )
        SUBSCRIPTION =
          T.let(
            :subscription,
            Whopsdk::PaymentListParams::BillingReason::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[Whopsdk::PaymentListParams::BillingReason::TaggedSymbol]
          )
        end
        def self.values
        end
      end

      # The order to sort the results by.
      module Order
        extend Whopsdk::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, Whopsdk::PaymentListParams::Order) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        FINAL_AMOUNT =
          T.let(:final_amount, Whopsdk::PaymentListParams::Order::TaggedSymbol)
        CREATED_AT =
          T.let(:created_at, Whopsdk::PaymentListParams::Order::TaggedSymbol)
        PAID_AT =
          T.let(:paid_at, Whopsdk::PaymentListParams::Order::TaggedSymbol)

        sig do
          override.returns(
            T::Array[Whopsdk::PaymentListParams::Order::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
