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

      # The ID of the company to list members for
      sig { returns(T.nilable(String)) }
      attr_accessor :company_id

      # The minimum creation date to filter by
      sig { returns(T.nilable(Time)) }
      attr_accessor :created_after

      # The maximum creation date to filter by
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

      # The most recent actions to filter the members by
      sig do
        returns(T.nilable(T::Array[WhopSDK::MemberMostRecentActions::OrSymbol]))
      end
      attr_accessor :most_recent_actions

      # Which columns can be used to sort.
      sig { returns(T.nilable(WhopSDK::MemberListParams::Order::OrSymbol)) }
      attr_accessor :order

      # The plan IDs to filter the members by
      sig { returns(T.nilable(T::Array[String])) }
      attr_accessor :plan_ids

      # The product IDs to filter the members by
      sig { returns(T.nilable(T::Array[String])) }
      attr_accessor :product_ids

      # The promo code IDs to filter the members by
      sig { returns(T.nilable(T::Array[String])) }
      attr_accessor :promo_code_ids

      # The name, username, or email to filter the members by. The email filter will
      # only apply if the current actor has the `member:email:read` permission.
      sig { returns(T.nilable(String)) }
      attr_accessor :query

      # The statuses to filter the members by
      sig { returns(T.nilable(T::Array[WhopSDK::MemberStatuses::OrSymbol])) }
      attr_accessor :statuses

      # The user IDs to filter the members by
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
        # The ID of the company to list members for
        company_id: nil,
        # The minimum creation date to filter by
        created_after: nil,
        # The maximum creation date to filter by
        created_before: nil,
        # The direction of the sort.
        direction: nil,
        # Returns the first _n_ elements from the list.
        first: nil,
        # Returns the last _n_ elements from the list.
        last: nil,
        # The most recent actions to filter the members by
        most_recent_actions: nil,
        # Which columns can be used to sort.
        order: nil,
        # The plan IDs to filter the members by
        plan_ids: nil,
        # The product IDs to filter the members by
        product_ids: nil,
        # The promo code IDs to filter the members by
        promo_code_ids: nil,
        # The name, username, or email to filter the members by. The email filter will
        # only apply if the current actor has the `member:email:read` permission.
        query: nil,
        # The statuses to filter the members by
        statuses: nil,
        # The user IDs to filter the members by
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
