# typed: strong

module WhopSDK
  module Models
    class MemberListParams < WhopSDK::Internal::Type::BaseModel
      extend WhopSDK::Internal::Type::RequestParameters::Converter
      include WhopSDK::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(WhopSDK::MemberListParams, WhopSDK::Internal::AnyHash)
        end

      # Filter members by their current access level to the product.
      sig { returns(T.nilable(WhopSDK::AccessLevel::OrSymbol)) }
      attr_reader :access_level

      sig { params(access_level: WhopSDK::AccessLevel::OrSymbol).void }
      attr_writer :access_level

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

      # The unique identifier of the company to list members for.
      sig { returns(T.nilable(String)) }
      attr_reader :company_id

      sig { params(company_id: String).void }
      attr_writer :company_id

      # Only return members created after this timestamp.
      sig { returns(T.nilable(Time)) }
      attr_reader :created_after

      sig { params(created_after: Time).void }
      attr_writer :created_after

      # Only return members created before this timestamp.
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

      # Filter members by their most recent activity type.
      sig do
        returns(T.nilable(T::Array[WhopSDK::MemberMostRecentActions::OrSymbol]))
      end
      attr_reader :most_recent_actions

      sig do
        params(
          most_recent_actions:
            T::Array[WhopSDK::MemberMostRecentActions::OrSymbol]
        ).void
      end
      attr_writer :most_recent_actions

      # The column to sort members by, such as creation date or revenue.
      sig { returns(T.nilable(WhopSDK::MemberListParams::Order::OrSymbol)) }
      attr_reader :order

      sig { params(order: WhopSDK::MemberListParams::Order::OrSymbol).void }
      attr_writer :order

      # Filter members to only those subscribed to these specific plans.
      sig { returns(T.nilable(T::Array[String])) }
      attr_reader :plan_ids

      sig { params(plan_ids: T::Array[String]).void }
      attr_writer :plan_ids

      # Filter members to only those belonging to these specific products.
      sig { returns(T.nilable(T::Array[String])) }
      attr_reader :product_ids

      sig { params(product_ids: T::Array[String]).void }
      attr_writer :product_ids

      # Filter members to only those who used these specific promo codes.
      sig { returns(T.nilable(T::Array[String])) }
      attr_reader :promo_code_ids

      sig { params(promo_code_ids: T::Array[String]).void }
      attr_writer :promo_code_ids

      # Search members by name, username, or email. Email filtering requires the
      # member:email:read permission.
      sig { returns(T.nilable(String)) }
      attr_reader :query

      sig { params(query: String).void }
      attr_writer :query

      # Filter members by their current subscription status.
      sig { returns(T.nilable(T::Array[WhopSDK::MemberStatuses::OrSymbol])) }
      attr_reader :statuses

      sig { params(statuses: T::Array[WhopSDK::MemberStatuses::OrSymbol]).void }
      attr_writer :statuses

      # Filter members to only those matching these specific user identifiers.
      sig { returns(T.nilable(T::Array[String])) }
      attr_reader :user_ids

      sig { params(user_ids: T::Array[String]).void }
      attr_writer :user_ids

      sig do
        params(
          access_level: WhopSDK::AccessLevel::OrSymbol,
          after: String,
          before: String,
          company_id: String,
          created_after: Time,
          created_before: Time,
          direction: WhopSDK::Direction::OrSymbol,
          first: Integer,
          last: Integer,
          most_recent_actions:
            T::Array[WhopSDK::MemberMostRecentActions::OrSymbol],
          order: WhopSDK::MemberListParams::Order::OrSymbol,
          plan_ids: T::Array[String],
          product_ids: T::Array[String],
          promo_code_ids: T::Array[String],
          query: String,
          statuses: T::Array[WhopSDK::MemberStatuses::OrSymbol],
          user_ids: T::Array[String],
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # Filter members by their current access level to the product.
        access_level: nil,
        # Returns the elements in the list that come after the specified cursor.
        after: nil,
        # Returns the elements in the list that come before the specified cursor.
        before: nil,
        # The unique identifier of the company to list members for.
        company_id: nil,
        # Only return members created after this timestamp.
        created_after: nil,
        # Only return members created before this timestamp.
        created_before: nil,
        # The sort direction for results. Defaults to descending.
        direction: nil,
        # Returns the first _n_ elements from the list.
        first: nil,
        # Returns the last _n_ elements from the list.
        last: nil,
        # Filter members by their most recent activity type.
        most_recent_actions: nil,
        # The column to sort members by, such as creation date or revenue.
        order: nil,
        # Filter members to only those subscribed to these specific plans.
        plan_ids: nil,
        # Filter members to only those belonging to these specific products.
        product_ids: nil,
        # Filter members to only those who used these specific promo codes.
        promo_code_ids: nil,
        # Search members by name, username, or email. Email filtering requires the
        # member:email:read permission.
        query: nil,
        # Filter members by their current subscription status.
        statuses: nil,
        # Filter members to only those matching these specific user identifiers.
        user_ids: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            access_level: WhopSDK::AccessLevel::OrSymbol,
            after: String,
            before: String,
            company_id: String,
            created_after: Time,
            created_before: Time,
            direction: WhopSDK::Direction::OrSymbol,
            first: Integer,
            last: Integer,
            most_recent_actions:
              T::Array[WhopSDK::MemberMostRecentActions::OrSymbol],
            order: WhopSDK::MemberListParams::Order::OrSymbol,
            plan_ids: T::Array[String],
            product_ids: T::Array[String],
            promo_code_ids: T::Array[String],
            query: String,
            statuses: T::Array[WhopSDK::MemberStatuses::OrSymbol],
            user_ids: T::Array[String],
            request_options: WhopSDK::RequestOptions
          }
        )
      end
      def to_hash
      end

      # The column to sort members by, such as creation date or revenue.
      module Order
        extend WhopSDK::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, WhopSDK::MemberListParams::Order) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        ID = T.let(:id, WhopSDK::MemberListParams::Order::TaggedSymbol)
        USD_TOTAL_SPENT =
          T.let(
            :usd_total_spent,
            WhopSDK::MemberListParams::Order::TaggedSymbol
          )
        CREATED_AT =
          T.let(:created_at, WhopSDK::MemberListParams::Order::TaggedSymbol)
        JOINED_AT =
          T.let(:joined_at, WhopSDK::MemberListParams::Order::TaggedSymbol)
        MOST_RECENT_ACTION =
          T.let(
            :most_recent_action,
            WhopSDK::MemberListParams::Order::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[WhopSDK::MemberListParams::Order::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
