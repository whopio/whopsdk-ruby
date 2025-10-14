# typed: strong

module Whopsdk
  module Models
    class PlanListParams < Whopsdk::Internal::Type::BaseModel
      extend Whopsdk::Internal::Type::RequestParameters::Converter
      include Whopsdk::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(Whopsdk::PlanListParams, Whopsdk::Internal::AnyHash)
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

      # The direction of the sort.
      sig { returns(T.nilable(Whopsdk::Direction::OrSymbol)) }
      attr_accessor :direction

      # Returns the first _n_ elements from the list.
      sig { returns(T.nilable(Integer)) }
      attr_accessor :first

      # Returns the last _n_ elements from the list.
      sig { returns(T.nilable(Integer)) }
      attr_accessor :last

      # The ways a relation of Plans can be ordered
      sig { returns(T.nilable(Whopsdk::PlanListParams::Order::OrSymbol)) }
      attr_accessor :order

      # The plan type to filter the plans by
      sig { returns(T.nilable(T::Array[Whopsdk::PlanType::OrSymbol])) }
      attr_accessor :plan_types

      # The product IDs to filter the plans by
      sig { returns(T.nilable(T::Array[String])) }
      attr_accessor :product_ids

      # The release method to filter the plans by
      sig { returns(T.nilable(T::Array[Whopsdk::ReleaseMethod::OrSymbol])) }
      attr_accessor :release_methods

      # The visibility to filter the plans by
      sig { returns(T.nilable(T::Array[Whopsdk::VisibilityFilter::OrSymbol])) }
      attr_accessor :visibilities

      sig do
        params(
          company_id: String,
          after: T.nilable(String),
          before: T.nilable(String),
          direction: T.nilable(Whopsdk::Direction::OrSymbol),
          first: T.nilable(Integer),
          last: T.nilable(Integer),
          order: T.nilable(Whopsdk::PlanListParams::Order::OrSymbol),
          plan_types: T.nilable(T::Array[Whopsdk::PlanType::OrSymbol]),
          product_ids: T.nilable(T::Array[String]),
          release_methods:
            T.nilable(T::Array[Whopsdk::ReleaseMethod::OrSymbol]),
          visibilities:
            T.nilable(T::Array[Whopsdk::VisibilityFilter::OrSymbol]),
          request_options: Whopsdk::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # The ID of the company
        company_id:,
        # Returns the elements in the list that come after the specified cursor.
        after: nil,
        # Returns the elements in the list that come before the specified cursor.
        before: nil,
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
            direction: T.nilable(Whopsdk::Direction::OrSymbol),
            first: T.nilable(Integer),
            last: T.nilable(Integer),
            order: T.nilable(Whopsdk::PlanListParams::Order::OrSymbol),
            plan_types: T.nilable(T::Array[Whopsdk::PlanType::OrSymbol]),
            product_ids: T.nilable(T::Array[String]),
            release_methods:
              T.nilable(T::Array[Whopsdk::ReleaseMethod::OrSymbol]),
            visibilities:
              T.nilable(T::Array[Whopsdk::VisibilityFilter::OrSymbol]),
            request_options: Whopsdk::RequestOptions
          }
        )
      end
      def to_hash
      end

      # The ways a relation of Plans can be ordered
      module Order
        extend Whopsdk::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, Whopsdk::PlanListParams::Order) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        ID = T.let(:id, Whopsdk::PlanListParams::Order::TaggedSymbol)
        ACTIVE_MEMBERS_COUNT =
          T.let(
            :active_members_count,
            Whopsdk::PlanListParams::Order::TaggedSymbol
          )
        CREATED_AT =
          T.let(:created_at, Whopsdk::PlanListParams::Order::TaggedSymbol)
        INTERNAL_NOTES =
          T.let(:internal_notes, Whopsdk::PlanListParams::Order::TaggedSymbol)
        EXPIRES_AT =
          T.let(:expires_at, Whopsdk::PlanListParams::Order::TaggedSymbol)

        sig do
          override.returns(
            T::Array[Whopsdk::PlanListParams::Order::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
