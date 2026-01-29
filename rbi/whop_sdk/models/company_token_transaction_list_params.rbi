# typed: strong

module WhopSDK
  module Models
    class CompanyTokenTransactionListParams < WhopSDK::Internal::Type::BaseModel
      extend WhopSDK::Internal::Type::RequestParameters::Converter
      include WhopSDK::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            WhopSDK::CompanyTokenTransactionListParams,
            WhopSDK::Internal::AnyHash
          )
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

      # Returns the first _n_ elements from the list.
      sig { returns(T.nilable(Integer)) }
      attr_accessor :first

      # Returns the last _n_ elements from the list.
      sig { returns(T.nilable(Integer)) }
      attr_accessor :last

      # The type of token transaction
      sig do
        returns(
          T.nilable(
            WhopSDK::CompanyTokenTransactionListParams::TransactionType::OrSymbol
          )
        )
      end
      attr_accessor :transaction_type

      # Filter by user ID
      sig { returns(T.nilable(String)) }
      attr_accessor :user_id

      sig do
        params(
          company_id: String,
          after: T.nilable(String),
          before: T.nilable(String),
          first: T.nilable(Integer),
          last: T.nilable(Integer),
          transaction_type:
            T.nilable(
              WhopSDK::CompanyTokenTransactionListParams::TransactionType::OrSymbol
            ),
          user_id: T.nilable(String),
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # The ID of the company
        company_id:,
        # Returns the elements in the list that come after the specified cursor.
        after: nil,
        # Returns the elements in the list that come before the specified cursor.
        before: nil,
        # Returns the first _n_ elements from the list.
        first: nil,
        # Returns the last _n_ elements from the list.
        last: nil,
        # The type of token transaction
        transaction_type: nil,
        # Filter by user ID
        user_id: nil,
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
            transaction_type:
              T.nilable(
                WhopSDK::CompanyTokenTransactionListParams::TransactionType::OrSymbol
              ),
            user_id: T.nilable(String),
            request_options: WhopSDK::RequestOptions
          }
        )
      end
      def to_hash
      end

      # The type of token transaction
      module TransactionType
        extend WhopSDK::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(
              Symbol,
              WhopSDK::CompanyTokenTransactionListParams::TransactionType
            )
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        ADD =
          T.let(
            :add,
            WhopSDK::CompanyTokenTransactionListParams::TransactionType::TaggedSymbol
          )
        SUBTRACT =
          T.let(
            :subtract,
            WhopSDK::CompanyTokenTransactionListParams::TransactionType::TaggedSymbol
          )
        TRANSFER =
          T.let(
            :transfer,
            WhopSDK::CompanyTokenTransactionListParams::TransactionType::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              WhopSDK::CompanyTokenTransactionListParams::TransactionType::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
