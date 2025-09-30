# typed: strong

module Whopsdk
  module Models
    class ProductListParams < Whopsdk::Internal::Type::BaseModel
      extend Whopsdk::Internal::Type::RequestParameters::Converter
      include Whopsdk::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(Whopsdk::ProductListParams, Whopsdk::Internal::AnyHash)
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

      # The direction of the sort.
      sig do
        returns(T.nilable(Whopsdk::ProductListParams::Direction::OrSymbol))
      end
      attr_accessor :direction

      # Returns the first _n_ elements from the list.
      sig { returns(T.nilable(Integer)) }
      attr_accessor :first

      # Returns the last _n_ elements from the list.
      sig { returns(T.nilable(Integer)) }
      attr_accessor :last

      # The ways a relation of AccessPasses can be ordered
      sig { returns(T.nilable(Whopsdk::ProductListParams::Order::OrSymbol)) }
      attr_accessor :order

      # The type of products to filter by
      sig do
        returns(
          T.nilable(
            T::Array[
              T.nilable(Whopsdk::ProductListParams::ProductType::OrSymbol)
            ]
          )
        )
      end
      attr_accessor :product_types

      # The visibility of the products to filter by
      sig do
        returns(
          T.nilable(
            T::Array[
              T.nilable(Whopsdk::ProductListParams::Visibility::OrSymbol)
            ]
          )
        )
      end
      attr_accessor :visibilities

      sig do
        params(
          company_id: String,
          after: T.nilable(String),
          before: T.nilable(String),
          direction: T.nilable(Whopsdk::ProductListParams::Direction::OrSymbol),
          first: T.nilable(Integer),
          last: T.nilable(Integer),
          order: T.nilable(Whopsdk::ProductListParams::Order::OrSymbol),
          product_types:
            T.nilable(
              T::Array[
                T.nilable(Whopsdk::ProductListParams::ProductType::OrSymbol)
              ]
            ),
          visibilities:
            T.nilable(
              T::Array[
                T.nilable(Whopsdk::ProductListParams::Visibility::OrSymbol)
              ]
            ),
          request_options: Whopsdk::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # The ID of the company to filter products by
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
            direction:
              T.nilable(Whopsdk::ProductListParams::Direction::OrSymbol),
            first: T.nilable(Integer),
            last: T.nilable(Integer),
            order: T.nilable(Whopsdk::ProductListParams::Order::OrSymbol),
            product_types:
              T.nilable(
                T::Array[
                  T.nilable(Whopsdk::ProductListParams::ProductType::OrSymbol)
                ]
              ),
            visibilities:
              T.nilable(
                T::Array[
                  T.nilable(Whopsdk::ProductListParams::Visibility::OrSymbol)
                ]
              ),
            request_options: Whopsdk::RequestOptions
          }
        )
      end
      def to_hash
      end

      # The direction of the sort.
      module Direction
        extend Whopsdk::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, Whopsdk::ProductListParams::Direction) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        ASC = T.let(:asc, Whopsdk::ProductListParams::Direction::TaggedSymbol)
        DESC = T.let(:desc, Whopsdk::ProductListParams::Direction::TaggedSymbol)

        sig do
          override.returns(
            T::Array[Whopsdk::ProductListParams::Direction::TaggedSymbol]
          )
        end
        def self.values
        end
      end

      # The ways a relation of AccessPasses can be ordered
      module Order
        extend Whopsdk::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, Whopsdk::ProductListParams::Order) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        ACTIVE_MEMBERSHIPS_COUNT =
          T.let(
            :active_memberships_count,
            Whopsdk::ProductListParams::Order::TaggedSymbol
          )
        CREATED_AT =
          T.let(:created_at, Whopsdk::ProductListParams::Order::TaggedSymbol)
        USD_GMV =
          T.let(:usd_gmv, Whopsdk::ProductListParams::Order::TaggedSymbol)
        USD_GMV_30_DAYS =
          T.let(
            :usd_gmv_30_days,
            Whopsdk::ProductListParams::Order::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[Whopsdk::ProductListParams::Order::TaggedSymbol]
          )
        end
        def self.values
        end
      end

      # The different types an access pass can be.
      module ProductType
        extend Whopsdk::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Whopsdk::ProductListParams::ProductType)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        REGULAR =
          T.let(:regular, Whopsdk::ProductListParams::ProductType::TaggedSymbol)
        APP = T.let(:app, Whopsdk::ProductListParams::ProductType::TaggedSymbol)
        EXPERIENCE_UPSELL =
          T.let(
            :experience_upsell,
            Whopsdk::ProductListParams::ProductType::TaggedSymbol
          )
        API_ONLY =
          T.let(
            :api_only,
            Whopsdk::ProductListParams::ProductType::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[Whopsdk::ProductListParams::ProductType::TaggedSymbol]
          )
        end
        def self.values
        end
      end

      # The different levels of visibility for resources
      module Visibility
        extend Whopsdk::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, Whopsdk::ProductListParams::Visibility) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        VISIBLE =
          T.let(:visible, Whopsdk::ProductListParams::Visibility::TaggedSymbol)
        HIDDEN =
          T.let(:hidden, Whopsdk::ProductListParams::Visibility::TaggedSymbol)
        ARCHIVED =
          T.let(:archived, Whopsdk::ProductListParams::Visibility::TaggedSymbol)
        QUICK_LINK =
          T.let(
            :quick_link,
            Whopsdk::ProductListParams::Visibility::TaggedSymbol
          )
        ALL = T.let(:all, Whopsdk::ProductListParams::Visibility::TaggedSymbol)
        NOT_QUICK_LINK =
          T.let(
            :not_quick_link,
            Whopsdk::ProductListParams::Visibility::TaggedSymbol
          )
        NOT_ARCHIVED =
          T.let(
            :not_archived,
            Whopsdk::ProductListParams::Visibility::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[Whopsdk::ProductListParams::Visibility::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
