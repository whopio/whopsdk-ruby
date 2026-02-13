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

      # The unique identifier of the company to list plans for.
      sig { returns(String) }
      attr_accessor :company_id

      # Returns the elements in the list that come after the specified cursor.
      sig { returns(T.nilable(String)) }
      attr_accessor :after

      # Returns the elements in the list that come before the specified cursor.
      sig { returns(T.nilable(String)) }
      attr_accessor :before

      # Only return plans created after this timestamp.
      sig { returns(T.nilable(Time)) }
      attr_accessor :created_after

      # Only return plans created before this timestamp.
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

      # Filter to only plans matching these billing types.
      sig { returns(T.nilable(T::Array[WhopSDK::PlanType::OrSymbol])) }
      attr_accessor :plan_types

      # Filter to only plans belonging to these product identifiers.
      sig { returns(T.nilable(T::Array[String])) }
      attr_accessor :product_ids

      # Filter to only plans matching these release methods.
      sig { returns(T.nilable(T::Array[WhopSDK::ReleaseMethod::OrSymbol])) }
      attr_accessor :release_methods

      # Filter to only plans matching these visibility states.
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
        # The unique identifier of the company to list plans for.
        company_id:,
        # Returns the elements in the list that come after the specified cursor.
        after: nil,
        # Returns the elements in the list that come before the specified cursor.
        before: nil,
        # Only return plans created after this timestamp.
        created_after: nil,
        # Only return plans created before this timestamp.
        created_before: nil,
        # The direction of the sort.
        direction: nil,
        # Returns the first _n_ elements from the list.
        first: nil,
        # Returns the last _n_ elements from the list.
        last: nil,
        # The ways a relation of Plans can be ordered
        order: nil,
        # Filter to only plans matching these billing types.
        plan_types: nil,
        # Filter to only plans belonging to these product identifiers.
        product_ids: nil,
        # Filter to only plans matching these release methods.
        release_methods: nil,
        # Filter to only plans matching these visibility states.
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
