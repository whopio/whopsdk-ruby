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

      # Returns the first _n_ elements from the list.
      sig { returns(T.nilable(Integer)) }
      attr_accessor :first

      # Returns the last _n_ elements from the list.
      sig { returns(T.nilable(Integer)) }
      attr_accessor :last

      # The different types an access pass can be.
      sig do
        returns(T.nilable(Whopsdk::ProductListParams::ProductType::OrSymbol))
      end
      attr_accessor :product_type

      sig do
        params(
          company_id: String,
          after: T.nilable(String),
          before: T.nilable(String),
          first: T.nilable(Integer),
          last: T.nilable(Integer),
          product_type:
            T.nilable(Whopsdk::ProductListParams::ProductType::OrSymbol),
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
        # Returns the first _n_ elements from the list.
        first: nil,
        # Returns the last _n_ elements from the list.
        last: nil,
        # The different types an access pass can be.
        product_type: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            company_id: String,
            after: T.nilable(String),
            before: T.nilable(String),
            first: T.nilable(Integer),
            last: T.nilable(Integer),
            product_type:
              T.nilable(Whopsdk::ProductListParams::ProductType::OrSymbol),
            request_options: Whopsdk::RequestOptions
          }
        )
      end
      def to_hash
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
    end
  end
end
