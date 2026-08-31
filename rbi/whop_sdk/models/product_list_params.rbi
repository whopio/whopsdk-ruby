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

      # Filter to only products matching these types.
      sig { returns(T.nilable(T::Array[String])) }
      attr_reader :access_pass_types

      sig { params(access_pass_types: T::Array[String]).void }
      attr_writer :access_pass_types

      # The unique identifier of the account to list products for. Omit to search the
      # public marketplace.
      sig { returns(T.nilable(String)) }
      attr_reader :account_id

      sig { params(account_id: String).void }
      attr_writer :account_id

      # A cursor; returns products after this position.
      sig { returns(T.nilable(String)) }
      attr_reader :after

      sig { params(after: String).void }
      attr_writer :after

      # A cursor; returns products before this position.
      sig { returns(T.nilable(String)) }
      attr_reader :before

      sig { params(before: String).void }
      attr_writer :before

      # Only return products created after this ISO 8601 timestamp.
      sig { returns(T.nilable(String)) }
      attr_reader :created_after

      sig { params(created_after: String).void }
      attr_writer :created_after

      # Only return products created before this ISO 8601 timestamp.
      sig { returns(T.nilable(String)) }
      attr_reader :created_before

      sig { params(created_before: String).void }
      attr_writer :created_before

      # The sort direction for results. Defaults to descending.
      sig do
        returns(T.nilable(WhopSDK::ProductListParams::Direction::OrSymbol))
      end
      attr_reader :direction

      sig do
        params(direction: WhopSDK::ProductListParams::Direction::OrSymbol).void
      end
      attr_writer :direction

      # The number of products to return (default and max 100).
      sig { returns(T.nilable(Integer)) }
      attr_reader :first

      sig { params(first: Integer).void }
      attr_writer :first

      # Filter to only products carrying all of these labels. Labels are matched
      # lowercased.
      sig { returns(T.nilable(T::Array[String])) }
      attr_reader :labels

      sig { params(labels: T::Array[String]).void }
      attr_writer :labels

      # The number of products to return from the end of the range.
      sig { returns(T.nilable(Integer)) }
      attr_reader :last

      sig { params(last: Integer).void }
      attr_writer :last

      # Only return marketplace products assigned to this category route, such as
      # `trading`.
      sig { returns(T.nilable(String)) }
      attr_reader :marketplace_category_route

      sig { params(marketplace_category_route: String).void }
      attr_writer :marketplace_category_route

      # The field to sort results by. Account lists default to `created_at`. Marketplace
      # lists default to `discoverable_at` and accept `created_at` or `discoverable_at`.
      # Cannot be combined with `query`.
      sig { returns(T.nilable(String)) }
      attr_reader :order

      sig { params(order: String).void }
      attr_writer :order

      # Filter to products with a buyable plan of these billing models, such as
      # `one_time` or `renewal`.
      sig do
        returns(
          T.nilable(T::Array[WhopSDK::ProductListParams::PlanType::OrSymbol])
        )
      end
      attr_reader :plan_types

      sig do
        params(
          plan_types: T::Array[WhopSDK::ProductListParams::PlanType::OrSymbol]
        ).void
      end
      attr_writer :plan_types

      # Only return products whose advertised buyable plan has a displayed price of at
      # most this amount. Recurring plans use renewal price.
      sig { returns(T.nilable(Float)) }
      attr_reader :price_maximum

      sig { params(price_maximum: Float).void }
      attr_writer :price_maximum

      # Only return products whose advertised buyable plan has a displayed price of at
      # least this amount. Recurring plans use renewal price.
      sig { returns(T.nilable(Float)) }
      attr_reader :price_minimum

      sig { params(price_minimum: Float).void }
      attr_writer :price_minimum

      # Ranked search against product title and headline. Omit to browse by recency.
      sig { returns(T.nilable(String)) }
      attr_reader :query

      sig { params(query: String).void }
      attr_writer :query

      # Filter to only products matching these visibility states. Ignored on the public
      # marketplace list, which only returns visible products.
      sig { returns(T.nilable(T::Array[String])) }
      attr_reader :visibilities

      sig { params(visibilities: T::Array[String]).void }
      attr_writer :visibilities

      sig { returns(T.nilable(String)) }
      attr_reader :api_version_date

      sig { params(api_version_date: String).void }
      attr_writer :api_version_date

      sig do
        params(
          access_pass_types: T::Array[String],
          account_id: String,
          after: String,
          before: String,
          created_after: String,
          created_before: String,
          direction: WhopSDK::ProductListParams::Direction::OrSymbol,
          first: Integer,
          labels: T::Array[String],
          last: Integer,
          marketplace_category_route: String,
          order: String,
          plan_types: T::Array[WhopSDK::ProductListParams::PlanType::OrSymbol],
          price_maximum: Float,
          price_minimum: Float,
          query: String,
          visibilities: T::Array[String],
          api_version_date: String,
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # Filter to only products matching these types.
        access_pass_types: nil,
        # The unique identifier of the account to list products for. Omit to search the
        # public marketplace.
        account_id: nil,
        # A cursor; returns products after this position.
        after: nil,
        # A cursor; returns products before this position.
        before: nil,
        # Only return products created after this ISO 8601 timestamp.
        created_after: nil,
        # Only return products created before this ISO 8601 timestamp.
        created_before: nil,
        # The sort direction for results. Defaults to descending.
        direction: nil,
        # The number of products to return (default and max 100).
        first: nil,
        # Filter to only products carrying all of these labels. Labels are matched
        # lowercased.
        labels: nil,
        # The number of products to return from the end of the range.
        last: nil,
        # Only return marketplace products assigned to this category route, such as
        # `trading`.
        marketplace_category_route: nil,
        # The field to sort results by. Account lists default to `created_at`. Marketplace
        # lists default to `discoverable_at` and accept `created_at` or `discoverable_at`.
        # Cannot be combined with `query`.
        order: nil,
        # Filter to products with a buyable plan of these billing models, such as
        # `one_time` or `renewal`.
        plan_types: nil,
        # Only return products whose advertised buyable plan has a displayed price of at
        # most this amount. Recurring plans use renewal price.
        price_maximum: nil,
        # Only return products whose advertised buyable plan has a displayed price of at
        # least this amount. Recurring plans use renewal price.
        price_minimum: nil,
        # Ranked search against product title and headline. Omit to browse by recency.
        query: nil,
        # Filter to only products matching these visibility states. Ignored on the public
        # marketplace list, which only returns visible products.
        visibilities: nil,
        api_version_date: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            access_pass_types: T::Array[String],
            account_id: String,
            after: String,
            before: String,
            created_after: String,
            created_before: String,
            direction: WhopSDK::ProductListParams::Direction::OrSymbol,
            first: Integer,
            labels: T::Array[String],
            last: Integer,
            marketplace_category_route: String,
            order: String,
            plan_types:
              T::Array[WhopSDK::ProductListParams::PlanType::OrSymbol],
            price_maximum: Float,
            price_minimum: Float,
            query: String,
            visibilities: T::Array[String],
            api_version_date: String,
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
          T.type_alias { T.all(Symbol, WhopSDK::ProductListParams::Direction) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        ASC = T.let(:asc, WhopSDK::ProductListParams::Direction::TaggedSymbol)
        DESC = T.let(:desc, WhopSDK::ProductListParams::Direction::TaggedSymbol)

        sig do
          override.returns(
            T::Array[WhopSDK::ProductListParams::Direction::TaggedSymbol]
          )
        end
        def self.values
        end
      end

      module PlanType
        extend WhopSDK::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, WhopSDK::ProductListParams::PlanType) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        RENEWAL =
          T.let(:renewal, WhopSDK::ProductListParams::PlanType::TaggedSymbol)
        ONE_TIME =
          T.let(:one_time, WhopSDK::ProductListParams::PlanType::TaggedSymbol)

        sig do
          override.returns(
            T::Array[WhopSDK::ProductListParams::PlanType::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
