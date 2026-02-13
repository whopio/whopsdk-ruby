# typed: strong

module WhopSDK
  module Resources
    class CompanyTokenTransactions
      # Create a token transaction to add, subtract, or transfer tokens for a member
      # within a company.
      #
      # Required permissions:
      #
      # - `company_token_transaction:create`
      # - `member:basic:read`
      # - `company:basic:read`
      sig do
        params(
          amount: Float,
          company_id: String,
          destination_user_id: String,
          user_id: String,
          description: T.nilable(String),
          idempotency_key: T.nilable(String),
          transaction_type: Symbol,
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(WhopSDK::CompanyTokenTransaction)
      end
      def create(
        # The positive number of tokens to transact. For example, 100.0 for 100 tokens.
        amount:,
        # The unique identifier of the company to create the transaction in, starting with
        # 'biz\_'.
        company_id:,
        # The unique identifier of the user receiving the tokens. Required when the
        # transaction type is 'transfer'.
        destination_user_id:,
        # The unique identifier of the user whose token balance will be affected, starting
        # with 'user\_'.
        user_id:,
        # A human-readable description of why the transaction was created.
        description: nil,
        # A unique key to prevent duplicate transactions. Use a UUID or similar unique
        # string.
        idempotency_key: nil,
        transaction_type: :subtract,
        request_options: {}
      )
      end

      # Retrieves the details of an existing company token transaction.
      #
      # Required permissions:
      #
      # - `company_token_transaction:read`
      # - `member:basic:read`
      # - `company:basic:read`
      sig do
        params(
          id: String,
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(WhopSDK::CompanyTokenTransaction)
      end
      def retrieve(
        # The unique identifier of the token transaction to retrieve.
        id,
        request_options: {}
      )
      end

      # Returns a paginated list of token transactions for a user or company, depending
      # on the authenticated actor, with optional filtering by user and transaction
      # type.
      #
      # Required permissions:
      #
      # - `company_token_transaction:read`
      # - `member:basic:read`
      # - `company:basic:read`
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
        ).returns(
          WhopSDK::Internal::CursorPage[
            WhopSDK::Models::CompanyTokenTransactionListResponse
          ]
        )
      end
      def list(
        # The unique identifier of the company to list token transactions for.
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
        # Filter transactions to only those involving this specific user.
        user_id: nil,
        request_options: {}
      )
      end

      # @api private
      sig { params(client: WhopSDK::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end
