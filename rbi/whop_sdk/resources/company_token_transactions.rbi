# typed: strong

module WhopSDK
  module Resources
    # Company token transactions
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
          body:
            T.any(
              WhopSDK::CompanyTokenTransactionCreateParams::Body::CreateCompanyTokenTransactionInputTransactionTypeTransfer::OrHash,
              WhopSDK::CompanyTokenTransactionCreateParams::Body::CreateCompanyTokenTransactionInputTransactionTypeAdd::OrHash,
              WhopSDK::CompanyTokenTransactionCreateParams::Body::CreateCompanyTokenTransactionInputTransactionTypeSubtract::OrHash
            ),
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(WhopSDK::CompanyTokenTransaction)
      end
      def create(
        # Parameters for CreateCompanyTokenTransaction
        body:,
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
            T.nilable(WhopSDK::CompanyTokenTransactionType::OrSymbol),
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
