# typed: strong

module WhopSDK
  module Models
    class PlanListParams < WhopSDK::Internal::Type::BaseModel
      extend WhopSDK::Internal::Type::RequestParameters::Converter
      include WhopSDK::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(WhopSDK::PlanListParams, WhopSDK::Internal::AnyHash)
        end

      # The ID of the company
      sig { returns(String) }
      attr_accessor :company_id

      # Returns the elements in the list that come after the specified cursor.
      sig { returns(T.nilable(String)) }
      attr_accessor :after

      # Returns the elements in the list that come before the specified cursor.
      sig { returns(T.nilable(String)) }
      attr_accessor :before

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

      # The ways a relation of Plans can be ordered
      sig { returns(T.nilable(WhopSDK::PlanListParams::Order::OrSymbol)) }
      attr_accessor :order

      # The plan type to filter the plans by
      sig { returns(T.nilable(T::Array[WhopSDK::PlanType::OrSymbol])) }
      attr_accessor :plan_types

      # The product IDs to filter the plans by
      sig { returns(T.nilable(T::Array[String])) }
      attr_accessor :product_ids

      # The release method to filter the plans by
      sig { returns(T.nilable(T::Array[WhopSDK::ReleaseMethod::OrSymbol])) }
      attr_accessor :release_methods

      # The visibility to filter the plans by
      sig { returns(T.nilable(T::Array[WhopSDK::VisibilityFilter::OrSymbol])) }
      attr_accessor :visibilities

      sig do
        params(
          company_id: String,
          after: T.nilable(String),
          before: T.nilable(String),
          created_after: T.nilable(Time),
          created_before: T.nilable(Time),
          direction: T.nilable(WhopSDK::Direction::OrSymbol),
          first: T.nilable(Integer),
          last: T.nilable(Integer),
          order: T.nilable(WhopSDK::PlanListParams::Order::OrSymbol),
          plan_types: T.nilable(T::Array[WhopSDK::PlanType::OrSymbol]),
          product_ids: T.nilable(T::Array[String]),
          release_methods:
            T.nilable(T::Array[WhopSDK::ReleaseMethod::OrSymbol]),
          visibilities:
            T.nilable(T::Array[WhopSDK::VisibilityFilter::OrSymbol]),
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # The ID of the company
        company_id:,
        # Returns the elements in the list that come after the specified cursor.
        after: nil,
        # Returns the elements in the list that come before the specified cursor.
        before: nil,
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
        # The ways a relation of Plans can be ordered
        order: nil,
        # The plan type to filter the plans by
        plan_types: nil,
        # The product IDs to filter the plans by
        product_ids: nil,
        # The release method to filter the plans by
        release_methods: nil,
        # The visibility to filter the plans by
        visibilities: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            company_id: String,
            after: T.nilable(String),
            before: T.nilable(String),
            created_after: T.nilable(Time),
            created_before: T.nilable(Time),
            direction: T.nilable(WhopSDK::Direction::OrSymbol),
            first: T.nilable(Integer),
            last: T.nilable(Integer),
            order: T.nilable(WhopSDK::PlanListParams::Order::OrSymbol),
            plan_types: T.nilable(T::Array[WhopSDK::PlanType::OrSymbol]),
            product_ids: T.nilable(T::Array[String]),
            release_methods:
              T.nilable(T::Array[WhopSDK::ReleaseMethod::OrSymbol]),
            visibilities:
              T.nilable(T::Array[WhopSDK::VisibilityFilter::OrSymbol]),
            request_options: WhopSDK::RequestOptions
          }
        )
      end
      def to_hash
      end

      # The ways a relation of Plans can be ordered
      module Order
        extend WhopSDK::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, WhopSDK::PlanListParams::Order) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        ID = T.let(:id, WhopSDK::PlanListParams::Order::TaggedSymbol)
        ACTIVE_MEMBERS_COUNT =
          T.let(
            :active_members_count,
            WhopSDK::PlanListParams::Order::TaggedSymbol
          )
        CREATED_AT =
          T.let(:created_at, WhopSDK::PlanListParams::Order::TaggedSymbol)
        INTERNAL_NOTES =
          T.let(:internal_notes, WhopSDK::PlanListParams::Order::TaggedSymbol)
        EXPIRES_AT =
          T.let(:expires_at, WhopSDK::PlanListParams::Order::TaggedSymbol)

        sig do
          override.returns(
            T::Array[WhopSDK::PlanListParams::Order::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
