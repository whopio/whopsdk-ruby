# typed: strong

module WhopSDK
  module Models
    class CardTransactionList < WhopSDK::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(WhopSDK::CardTransactionList, WhopSDK::Internal::AnyHash)
        end

      sig { returns(T::Array[WhopSDK::CardTransaction]) }
      attr_accessor :data

      sig { returns(WhopSDK::CardTransactionList::Object::TaggedSymbol) }
      attr_accessor :object

      sig { returns(WhopSDK::CardTransactionList::Pagination) }
      attr_reader :pagination

      sig do
        params(
          pagination: WhopSDK::CardTransactionList::Pagination::OrHash
        ).void
      end
      attr_writer :pagination

      sig do
        params(
          data: T::Array[WhopSDK::CardTransaction::OrHash],
          object: WhopSDK::CardTransactionList::Object::OrSymbol,
          pagination: WhopSDK::CardTransactionList::Pagination::OrHash
        ).returns(T.attached_class)
      end
      def self.new(data:, object:, pagination:)
      end

      sig do
        override.returns(
          {
            data: T::Array[WhopSDK::CardTransaction],
            object: WhopSDK::CardTransactionList::Object::TaggedSymbol,
            pagination: WhopSDK::CardTransactionList::Pagination
          }
        )
      end
      def to_hash
      end

      module Object
        extend WhopSDK::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, WhopSDK::CardTransactionList::Object) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        LIST = T.let(:list, WhopSDK::CardTransactionList::Object::TaggedSymbol)

        sig do
          override.returns(
            T::Array[WhopSDK::CardTransactionList::Object::TaggedSymbol]
          )
        end
        def self.values
        end
      end

      class Pagination < WhopSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              WhopSDK::CardTransactionList::Pagination,
              WhopSDK::Internal::AnyHash
            )
          end

        # Current page number
        sig { returns(Float) }
        attr_accessor :current_page

        # Next page number
        sig { returns(T.nilable(Float)) }
        attr_accessor :next_page

        # Previous page number
        sig { returns(T.nilable(Float)) }
        attr_accessor :prev_page

        # Total number of records
        sig { returns(Float) }
        attr_accessor :total_count

        # Total number of pages
        sig { returns(Float) }
        attr_accessor :total_pages

        sig do
          params(
            current_page: Float,
            next_page: T.nilable(Float),
            prev_page: T.nilable(Float),
            total_count: Float,
            total_pages: Float
          ).returns(T.attached_class)
        end
        def self.new(
          # Current page number
          current_page:,
          # Next page number
          next_page:,
          # Previous page number
          prev_page:,
          # Total number of records
          total_count:,
          # Total number of pages
          total_pages:
        )
        end

        sig do
          override.returns(
            {
              current_page: Float,
              next_page: T.nilable(Float),
              prev_page: T.nilable(Float),
              total_count: Float,
              total_pages: Float
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
