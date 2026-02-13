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

      # The access level a given user (or company) has to a product or company.
      sig { returns(T.nilable(WhopSDK::AccessLevel::OrSymbol)) }
      attr_accessor :access_level

      # Returns the elements in the list that come after the specified cursor.
      sig { returns(T.nilable(String)) }
      attr_accessor :after

      # Returns the elements in the list that come before the specified cursor.
      sig { returns(T.nilable(String)) }
      attr_accessor :before

      # The unique identifier of the company to list members for.
      sig { returns(T.nilable(String)) }
      attr_accessor :company_id

      # Only return members created after this timestamp.
      sig { returns(T.nilable(Time)) }
      attr_accessor :created_after

      # Only return members created before this timestamp.
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

      # Filter members by their most recent activity type.
      sig do
        returns(T.nilable(T::Array[WhopSDK::MemberMostRecentActions::OrSymbol]))
      end
      attr_accessor :most_recent_actions

      # Which columns can be used to sort.
      sig { returns(T.nilable(WhopSDK::MemberListParams::Order::OrSymbol)) }
      attr_accessor :order

      # Filter members to only those subscribed to these specific plans.
      sig { returns(T.nilable(T::Array[String])) }
      attr_accessor :plan_ids

      # Filter members to only those belonging to these specific products.
      sig { returns(T.nilable(T::Array[String])) }
      attr_accessor :product_ids

      # Filter members to only those who used these specific promo codes.
      sig { returns(T.nilable(T::Array[String])) }
      attr_accessor :promo_code_ids

      # Search members by name, username, or email. Email filtering requires the
      # member:email:read permission.
      sig { returns(T.nilable(String)) }
      attr_accessor :query

      # Filter members by their current subscription status.
      sig { returns(T.nilable(T::Array[WhopSDK::MemberStatuses::OrSymbol])) }
      attr_accessor :statuses

      # Filter members to only those matching these specific user identifiers.
      sig { returns(T.nilable(T::Array[String])) }
      attr_accessor :user_ids

      sig do
        params(
          access_level: T.nilable(WhopSDK::AccessLevel::OrSymbol),
          after: T.nilable(String),
          before: T.nilable(String),
          company_id: T.nilable(String),
          created_after: T.nilable(Time),
          created_before: T.nilable(Time),
          direction: T.nilable(WhopSDK::Direction::OrSymbol),
          first: T.nilable(Integer),
          last: T.nilable(Integer),
          most_recent_actions:
            T.nilable(T::Array[WhopSDK::MemberMostRecentActions::OrSymbol]),
          order: T.nilable(WhopSDK::MemberListParams::Order::OrSymbol),
          plan_ids: T.nilable(T::Array[String]),
          product_ids: T.nilable(T::Array[String]),
          promo_code_ids: T.nilable(T::Array[String]),
          query: T.nilable(String),
          statuses: T.nilable(T::Array[WhopSDK::MemberStatuses::OrSymbol]),
          user_ids: T.nilable(T::Array[String]),
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # The access level a given user (or company) has to a product or company.
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
        # The direction of the sort.
        direction: nil,
        # Returns the first _n_ elements from the list.
        first: nil,
        # Returns the last _n_ elements from the list.
        last: nil,
        # Filter members by their most recent activity type.
        most_recent_actions: nil,
        # Which columns can be used to sort.
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
            access_level: T.nilable(WhopSDK::AccessLevel::OrSymbol),
            after: T.nilable(String),
            before: T.nilable(String),
            company_id: T.nilable(String),
            created_after: T.nilable(Time),
            created_before: T.nilable(Time),
            direction: T.nilable(WhopSDK::Direction::OrSymbol),
            first: T.nilable(Integer),
            last: T.nilable(Integer),
            most_recent_actions:
              T.nilable(T::Array[WhopSDK::MemberMostRecentActions::OrSymbol]),
            order: T.nilable(WhopSDK::MemberListParams::Order::OrSymbol),
            plan_ids: T.nilable(T::Array[String]),
            product_ids: T.nilable(T::Array[String]),
            promo_code_ids: T.nilable(T::Array[String]),
            query: T.nilable(String),
            statuses: T.nilable(T::Array[WhopSDK::MemberStatuses::OrSymbol]),
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
