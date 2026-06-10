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

      # A cursor; returns plans after this position.
      sig { returns(T.nilable(String)) }
      attr_reader :after

      sig { params(after: String).void }
      attr_writer :after

      # A cursor; returns plans before this position.
      sig { returns(T.nilable(String)) }
      attr_reader :before

      sig { params(before: String).void }
      attr_writer :before

      # Only return plans created after this timestamp.
      sig { returns(T.nilable(String)) }
      attr_reader :created_after

      sig { params(created_after: String).void }
      attr_writer :created_after

      # Only return plans created before this timestamp.
      sig { returns(T.nilable(String)) }
      attr_reader :created_before

      sig { params(created_before: String).void }
      attr_writer :created_before

      # The sort direction for results. Defaults to descending.
      sig { returns(T.nilable(WhopSDK::PlanListParams::Direction::OrSymbol)) }
      attr_reader :direction

      sig do
        params(direction: WhopSDK::PlanListParams::Direction::OrSymbol).void
      end
      attr_writer :direction

      # The number of plans to return (default and max 100).
      sig { returns(T.nilable(Integer)) }
      attr_reader :first

      sig { params(first: Integer).void }
      attr_writer :first

      # The number of plans to return from the end of the range.
      sig { returns(T.nilable(Integer)) }
      attr_reader :last

      sig { params(last: Integer).void }
      attr_writer :last

      # The field to sort results by. Defaults to created_at.
      sig { returns(T.nilable(WhopSDK::PlanListParams::Order::OrSymbol)) }
      attr_reader :order

      sig { params(order: WhopSDK::PlanListParams::Order::OrSymbol).void }
      attr_writer :order

      # Filter to only plans matching these billing types.
      sig { returns(T.nilable(T::Array[String])) }
      attr_reader :plan_types

      sig { params(plan_types: T::Array[String]).void }
      attr_writer :plan_types

      # Filter to only plans belonging to these product identifiers.
      sig { returns(T.nilable(T::Array[String])) }
      attr_reader :product_ids

      sig { params(product_ids: T::Array[String]).void }
      attr_writer :product_ids

      # Filter to only plans matching these release methods.
      sig { returns(T.nilable(T::Array[String])) }
      attr_reader :release_methods

      sig { params(release_methods: T::Array[String]).void }
      attr_writer :release_methods

      # Filter to only plans matching these visibility states.
      sig { returns(T.nilable(T::Array[String])) }
      attr_reader :visibilities

      sig { params(visibilities: T::Array[String]).void }
      attr_writer :visibilities

      sig do
        params(
          company_id: String,
          after: String,
          before: String,
          created_after: String,
          created_before: String,
          direction: WhopSDK::PlanListParams::Direction::OrSymbol,
          first: Integer,
          last: Integer,
          order: WhopSDK::PlanListParams::Order::OrSymbol,
          plan_types: T::Array[String],
          product_ids: T::Array[String],
          release_methods: T::Array[String],
          visibilities: T::Array[String],
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # The unique identifier of the company to list plans for.
        company_id:,
        # A cursor; returns plans after this position.
        after: nil,
        # A cursor; returns plans before this position.
        before: nil,
        # Only return plans created after this timestamp.
        created_after: nil,
        # Only return plans created before this timestamp.
        created_before: nil,
        # The sort direction for results. Defaults to descending.
        direction: nil,
        # The number of plans to return (default and max 100).
        first: nil,
        # The number of plans to return from the end of the range.
        last: nil,
        # The field to sort results by. Defaults to created_at.
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
            after: String,
            before: String,
            created_after: String,
            created_before: String,
            direction: WhopSDK::PlanListParams::Direction::OrSymbol,
            first: Integer,
            last: Integer,
            order: WhopSDK::PlanListParams::Order::OrSymbol,
            plan_types: T::Array[String],
            product_ids: T::Array[String],
            release_methods: T::Array[String],
            visibilities: T::Array[String],
            request_options: WhopSDK::RequestOptions
          }
        )
      end
      def to_hash
      end

      # The sort direction for results. Defaults to descending.
      module Direction
        extend WhopSDK::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, WhopSDK::PlanListParams::Direction) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        ASC = T.let(:asc, WhopSDK::PlanListParams::Direction::TaggedSymbol)
        DESC = T.let(:desc, WhopSDK::PlanListParams::Direction::TaggedSymbol)

        sig do
          override.returns(
            T::Array[WhopSDK::PlanListParams::Direction::TaggedSymbol]
          )
        end
        def self.values
        end
      end

      # The field to sort results by. Defaults to created_at.
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
