# typed: strong

module WhopSDK
  module Models
    class MembershipListParams < WhopSDK::Internal::Type::BaseModel
      extend WhopSDK::Internal::Type::RequestParameters::Converter
      include WhopSDK::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(WhopSDK::MembershipListParams, WhopSDK::Internal::AnyHash)
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

      # Filter to only memberships matching these cancellation reasons.
      sig { returns(T.nilable(T::Array[WhopSDK::CancelOptions::OrSymbol])) }
      attr_reader :cancel_options

      sig do
        params(cancel_options: T::Array[WhopSDK::CancelOptions::OrSymbol]).void
      end
      attr_writer :cancel_options

      # Filter memberships by whether the customer is canceling, left, or was won back.
      sig do
        returns(
          T.nilable(WhopSDK::MembershipListParams::CancelationStatus::OrSymbol)
        )
      end
      attr_reader :cancelation_status

      sig do
        params(
          cancelation_status:
            WhopSDK::MembershipListParams::CancelationStatus::OrSymbol
        ).void
      end
      attr_writer :cancelation_status

      # The unique identifier of the company to list memberships for. Required when
      # using an API key.
      sig { returns(T.nilable(String)) }
      attr_reader :company_id

      sig { params(company_id: String).void }
      attr_writer :company_id

      # Only return memberships created after this timestamp.
      sig { returns(T.nilable(Time)) }
      attr_reader :created_after

      sig { params(created_after: Time).void }
      attr_writer :created_after

      # Only return memberships created before this timestamp.
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

      # Filter memberships by whether they have a structured or free-text cancellation
      # reason.
      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :has_cancelation_reason

      sig { params(has_cancelation_reason: T::Boolean).void }
      attr_writer :has_cancelation_reason

      # When filtering by the other cancellation option, also include memberships that
      # only have a free-text cancellation reason.
      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :include_text_only_cancelation_reasons

      sig { params(include_text_only_cancelation_reasons: T::Boolean).void }
      attr_writer :include_text_only_cancelation_reasons

      # Returns the last _n_ elements from the list.
      sig { returns(T.nilable(Integer)) }
      attr_reader :last

      sig { params(last: Integer).void }
      attr_writer :last

      # The field to sort results by. Null uses the default sort order.
      sig { returns(T.nilable(WhopSDK::MembershipListParams::Order::OrSymbol)) }
      attr_reader :order

      sig { params(order: WhopSDK::MembershipListParams::Order::OrSymbol).void }
      attr_writer :order

      # Filter to only memberships belonging to these plan identifiers.
      sig { returns(T.nilable(T::Array[String])) }
      attr_reader :plan_ids

      sig { params(plan_ids: T::Array[String]).void }
      attr_writer :plan_ids

      # Filter to only memberships belonging to these product identifiers.
      sig { returns(T.nilable(T::Array[String])) }
      attr_reader :product_ids

      sig { params(product_ids: T::Array[String]).void }
      attr_writer :product_ids

      # Filter to only memberships that used these promo code identifiers.
      sig { returns(T.nilable(T::Array[String])) }
      attr_reader :promo_code_ids

      sig { params(promo_code_ids: T::Array[String]).void }
      attr_writer :promo_code_ids

      # Filter to only memberships matching these statuses.
      sig { returns(T.nilable(T::Array[WhopSDK::MembershipStatus::OrSymbol])) }
      attr_reader :statuses

      sig do
        params(statuses: T::Array[WhopSDK::MembershipStatus::OrSymbol]).void
      end
      attr_writer :statuses

      # Filter to only memberships belonging to these user identifiers.
      sig { returns(T.nilable(T::Array[String])) }
      attr_reader :user_ids

      sig { params(user_ids: T::Array[String]).void }
      attr_writer :user_ids

      sig do
        params(
          after: String,
          before: String,
          cancel_options: T::Array[WhopSDK::CancelOptions::OrSymbol],
          cancelation_status:
            WhopSDK::MembershipListParams::CancelationStatus::OrSymbol,
          company_id: String,
          created_after: Time,
          created_before: Time,
          direction: WhopSDK::Direction::OrSymbol,
          first: Integer,
          has_cancelation_reason: T::Boolean,
          include_text_only_cancelation_reasons: T::Boolean,
          last: Integer,
          order: WhopSDK::MembershipListParams::Order::OrSymbol,
          plan_ids: T::Array[String],
          product_ids: T::Array[String],
          promo_code_ids: T::Array[String],
          statuses: T::Array[WhopSDK::MembershipStatus::OrSymbol],
          user_ids: T::Array[String],
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # Returns the elements in the list that come after the specified cursor.
        after: nil,
        # Returns the elements in the list that come before the specified cursor.
        before: nil,
        # Filter to only memberships matching these cancellation reasons.
        cancel_options: nil,
        # Filter memberships by whether the customer is canceling, left, or was won back.
        cancelation_status: nil,
        # The unique identifier of the company to list memberships for. Required when
        # using an API key.
        company_id: nil,
        # Only return memberships created after this timestamp.
        created_after: nil,
        # Only return memberships created before this timestamp.
        created_before: nil,
        # The sort direction for results. Defaults to descending.
        direction: nil,
        # Returns the first _n_ elements from the list.
        first: nil,
        # Filter memberships by whether they have a structured or free-text cancellation
        # reason.
        has_cancelation_reason: nil,
        # When filtering by the other cancellation option, also include memberships that
        # only have a free-text cancellation reason.
        include_text_only_cancelation_reasons: nil,
        # Returns the last _n_ elements from the list.
        last: nil,
        # The field to sort results by. Null uses the default sort order.
        order: nil,
        # Filter to only memberships belonging to these plan identifiers.
        plan_ids: nil,
        # Filter to only memberships belonging to these product identifiers.
        product_ids: nil,
        # Filter to only memberships that used these promo code identifiers.
        promo_code_ids: nil,
        # Filter to only memberships matching these statuses.
        statuses: nil,
        # Filter to only memberships belonging to these user identifiers.
        user_ids: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            after: String,
            before: String,
            cancel_options: T::Array[WhopSDK::CancelOptions::OrSymbol],
            cancelation_status:
              WhopSDK::MembershipListParams::CancelationStatus::OrSymbol,
            company_id: String,
            created_after: Time,
            created_before: Time,
            direction: WhopSDK::Direction::OrSymbol,
            first: Integer,
            has_cancelation_reason: T::Boolean,
            include_text_only_cancelation_reasons: T::Boolean,
            last: Integer,
            order: WhopSDK::MembershipListParams::Order::OrSymbol,
            plan_ids: T::Array[String],
            product_ids: T::Array[String],
            promo_code_ids: T::Array[String],
            statuses: T::Array[WhopSDK::MembershipStatus::OrSymbol],
            user_ids: T::Array[String],
            request_options: WhopSDK::RequestOptions
          }
        )
      end
      def to_hash
      end

      # Filter memberships by whether the customer is canceling, left, or was won back.
      module CancelationStatus
        extend WhopSDK::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, WhopSDK::MembershipListParams::CancelationStatus)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        WON_BACK =
          T.let(
            :won_back,
            WhopSDK::MembershipListParams::CancelationStatus::TaggedSymbol
          )
        LEFT =
          T.let(
            :left,
            WhopSDK::MembershipListParams::CancelationStatus::TaggedSymbol
          )
        CANCELING =
          T.let(
            :canceling,
            WhopSDK::MembershipListParams::CancelationStatus::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              WhopSDK::MembershipListParams::CancelationStatus::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end

      # The field to sort results by. Null uses the default sort order.
      module Order
        extend WhopSDK::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, WhopSDK::MembershipListParams::Order) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        ID = T.let(:id, WhopSDK::MembershipListParams::Order::TaggedSymbol)
        CREATED_AT =
          T.let(:created_at, WhopSDK::MembershipListParams::Order::TaggedSymbol)
        STATUS =
          T.let(:status, WhopSDK::MembershipListParams::Order::TaggedSymbol)
        CANCELED_AT =
          T.let(
            :canceled_at,
            WhopSDK::MembershipListParams::Order::TaggedSymbol
          )
        DATE_JOINED =
          T.let(
            :date_joined,
            WhopSDK::MembershipListParams::Order::TaggedSymbol
          )
        TOTAL_SPEND =
          T.let(
            :total_spend,
            WhopSDK::MembershipListParams::Order::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[WhopSDK::MembershipListParams::Order::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
