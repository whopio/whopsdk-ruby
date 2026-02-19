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
      attr_accessor :after

      # Returns the elements in the list that come before the specified cursor.
      sig { returns(T.nilable(String)) }
      attr_accessor :before

      # Filter to only memberships matching these cancellation reasons.
      sig { returns(T.nilable(T::Array[WhopSDK::CancelOptions::OrSymbol])) }
      attr_accessor :cancel_options

      # The unique identifier of the company to list memberships for. Required when
      # using an API key.
      sig { returns(T.nilable(String)) }
      attr_accessor :company_id

      # Only return memberships created after this timestamp.
      sig { returns(T.nilable(Time)) }
      attr_accessor :created_after

      # Only return memberships created before this timestamp.
      sig { returns(T.nilable(Time)) }
      attr_accessor :created_before

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
      sig { returns(T.nilable(WhopSDK::MembershipListParams::Order::OrSymbol)) }
      attr_accessor :order

      # Filter to only memberships belonging to these plan identifiers.
      sig { returns(T.nilable(T::Array[String])) }
      attr_accessor :plan_ids

      # Filter to only memberships belonging to these product identifiers.
      sig { returns(T.nilable(T::Array[String])) }
      attr_accessor :product_ids

      # Filter to only memberships that used these promo code identifiers.
      sig { returns(T.nilable(T::Array[String])) }
      attr_accessor :promo_code_ids

      # Filter to only memberships matching these statuses.
      sig { returns(T.nilable(T::Array[WhopSDK::MembershipStatus::OrSymbol])) }
      attr_accessor :statuses

      # Filter to only memberships belonging to these user identifiers.
      sig { returns(T.nilable(T::Array[String])) }
      attr_accessor :user_ids

      sig do
        params(
          after: T.nilable(String),
          before: T.nilable(String),
          cancel_options: T.nilable(T::Array[WhopSDK::CancelOptions::OrSymbol]),
          company_id: T.nilable(String),
          created_after: T.nilable(Time),
          created_before: T.nilable(Time),
          direction: T.nilable(WhopSDK::Direction::OrSymbol),
          first: T.nilable(Integer),
          last: T.nilable(Integer),
          order: T.nilable(WhopSDK::MembershipListParams::Order::OrSymbol),
          plan_ids: T.nilable(T::Array[String]),
          product_ids: T.nilable(T::Array[String]),
          promo_code_ids: T.nilable(T::Array[String]),
          statuses: T.nilable(T::Array[WhopSDK::MembershipStatus::OrSymbol]),
          user_ids: T.nilable(T::Array[String]),
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
        # The unique identifier of the company to list memberships for. Required when
        # using an API key.
        company_id: nil,
        # Only return memberships created after this timestamp.
        created_after: nil,
        # Only return memberships created before this timestamp.
        created_before: nil,
        # The direction of the sort.
        direction: nil,
        # Returns the first _n_ elements from the list.
        first: nil,
        # Returns the last _n_ elements from the list.
        last: nil,
        # Which columns can be used to sort.
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
            after: T.nilable(String),
            before: T.nilable(String),
            cancel_options:
              T.nilable(T::Array[WhopSDK::CancelOptions::OrSymbol]),
            company_id: T.nilable(String),
            created_after: T.nilable(Time),
            created_before: T.nilable(Time),
            direction: T.nilable(WhopSDK::Direction::OrSymbol),
            first: T.nilable(Integer),
            last: T.nilable(Integer),
            order: T.nilable(WhopSDK::MembershipListParams::Order::OrSymbol),
            plan_ids: T.nilable(T::Array[String]),
            product_ids: T.nilable(T::Array[String]),
            promo_code_ids: T.nilable(T::Array[String]),
            statuses: T.nilable(T::Array[WhopSDK::MembershipStatus::OrSymbol]),
            user_ids: T.nilable(T::Array[String]),
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
