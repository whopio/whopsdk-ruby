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

      # Filter to only products matching these types.
      sig { returns(T.nilable(T::Array[String])) }
      attr_reader :access_pass_types

      sig { params(access_pass_types: T::Array[String]).void }
      attr_writer :access_pass_types

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

      # The number of products to return from the end of the range.
      sig { returns(T.nilable(Integer)) }
      attr_reader :last

      sig { params(last: Integer).void }
      attr_writer :last

      # The field to sort results by. Defaults to created_at.
      sig { returns(T.nilable(String)) }
      attr_reader :order

      sig { params(order: String).void }
      attr_writer :order

      # Filter to only products matching these visibility states.
      sig { returns(T.nilable(T::Array[String])) }
      attr_reader :visibilities

      sig { params(visibilities: T::Array[String]).void }
      attr_writer :visibilities

      sig do
        params(
          company_id: String,
          access_pass_types: T::Array[String],
          after: String,
          before: String,
          direction: WhopSDK::ProductListParams::Direction::OrSymbol,
          first: Integer,
          last: Integer,
          order: String,
          visibilities: T::Array[String],
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # The unique identifier of the company to list products for.
        company_id:,
        # Filter to only products matching these types.
        access_pass_types: nil,
        # A cursor; returns products after this position.
        after: nil,
        # A cursor; returns products before this position.
        before: nil,
        # The sort direction for results. Defaults to descending.
        direction: nil,
        # The number of products to return (default and max 100).
        first: nil,
        # The number of products to return from the end of the range.
        last: nil,
        # The field to sort results by. Defaults to created_at.
        order: nil,
        # Filter to only products matching these visibility states.
        visibilities: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            company_id: String,
            access_pass_types: T::Array[String],
            after: String,
            before: String,
            direction: WhopSDK::ProductListParams::Direction::OrSymbol,
            first: Integer,
            last: Integer,
            order: String,
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
    end
  end
end
