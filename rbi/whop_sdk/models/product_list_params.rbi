# typed: strong

module WhopSDK
  module Models
    class ProductListParams < WhopSDK::Internal::Type::BaseModel
      extend WhopSDK::Internal::Type::RequestParameters::Converter
      include WhopSDK::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(WhopSDK::ProductListParams, WhopSDK::Internal::AnyHash)
        end

      # The ID of the company to filter products by
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

      # The ways a relation of AccessPasses can be ordered
      sig { returns(T.nilable(WhopSDK::ProductListParams::Order::OrSymbol)) }
      attr_accessor :order

      # The type of products to filter by
      sig { returns(T.nilable(T::Array[WhopSDK::AccessPassType::OrSymbol])) }
      attr_accessor :product_types

      # The visibility of the products to filter by
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
          order: T.nilable(WhopSDK::ProductListParams::Order::OrSymbol),
          product_types: T.nilable(T::Array[WhopSDK::AccessPassType::OrSymbol]),
          visibilities:
            T.nilable(T::Array[WhopSDK::VisibilityFilter::OrSymbol]),
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # The ID of the company to filter products by
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
        # The ways a relation of AccessPasses can be ordered
        order: nil,
        # The type of products to filter by
        product_types: nil,
        # The visibility of the products to filter by
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
            order: T.nilable(WhopSDK::ProductListParams::Order::OrSymbol),
            product_types:
              T.nilable(T::Array[WhopSDK::AccessPassType::OrSymbol]),
            visibilities:
              T.nilable(T::Array[WhopSDK::VisibilityFilter::OrSymbol]),
            request_options: WhopSDK::RequestOptions
          }
        )
      end
      def to_hash
      end

      # The ways a relation of AccessPasses can be ordered
      module Order
        extend WhopSDK::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, WhopSDK::ProductListParams::Order) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        ACTIVE_MEMBERSHIPS_COUNT =
          T.let(
            :active_memberships_count,
            WhopSDK::ProductListParams::Order::TaggedSymbol
          )
        CREATED_AT =
          T.let(:created_at, WhopSDK::ProductListParams::Order::TaggedSymbol)
        USD_GMV =
          T.let(:usd_gmv, WhopSDK::ProductListParams::Order::TaggedSymbol)
        USD_GMV_30_DAYS =
          T.let(
            :usd_gmv_30_days,
            WhopSDK::ProductListParams::Order::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[WhopSDK::ProductListParams::Order::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
