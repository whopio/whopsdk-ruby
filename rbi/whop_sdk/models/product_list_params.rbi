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

      # The unique identifier of the company to list products for.
      sig { returns(String) }
      attr_accessor :company_id

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

      # Only return products created after this timestamp.
      sig { returns(T.nilable(Time)) }
      attr_reader :created_after

      sig { params(created_after: Time).void }
      attr_writer :created_after

      # Only return products created before this timestamp.
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

      # The field to sort results by. Defaults to created_at.
      sig { returns(T.nilable(WhopSDK::ProductListParams::Order::OrSymbol)) }
      attr_reader :order

      sig { params(order: WhopSDK::ProductListParams::Order::OrSymbol).void }
      attr_writer :order

      # Filter to only products matching these type classifications.
      sig { returns(T.nilable(T::Array[WhopSDK::AccessPassType::OrSymbol])) }
      attr_reader :product_types

      sig do
        params(product_types: T::Array[WhopSDK::AccessPassType::OrSymbol]).void
      end
      attr_writer :product_types

      # Filter to only products matching these visibility states.
      sig { returns(T.nilable(T::Array[WhopSDK::VisibilityFilter::OrSymbol])) }
      attr_reader :visibilities

      sig do
        params(visibilities: T::Array[WhopSDK::VisibilityFilter::OrSymbol]).void
      end
      attr_writer :visibilities

      sig do
        params(
          company_id: String,
          after: String,
          before: String,
          created_after: Time,
          created_before: Time,
          direction: WhopSDK::Direction::OrSymbol,
          first: Integer,
          last: Integer,
          order: WhopSDK::ProductListParams::Order::OrSymbol,
          product_types: T::Array[WhopSDK::AccessPassType::OrSymbol],
          visibilities: T::Array[WhopSDK::VisibilityFilter::OrSymbol],
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # The unique identifier of the company to list products for.
        company_id:,
        # Returns the elements in the list that come after the specified cursor.
        after: nil,
        # Returns the elements in the list that come before the specified cursor.
        before: nil,
        # Only return products created after this timestamp.
        created_after: nil,
        # Only return products created before this timestamp.
        created_before: nil,
        # The sort direction for results. Defaults to descending.
        direction: nil,
        # Returns the first _n_ elements from the list.
        first: nil,
        # Returns the last _n_ elements from the list.
        last: nil,
        # The field to sort results by. Defaults to created_at.
        order: nil,
        # Filter to only products matching these type classifications.
        product_types: nil,
        # Filter to only products matching these visibility states.
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
            created_after: Time,
            created_before: Time,
            direction: WhopSDK::Direction::OrSymbol,
            first: Integer,
            last: Integer,
            order: WhopSDK::ProductListParams::Order::OrSymbol,
            product_types: T::Array[WhopSDK::AccessPassType::OrSymbol],
            visibilities: T::Array[WhopSDK::VisibilityFilter::OrSymbol],
            request_options: WhopSDK::RequestOptions
          }
        )
      end
      def to_hash
      end

      # The field to sort results by. Defaults to created_at.
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
