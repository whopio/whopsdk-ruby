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

      # The ID of the company to list memberships for
      sig { returns(String) }
      attr_accessor :company_id

      # The access pass IDs to filter the memberships by
      sig { returns(T.nilable(T::Array[String])) }
      attr_accessor :access_pass_ids

      # Returns the elements in the list that come after the specified cursor.
      sig { returns(T.nilable(String)) }
      attr_accessor :after

      # Returns the elements in the list that come before the specified cursor.
      sig { returns(T.nilable(String)) }
      attr_accessor :before

      # The cancel options to filter the memberships by
      sig do
        returns(
          T.nilable(
            T::Array[WhopSDK::MembershipListParams::CancelOption::OrSymbol]
          )
        )
      end
      attr_accessor :cancel_options

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

      # Which columns can be used to sort.
      sig { returns(T.nilable(WhopSDK::MembershipListParams::Order::OrSymbol)) }
      attr_accessor :order

      # The plan IDs to filter the memberships by
      sig { returns(T.nilable(T::Array[String])) }
      attr_accessor :plan_ids

      # The promo code IDs to filter the memberships by
      sig { returns(T.nilable(T::Array[String])) }
      attr_accessor :promo_code_ids

      # The membership status to filter the memberships by
      sig { returns(T.nilable(T::Array[WhopSDK::MembershipStatus::OrSymbol])) }
      attr_accessor :statuses

      # Only return memberships from these whop user ids
      sig { returns(T.nilable(T::Array[String])) }
      attr_accessor :user_ids

      sig do
        params(
          company_id: String,
          access_pass_ids: T.nilable(T::Array[String]),
          after: T.nilable(String),
          before: T.nilable(String),
          cancel_options:
            T.nilable(
              T::Array[WhopSDK::MembershipListParams::CancelOption::OrSymbol]
            ),
          created_after: T.nilable(Time),
          created_before: T.nilable(Time),
          direction: T.nilable(WhopSDK::Direction::OrSymbol),
          first: T.nilable(Integer),
          last: T.nilable(Integer),
          order: T.nilable(WhopSDK::MembershipListParams::Order::OrSymbol),
          plan_ids: T.nilable(T::Array[String]),
          promo_code_ids: T.nilable(T::Array[String]),
          statuses: T.nilable(T::Array[WhopSDK::MembershipStatus::OrSymbol]),
          user_ids: T.nilable(T::Array[String]),
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # The ID of the company to list memberships for
        company_id:,
        # The access pass IDs to filter the memberships by
        access_pass_ids: nil,
        # Returns the elements in the list that come after the specified cursor.
        after: nil,
        # Returns the elements in the list that come before the specified cursor.
        before: nil,
        # The cancel options to filter the memberships by
        cancel_options: nil,
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
        # Which columns can be used to sort.
        order: nil,
        # The plan IDs to filter the memberships by
        plan_ids: nil,
        # The promo code IDs to filter the memberships by
        promo_code_ids: nil,
        # The membership status to filter the memberships by
        statuses: nil,
        # Only return memberships from these whop user ids
        user_ids: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            company_id: String,
            access_pass_ids: T.nilable(T::Array[String]),
            after: T.nilable(String),
            before: T.nilable(String),
            cancel_options:
              T.nilable(
                T::Array[WhopSDK::MembershipListParams::CancelOption::OrSymbol]
              ),
            created_after: T.nilable(Time),
            created_before: T.nilable(Time),
            direction: T.nilable(WhopSDK::Direction::OrSymbol),
            first: T.nilable(Integer),
            last: T.nilable(Integer),
            order: T.nilable(WhopSDK::MembershipListParams::Order::OrSymbol),
            plan_ids: T.nilable(T::Array[String]),
            promo_code_ids: T.nilable(T::Array[String]),
            statuses: T.nilable(T::Array[WhopSDK::MembershipStatus::OrSymbol]),
            user_ids: T.nilable(T::Array[String]),
            request_options: WhopSDK::RequestOptions
          }
        )
      end
      def to_hash
      end

      # The different reasons a user can choose for why they are canceling their
      # membership.
      module CancelOption
        extend WhopSDK::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, WhopSDK::MembershipListParams::CancelOption)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        TOO_EXPENSIVE =
          T.let(
            :too_expensive,
            WhopSDK::MembershipListParams::CancelOption::TaggedSymbol
          )
        SWITCHING =
          T.let(
            :switching,
            WhopSDK::MembershipListParams::CancelOption::TaggedSymbol
          )
        MISSING_FEATURES =
          T.let(
            :missing_features,
            WhopSDK::MembershipListParams::CancelOption::TaggedSymbol
          )
        TECHNICAL_ISSUES =
          T.let(
            :technical_issues,
            WhopSDK::MembershipListParams::CancelOption::TaggedSymbol
          )
        BAD_EXPERIENCE =
          T.let(
            :bad_experience,
            WhopSDK::MembershipListParams::CancelOption::TaggedSymbol
          )
        OTHER =
          T.let(
            :other,
            WhopSDK::MembershipListParams::CancelOption::TaggedSymbol
          )
        TESTING =
          T.let(
            :testing,
            WhopSDK::MembershipListParams::CancelOption::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[WhopSDK::MembershipListParams::CancelOption::TaggedSymbol]
          )
        end
        def self.values
        end
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
