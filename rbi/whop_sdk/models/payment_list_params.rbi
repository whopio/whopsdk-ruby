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

      # Only payments charged by this account, prefixed `biz_`.
      sig { returns(T.nilable(String)) }
      attr_reader :account_id

      sig { params(account_id: String).void }
      attr_writer :account_id

      # A cursor; returns payments after this position.
      sig { returns(T.nilable(String)) }
      attr_reader :after

      sig { params(after: String).void }
      attr_writer :after

      # A cursor; returns payments before this position.
      sig { returns(T.nilable(String)) }
      attr_reader :before

      sig { params(before: String).void }
      attr_writer :before

      # Only payments charged for this reason.
      sig do
        returns(T.nilable(WhopSDK::PaymentListParams::BillingReason::OrSymbol))
      end
      attr_reader :billing_reason

      sig do
        params(
          billing_reason: WhopSDK::PaymentListParams::BillingReason::OrSymbol
        ).void
      end
      attr_writer :billing_reason

      # Only payments created after this ISO 8601 timestamp.
      sig { returns(T.nilable(Time)) }
      attr_reader :created_after

      sig { params(created_after: Time).void }
      attr_writer :created_after

      # Only payments created before this ISO 8601 timestamp.
      sig { returns(T.nilable(Time)) }
      attr_reader :created_before

      sig { params(created_before: Time).void }
      attr_writer :created_before

      # Only payments presented in this three-letter currency, such as `usd`.
      sig { returns(T.nilable(String)) }
      attr_reader :currency

      sig { params(currency: String).void }
      attr_writer :currency

      # The sort direction.
      sig do
        returns(T.nilable(WhopSDK::PaymentListParams::Direction::OrSymbol))
      end
      attr_reader :direction

      sig do
        params(direction: WhopSDK::PaymentListParams::Direction::OrSymbol).void
      end
      attr_writer :direction

      # The number of payments to return.
      sig { returns(T.nilable(Integer)) }
      attr_reader :first

      sig { params(first: Integer).void }
      attr_writer :first

      # The number of payments to return from the end of the range.
      sig { returns(T.nilable(Integer)) }
      attr_reader :last

      sig { params(last: Integer).void }
      attr_writer :last

      # Only payments made by this member, prefixed `mber_`.
      sig { returns(T.nilable(String)) }
      attr_reader :member_id

      sig { params(member_id: String).void }
      attr_writer :member_id

      # Only payments billed under this membership, prefixed `mem_`.
      sig { returns(T.nilable(String)) }
      attr_reader :membership_id

      sig { params(membership_id: String).void }
      attr_writer :membership_id

      # The field to sort by.
      sig { returns(T.nilable(WhopSDK::PaymentListParams::Order::OrSymbol)) }
      attr_reader :order

      sig { params(order: WhopSDK::PaymentListParams::Order::OrSymbol).void }
      attr_writer :order

      # Only payments priced by this plan, prefixed `plan_`.
      sig { returns(T.nilable(String)) }
      attr_reader :plan_id

      sig { params(plan_id: String).void }
      attr_writer :plan_id

      # Only payments for this product, prefixed `prod_`.
      sig { returns(T.nilable(String)) }
      attr_reader :product_id

      sig { params(product_id: String).void }
      attr_writer :product_id

      # Search payments by user ID, membership ID, user email, name, or username. Email
      # filtering requires the member:email:read permission.
      sig { returns(T.nilable(String)) }
      attr_reader :query

      sig { params(query: String).void }
      attr_writer :query

      # Only payments in this lifecycle state.
      sig { returns(T.nilable(WhopSDK::PaymentListParams::Status::OrSymbol)) }
      attr_reader :status

      sig { params(status: WhopSDK::PaymentListParams::Status::OrSymbol).void }
      attr_writer :status

      # Only payments made by this buyer, prefixed `user_`.
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
          billing_reason: WhopSDK::PaymentListParams::BillingReason::OrSymbol,
          created_after: Time,
          created_before: Time,
          currency: String,
          direction: WhopSDK::PaymentListParams::Direction::OrSymbol,
          first: Integer,
          last: Integer,
          member_id: String,
          membership_id: String,
          order: WhopSDK::PaymentListParams::Order::OrSymbol,
          plan_id: String,
          product_id: String,
          query: String,
          status: WhopSDK::PaymentListParams::Status::OrSymbol,
          user_id: String,
          api_version_date: String,
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # Only payments charged by this account, prefixed `biz_`.
        account_id: nil,
        # A cursor; returns payments after this position.
        after: nil,
        # A cursor; returns payments before this position.
        before: nil,
        # Only payments charged for this reason.
        billing_reason: nil,
        # Only payments created after this ISO 8601 timestamp.
        created_after: nil,
        # Only payments created before this ISO 8601 timestamp.
        created_before: nil,
        # Only payments presented in this three-letter currency, such as `usd`.
        currency: nil,
        # The sort direction.
        direction: nil,
        # The number of payments to return.
        first: nil,
        # The number of payments to return from the end of the range.
        last: nil,
        # Only payments made by this member, prefixed `mber_`.
        member_id: nil,
        # Only payments billed under this membership, prefixed `mem_`.
        membership_id: nil,
        # The field to sort by.
        order: nil,
        # Only payments priced by this plan, prefixed `plan_`.
        plan_id: nil,
        # Only payments for this product, prefixed `prod_`.
        product_id: nil,
        # Search payments by user ID, membership ID, user email, name, or username. Email
        # filtering requires the member:email:read permission.
        query: nil,
        # Only payments in this lifecycle state.
        status: nil,
        # Only payments made by this buyer, prefixed `user_`.
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
            billing_reason: WhopSDK::PaymentListParams::BillingReason::OrSymbol,
            created_after: Time,
            created_before: Time,
            currency: String,
            direction: WhopSDK::PaymentListParams::Direction::OrSymbol,
            first: Integer,
            last: Integer,
            member_id: String,
            membership_id: String,
            order: WhopSDK::PaymentListParams::Order::OrSymbol,
            plan_id: String,
            product_id: String,
            query: String,
            status: WhopSDK::PaymentListParams::Status::OrSymbol,
            user_id: String,
            api_version_date: String,
            request_options: WhopSDK::RequestOptions
          }
        )
      end
      def to_hash
      end

      # Only payments charged for this reason.
      module BillingReason
        extend WhopSDK::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, WhopSDK::PaymentListParams::BillingReason)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        SUBSCRIPTION_CREATE =
          T.let(
            :subscription_create,
            WhopSDK::PaymentListParams::BillingReason::TaggedSymbol
          )
        SUBSCRIPTION_CYCLE =
          T.let(
            :subscription_cycle,
            WhopSDK::PaymentListParams::BillingReason::TaggedSymbol
          )
        SUBSCRIPTION_UPDATE =
          T.let(
            :subscription_update,
            WhopSDK::PaymentListParams::BillingReason::TaggedSymbol
          )
        ONE_TIME =
          T.let(
            :one_time,
            WhopSDK::PaymentListParams::BillingReason::TaggedSymbol
          )
        MANUAL =
          T.let(
            :manual,
            WhopSDK::PaymentListParams::BillingReason::TaggedSymbol
          )
        SUBSCRIPTION =
          T.let(
            :subscription,
            WhopSDK::PaymentListParams::BillingReason::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[WhopSDK::PaymentListParams::BillingReason::TaggedSymbol]
          )
        end
        def self.values
        end
      end

      # The sort direction.
      module Direction
        extend WhopSDK::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, WhopSDK::PaymentListParams::Direction) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        ASC = T.let(:asc, WhopSDK::PaymentListParams::Direction::TaggedSymbol)
        DESC = T.let(:desc, WhopSDK::PaymentListParams::Direction::TaggedSymbol)

        sig do
          override.returns(
            T::Array[WhopSDK::PaymentListParams::Direction::TaggedSymbol]
          )
        end
        def self.values
        end
      end

      # The field to sort by.
      module Order
        extend WhopSDK::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, WhopSDK::PaymentListParams::Order) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

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

      # Only payments in this lifecycle state.
      module Status
        extend WhopSDK::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, WhopSDK::PaymentListParams::Status) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        OPEN = T.let(:open, WhopSDK::PaymentListParams::Status::TaggedSymbol)
        AUTHORIZED =
          T.let(:authorized, WhopSDK::PaymentListParams::Status::TaggedSymbol)
        PAID = T.let(:paid, WhopSDK::PaymentListParams::Status::TaggedSymbol)
        PENDING =
          T.let(:pending, WhopSDK::PaymentListParams::Status::TaggedSymbol)
        UNCOLLECTIBLE =
          T.let(
            :uncollectible,
            WhopSDK::PaymentListParams::Status::TaggedSymbol
          )
        UNRESOLVED =
          T.let(:unresolved, WhopSDK::PaymentListParams::Status::TaggedSymbol)
        VOID = T.let(:void, WhopSDK::PaymentListParams::Status::TaggedSymbol)

        sig do
          override.returns(
            T::Array[WhopSDK::PaymentListParams::Status::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
