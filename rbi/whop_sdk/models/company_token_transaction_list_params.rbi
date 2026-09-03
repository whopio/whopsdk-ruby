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

      # The unique identifier of the company to list token transactions for.
      sig { returns(String) }
      attr_accessor :account_id

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

      # Filter transactions by type.
      sig { returns(T.nilable(WhopSDK::CompanyTokenTransactionType::OrSymbol)) }
      attr_reader :transaction_type

      sig do
        params(
          transaction_type: WhopSDK::CompanyTokenTransactionType::OrSymbol
        ).void
      end
      attr_writer :transaction_type

      # Filter transactions to only those involving this specific user.
      sig { returns(T.nilable(String)) }
      attr_reader :user_id

      sig { params(user_id: String).void }
      attr_writer :user_id

      sig do
        params(
          account_id: String,
          after: String,
          before: String,
          first: Integer,
          last: Integer,
          transaction_type: WhopSDK::CompanyTokenTransactionType::OrSymbol,
          user_id: String,
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # The unique identifier of the company to list token transactions for.
        account_id:,
        # Returns the elements in the list that come after the specified cursor.
        after: nil,
        # Returns the elements in the list that come before the specified cursor.
        before: nil,
        # Returns the first _n_ elements from the list.
        first: nil,
        # Returns the last _n_ elements from the list.
        last: nil,
        # Filter transactions by type.
        transaction_type: nil,
        # Filter transactions to only those involving this specific user.
        user_id: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            account_id: String,
            after: String,
            before: String,
            first: Integer,
            last: Integer,
            transaction_type: WhopSDK::CompanyTokenTransactionType::OrSymbol,
            user_id: String,
            request_options: WhopSDK::RequestOptions
          }
        )
      end
      def to_hash
      end
    end
  end
end
